import QtQuick 2.7
import org.kde.kirigami 2.4 as Kirigami
import QtQuick.Controls 2.15 as Controls
import QtQuick.Layouts 1.2

Kirigami.Page {
    id: infoPage


    GridLayout {
        anchors.fill: parent
        anchors.margins: 20
        rowSpacing: 20
        columnSpacing: 20
        flow:  width > height ? GridLayout.LeftToRight : GridLayout.TopToBottom
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#5d5b59"
            Controls.Label {
                anchors.centerIn: parent
                text: "Top or left"
                color: "white"
            }
        }
        Rectangle {
            Layout.fillWidth: true
            Layout.fillHeight: true
            color: "#1e1b18"
            Controls.Label {
                anchors.centerIn: parent
                text: "Bottom or right"
                color: "white"
            }
        }
    }
}
