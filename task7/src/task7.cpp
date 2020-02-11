#include <QtQuick>

#include <sailfishapp.h>

QString Dir();

int main(int argc, char *argv[])
{
    QGuiApplication *app = SailfishApp::application(argc, argv);

    QQuickView *view = SailfishApp::createView();
    view->setSource(SailfishApp::pathTo("qml/task7.qml"));
    view->setPersistentOpenGLContext(true);
    view->setPersistentSceneGraph(true);

    view->rootContext()->setContextProperty("Dir", Dir());

    view->show();

    return app->exec();
}

QString Dir()
{
    QDir Dir(QDir::homePath() + "Pictures");

    if (!Dir.exists()) {
        Dir.mkpath(Dir.absolutePath());
    }

    return QString(Dir.absolutePath() + "/");
}
