#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <qtpropertymanager.h>
#include <qtvariantproperty.h>
#include <qttreepropertybrowser.h>
#include <QWidget>
#include <QLayout>
#include <QDebug>

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    // Boilerplate for adding a widget programatically...
    //-------------------------------------------------------------
    QGridLayout* layout = new QGridLayout;

    QWidget* central = new QWidget();

    this->setCentralWidget(central);
    central->setLayout(layout);
    //-------------------------------------------------------------

    QtVariantPropertyManager *variantManager = new QtVariantPropertyManager();

    QtProperty *topItem = variantManager->addProperty(QtVariantPropertyManager::groupTypeId(),
                QString::number(0) + QLatin1String(" Group Property"));

    QtVariantProperty *item = variantManager->addProperty(QVariant::Bool, QString::number(1) + QLatin1String(" Bool Property"));
    item->setValue(true);
    topItem->addSubProperty(item);


    QtVariantEditorFactory *variantFactory = new QtVariantEditorFactory();

    QtTreePropertyBrowser *variantEditor = new QtTreePropertyBrowser();
    variantEditor->setFactoryForManager(variantManager, variantFactory);
    variantEditor->addProperty(topItem);
    variantEditor->setPropertiesWithoutValueMarked(true);
    variantEditor->setRootIsDecorated(false);

    layout->addWidget(variantEditor);

    QObject::connect(variantManager, &QtVariantPropertyManager::valueChanged, this, &MainWindow::OnValueChanged_Print);


}

void MainWindow::OnValueChanged_Print(QtProperty* prop, const QVariant& val)
{
    QString propertyString = "NULL";
    QString valueString = "NULL";

    if(prop != nullptr)
    {
        propertyString = prop->propertyName();
    }


    valueString =  val.toString();

    QString messageString = QString("Class Scope: Got a value changed event. Property '%1' changed to value '%2'.").arg(propertyString).arg(valueString);

    qDebug(messageString.toStdString().c_str());
}

MainWindow::~MainWindow()
{
    // how much of the property browser is deleted?
    delete ui;
}
