#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QtProperty>
#include <QVariant>

namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void OnValueChanged_Print(QtProperty* prop, const QVariant& val);
private:
    Ui::MainWindow *ui;

};

#endif // MAINWINDOW_H
