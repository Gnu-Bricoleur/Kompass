import QtQuick 2.7
import org.kde.kirigami 2.4 as Kirigami
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2

Kirigami.ApplicationWindow {
    id: root
    title: "Kompass"
    ColumnLayout {
        width: root.width
        height: root.height
        spacing: 10
        Text {
            id: helloText
            text: "Kompass"
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 24; font.bold: true
        }
        Item{
            Layout.fillWidth: true
            Layout.fillHeight: true
            Image {
                id: imagePhoto
                source: "qrc:/kompass_hand"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                width: parent.width > parent.height ? parent.height : parent.width
                height: parent.width > parent.height ? parent.height : parent.width
                transformOrigin: Item.Center
                rotation: 90
                objectName: "kompass_hand"
            }
        }
    }
}
