#include <QApplication>
#include <QDebug>
#include <QFileDialog>
#include <QGraphicsPixmapItem>
#include <QGraphicsScene>
#include <QGraphicsView>
#include <QKeyEvent>
#include <QMainWindow>
#include <QMenu>
#include <QMenuBar>
#include <QPushButton>
#include <QTimer>
#include <QVBoxLayout>

// TODO: Put this in the headers instead
extern "C" {
#include "../../hardware/keyboard/keyboard.h"
#include "../../int.h"
#include "../../interpreter.h"
#include "../skin/default/skin.h"
}

// Most of this code was written by ChatGPT

const int xOffset = -52;
const int yOffset = -380;

// Inspired by CEmu's approach to key events
class KeyboardEventFilter : public QObject {
  Q_OBJECT

public:
  bool eventFilter(QObject *obj, QEvent *event) override;
};

bool KeyboardEventFilter::eventFilter(QObject *obj, QEvent *event) {
  if (event->type() == QEvent::KeyPress ||
      event->type() == QEvent::KeyRelease) {
    QKeyEvent *keyEvent = static_cast<QKeyEvent *>(event);
    bool isPress = (event->type() == QEvent::KeyPress);

    switch (keyEvent->key()) {
    case Qt::Key_Left:
      setKeydown(38, isPress);
      return true;
    case Qt::Key_Right:
      setKeydown(27, isPress);
      return true;
    case Qt::Key_Up:
      setKeydown(28, isPress);
      return true;
    case Qt::Key_Down:
      setKeydown(37, isPress);
      return true;

    case Qt::Key_Shift:
      setKeydown(78, isPress);
      return true;
    case Qt::Key_CapsLock:
      setKeydown(77, isPress);
      return true;
    case Qt::Key_Tab:
      setKeydown(48, isPress);
      return true;
    case Qt::Key_Escape:
      setKeydown(47, isPress);
      return true;

    case Qt::Key_F1:
      setKeydown(79, isPress);
      return true;
    case Qt::Key_F2:
      setKeydown(69, isPress);
      return true;
    case Qt::Key_F3:
      setKeydown(59, isPress);
      return true;
    case Qt::Key_F4:
      setKeydown(49, isPress);
      return true;
    case Qt::Key_F5:
      setKeydown(39, isPress);
      return true;
    case Qt::Key_F6:
      setKeydown(29, isPress);
      return true;
    
    case Qt::Key_0:
      setKeydown(71, isPress);
      return true;
    case Qt::Key_1:
      setKeydown(72, isPress);
      return true;
    case Qt::Key_2:
      setKeydown(62, isPress);
      return true;
    case Qt::Key_3:
      setKeydown(52, isPress);
      return true;
    case Qt::Key_4:
      setKeydown(73, isPress);
      return true;
    case Qt::Key_5:
      setKeydown(63, isPress);
      return true;
    case Qt::Key_6:
      setKeydown(53, isPress);
      return true;
    case Qt::Key_7:
      setKeydown(74, isPress);
      return true;
    case Qt::Key_8:
      setKeydown(64, isPress);
      return true;
    case Qt::Key_9:
      setKeydown(54, isPress);
      return true;
    case Qt::Key_Delete:
      setKeydown(44, isPress);
      return true;
    case Qt::Key_Asterisk:
      setKeydown(43, isPress);
      return true;
    case Qt::Key_Slash:
      setKeydown(33, isPress);
      return true;
    case Qt::Key_Minus:
      setKeydown(32, isPress);
      return true;
    case Qt::Key_Plus:
      setKeydown(42, isPress);
      return true;
    case Qt::Key_Period:
      setKeydown(61, isPress);
      return true;
    case Qt::Key_Enter:
      setKeydown(31, isPress);
      return true;
    
    
    }
  }

  // Let the event continue to other event filters or the original target
  return QObject::eventFilter(obj, event);
}

KeyboardEventFilter *filter = Q_NULLPTR;

class ButtonContainer : public QWidget {
public:
  ButtonContainer(QWidget *parent = nullptr) : QWidget(parent) {
    setFixedSize(396, 560);
    // Create buttons from the array
    for (const skinButton &button : buttons) {
      QPushButton *btn = new QPushButton(button.name, this);
      btn->setGeometry(button.x + xOffset, button.y + yOffset, button.w,
                       button.h);
      btn->setProperty("id", button.id); // Set the button's ID as a property
      btn->installEventFilter(filter);

      // Connect button signals to slots
      connect(btn, &QPushButton::pressed, this,
              &ButtonContainer::handleButtonPressed);
      connect(btn, &QPushButton::released, this,
              &ButtonContainer::handleButtonReleased);

      buttonsMap.insert(button.id,
                        btn); // Store the button in a map for easy access
    }
  }

private:
  QMap<int, QPushButton *> buttonsMap;

