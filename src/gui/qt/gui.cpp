#include <QApplication>
#include <QMainWindow>
#include <QGraphicsView>
#include <QGraphicsScene>
#include <QGraphicsPixmapItem>
#include <QTimer>
#include <QMenuBar>
#include <QMenu>
#include <QPushButton>
#include <QVBoxLayout>
#include <QDebug>
#include <QFileDialog>
#include <QKeyEvent>
#include <qnamespace.h>

// TODO: Put this in the headers instead
extern "C" {
    #include "../../int.h"
    #include "../../interpreter.h"
    #include "../../hardware/keyboard/keyboard.h"
    #include "../skin/default/skin.h"
}

// Most of this code was written by ChatGPT

const int xOffset = -52;
const int yOffset = -380;

// Inspired by CEmu's approach to key events
class KeyboardEventFilter : public QObject {
    Q_OBJECT

public:
    bool eventFilter(QObject* obj, QEvent* event) override;
};

bool KeyboardEventFilter::eventFilter(QObject* obj, QEvent* event) {
    if (event->type() == QEvent::KeyPress || event->type() == QEvent::KeyRelease) {
        QKeyEvent* keyEvent = static_cast<QKeyEvent*>(event);
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
            case Qt::Key_X:
            case Qt::Key_Space:
                setKeydown(78, isPress);
                return true;
            case Qt::Key_Shift:
                setKeydown(77, isPress);
        }
    }

    // Let the event continue to other event filters or the original target
    return QObject::eventFilter(obj, event);
}

KeyboardEventFilter* filter = Q_NULLPTR;

class ButtonContainer : public QWidget {
public:
    ButtonContainer(QWidget* parent = nullptr) : QWidget(parent) {
        setFixedSize(396, 560);
        // Create buttons from the array
        for (const skinButton& button : buttons) {
            QPushButton* btn = new QPushButton(button.name, this);
            btn->setGeometry(button.x + xOffset, button.y + yOffset, button.w, button.h);
            btn->setProperty("id", button.id); // Set the button's ID as a property
            btn->installEventFilter(filter);

            // Connect button signals to slots
            connect(btn, &QPushButton::pressed, this, &ButtonContainer::handleButtonPressed);
            connect(btn, &QPushButton::released, this, &ButtonContainer::handleButtonReleased);

            buttonsMap.insert(button.id, btn); // Store the button in a map for easy access
        }
    }

private:
    QMap<int, QPushButton*> buttonsMap;

    void handleButtonPressed() {
        QPushButton* btn = qobject_cast<QPushButton*>(sender());
        if (btn) {
            int id = btn->property("id").toInt();
            setKeydown(id, true);
        }
    }

    void handleButtonReleased() {
        QPushButton* btn = qobject_cast<QPushButton*>(sender());
        if (btn) {
            int id = btn->property("id").toInt();
            setKeydown(id, false);
        }
    }

    // void setKeydown(int id, bool isKeyDown) {
    //     // Your implementation of setKeydown function
    //     // You can use the `id` parameter to identify which button was pressed or released
    //     // and perform the necessary actions.
    //     // ...
    // }
};

class CanvasView : public QGraphicsView {
public:
    CanvasView(QWidget* parent = nullptr) : QGraphicsView(parent) {
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

    void updateCanvas(uint16_t* rgb565Data) {
        const int width = 396;
        const int height = 224;

        // Update the canvas here with the RGB565 data
        QImage image(reinterpret_cast<uchar*>(rgb565Data), width, height, width * sizeof(uint16_t), QImage::Format_RGB16);
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
    QGraphicsScene* scene;
    QPixmap* canvas;
    QGraphicsPixmapItem* canvasItem;
    QTimer* timer;
};

// TODO: Does this need to be global?
CanvasView* canvasView;

int main(int argc, char* argv[]) {
    QApplication app(argc, argv);
    QMainWindow mainWindow;

    // This needs to be insatlled to everything
    filter = new KeyboardEventFilter;

    mainWindow.installEventFilter(filter);

    // Create a central widget to hold the canvas and buttons
    QWidget* centralWidget = new QWidget(&mainWindow);
    centralWidget->installEventFilter(filter);
    mainWindow.setCentralWidget(centralWidget);

    // Create a vertical layout to arrange the canvas and buttons
    QVBoxLayout* layout = new QVBoxLayout(centralWidget);
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

    const char* filePath;
    if (argc < 2) {
        QString qFilePath = QFileDialog::getOpenFileName(&mainWindow, "Open g3a add-in", "", "Add-in files (*.g3a)");
        filePath = qFilePath.toUtf8();
    } else {
        filePath = argv[1];
    }

    startInterpreter(filePath);

    return app.exec();
}

extern "C" void updateDisplay(u16* vram) {
    canvasView->updateCanvas(vram);
}

extern "C" void runMainLoop(void (*callback)(void)) {
    canvasView->runMainLoop(callback);
}

#include "gui.moc"
