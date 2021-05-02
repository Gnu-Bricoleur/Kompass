import QtQuick 2.7
import QtQuick.Controls 2.4
import org.kde.kirigami 2.0 as Kirigami

Kirigami.ApplicationWindow
{
        globalDrawer: Kirigami.GlobalDrawer {
        title: "Menu"
        titleIcon: "applications-graphics"

        actions: [
            Kirigami.Action {
                text: "Kompass"
                onTriggered: {pageStack.replace(Qt.resolvedUrl("KompassPage.qml")); applicationData}
            },
            Kirigami.Action {
                text: "Advanced view"
                onTriggered: pageStack.replace(Qt.resolvedUrl("DevPage.qml"))
            },
            Kirigami.Action {
                text: "Info"
                onTriggered: pageStack.replace(Qt.resolvedUrl("InfoPage.qml"))
            }
        ]
    }

    /*StackView {
        id: stackView
        anchors.fill: parent
        initialItem: Qt.resolvedUrl("KompassPage.qml")
    }*/
    pageStack.initialPage: Qt.resolvedUrl("KompassPage.qml")


}