  void handleButtonPressed() {
    QPushButton *btn = qobject_cast<QPushButton *>(sender());
    if (btn) {
      int id = btn->property("id").toInt();
      setKeydown(id, true);
    }
  }

  void handleButtonReleased() {
    QPushButton *btn = qobject_cast<QPushButton *>(sender());
    if (btn) {
      int id = btn->property("id").toInt();
      setKeydown(id, false);
    }
  }

  // void setKeydown(int id, bool isKeyDown) {
  //     // Your implementation of setKeydown function
  //     // You can use the `id` parameter to identify which button was pressed
  //     or released
  //     // and perform the necessary actions.
  //     // ...
  // }
};

class CanvasView : public QGraphicsView {
public:
  CanvasView(QWidget *parent = nullptr) : QGraphicsView(parent) {
    setRenderHint(QPainter::Antialiasing);
    scene = new QGraphicsScene(this);
    setScene(scene);

    canvas = new QPixmap(396, 224);
    canvas->fill(Qt::black);

    canvasItem = scene->addPixmap(*canvas);

    // Timer to update the canvas at 60fps
    // timer = new QTimer(this);
    // connect(timer, &QTimer::timeout, this, &CanvasView::updateCanvas);
    // timer->start(16); // 16 milliseconds => ~60fps
    setStyleSheet("QGraphicsView { border-style: none; }");
  }

  void updateCanvas(uint16_t *rgb565Data) {
    const int width = 396;
    const int height = 224;

    // Update the canvas here with the RGB565 data
    QImage image(reinterpret_cast<uchar *>(rgb565Data), width, height,
                 width * sizeof(uint16_t), QImage::Format_RGB16);
    QPainter painter(canvas);
    painter.drawImage(0, 0, image);

    canvasItem->setPixmap(*canvas);
    viewport()->update();
  }

  void runMainLoop(void (*callback)(void)) {
    timer = new QTimer(this);
    connect(timer, &QTimer::timeout, this, callback);
    timer->start(16); // 16 milliseconds => ~60fps
  }

private:
  QGraphicsScene *scene;
  QPixmap *canvas;
  QGraphicsPixmapItem *canvasItem;
  QTimer *timer;
};

// TODO: Does this need to be global?
CanvasView *canvasView;

int main(int argc, char *argv[]) {
  QApplication app(argc, argv);
  QMainWindow mainWindow;

  // This needs to be insatlled to everything
  filter = new KeyboardEventFilter;

  mainWindow.installEventFilter(filter);

  // Create a central widget to hold the canvas and buttons
  QWidget *centralWidget = new QWidget(&mainWindow);
  centralWidget->installEventFilter(filter);
  mainWindow.setCentralWidget(centralWidget);

  // Create a vertical layout to arrange the canvas and buttons
  QVBoxLayout *layout = new QVBoxLayout(centralWidget);
  layout->installEventFilter(filter);

  // Create the canvas view
  canvasView = new CanvasView();
  canvasView->setFixedSize(396, 224);
  canvasView->installEventFilter(filter);
  layout->addWidget(canvasView, 0, Qt::AlignTop);

  ButtonContainer container;
  // Make it capture keyboard events
  container.setFocusPolicy(Qt::StrongFocus);
  container.installEventFilter(filter);
  layout->addWidget(&container, 0, Qt::AlignTop);

  // Add a stretch at the end to take any available extra space
  layout->addStretch();

  // Create a menu bar and menus
  // QMenuBar* menuBar = mainWindow.menuBar();
  // QMenu* fileMenu = menuBar->addMenu("File");

  // Add actions to the menus if needed
  // QAction* openAction = fileMenu->addAction("Open .g3a file");

  mainWindow.show();

  char filePath[1024];
  if (argc < 2) {
    QString qFilePath = QFileDialog::getOpenFileName(
        &mainWindow, "Open g3a add-in", "", "Add-in files (*.g3a)");
    strcpy(filePath, qFilePath.toUtf8());
  } else {
    strcpy(filePath, argv[1]);
  }

  startInterpreter(filePath);

  return app.exec();
}

extern "C" void updateDisplay(u16 *vram) { canvasView->updateCanvas(vram); }

extern "C" void runMainLoop(void (*callback)(void)) {
  canvasView->runMainLoop(callback);
}

#include "gui.moc"
