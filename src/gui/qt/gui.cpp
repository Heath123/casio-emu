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

// TODO: Put this in the headers instead
extern "C" {
    #include "../../interpreter.h"
    #include "../../int.h"
    #include "../skin/default/skin.h"
}

// Most of this code was written by ChatGPT

// TODO: This doesn't belong in the GUI code
extern u16 KIUDATA[6];

static void setKeydown(int basic_keycode, bool down) {
  // printf("Key %d is now %s\n", basic_keycode, down ? "down" : "up");
  i32 row = basic_keycode % 10;
  i32 col = basic_keycode / 10 - 1;
  i32 word = row >> 1;
  i32 bit = col + 8 * (row & 1);
  if (down) {
    KIUDATA[word] |= 1 << bit;
  } else {
    KIUDATA[word] &= ~(1 << bit);
  }
}

const int xOffset = -52;
const int yOffset = -380;

class ButtonContainer : public QWidget {
public:
    ButtonContainer(QWidget* parent = nullptr) : QWidget(parent) {
        setFixedSize(396, 560);
        // Create buttons from the array
        for (const skinButton& button : buttons) {
            QPushButton* btn = new QPushButton(button.name, this);
            btn->setGeometry(button.x + xOffset, button.y + yOffset, button.w, button.h);
            btn->setProperty("id", button.id); // Set the button's ID as a property

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
        canvas->fill(Qt::red);

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

    // Create a central widget to hold the canvas and buttons
    QWidget* centralWidget = new QWidget(&mainWindow);
    mainWindow.setCentralWidget(centralWidget);

    // Create a vertical layout to arrange the canvas and buttons
    QVBoxLayout* layout = new QVBoxLayout(centralWidget);

    // Create the canvas view
    canvasView = new CanvasView();
    canvasView->setFixedSize(396, 224);
    layout->addWidget(canvasView, 0, Qt::AlignTop);

    ButtonContainer container;
    layout->addWidget(&container, 0, Qt::AlignTop);

    // // Connect the pressed() signal to a slot or lambda function
    // QObject::connect(button, &QPushButton::pressed, [&]() {
    //     setKeydown(78, true);
    // });

    // // Connect the released() signal to a slot or lambda function
    // QObject::connect(button, &QPushButton::released, [&]() {
    //     setKeydown(78, false);
    // });

    // Add a stretch at the end to take any available extra space
    layout->addStretch();

    // Create a menu bar and menus
    QMenuBar* menuBar = mainWindow.menuBar();
    QMenu* fileMenu = menuBar->addMenu("File");

    // Add actions to the menus if needed
    QAction* openAction = fileMenu->addAction("Open .g3a file");

    mainWindow.show();

    startInterpreter("/home/heath/Downloads/Upsilon.g3a");

    return app.exec();
}

extern "C" void updateDisplay(u16* vram) {
    canvasView->updateCanvas(vram);
}

extern "C" void runMainLoop(void (*callback)(void)) {
    canvasView->runMainLoop(callback);
}
