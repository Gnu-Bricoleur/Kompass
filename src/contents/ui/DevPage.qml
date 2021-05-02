import QtQuick 2.7
import QtQuick.Layouts 1.2
import QtQuick.Controls 2.4 as Controls
import org.kde.kirigami 2.4 as Kirigami

Kirigami.Page
{
    title: "Developper view"
    id: devPage
    ColumnLayout {
        width: root.width
        height: root.height
        spacing: 10
        Layout.alignment: Qt.AlignCenter
        Text {
            id: helloText
            text: "Kompass"
        }
        Row{
            spacing: 10
            Controls.Label {
                text:  applicationData.xraw
                color: "red"
                objectName: "x"
            }Controls.Label {
                text:  applicationData.yraw
                color: "green"
                objectName: "y"
            }Controls.Label {
                text:  applicationData.zraw
                color: "blue"
                objectName: "z"
            }Controls.Label {
                text:  applicationData.angle
                color: "black"
                objectName: "vec"
            }
        }
        Row{
            spacing: 10
            Controls.Label {
                text:  applicationData.xraw
                color: "red"
                objectName: "x"
            }Controls.Label {
                text:  applicationData.yraw
                color: "green"
                objectName: "y"
            }Controls.Label {
                text:  applicationData.zraw
                color: "blue"
                objectName: "z"
            }Controls.Label {
                text:  applicationData.angle
                color: "black"
                objectName: "vec"
            }
        }
        Row{
            spacing: 10
            Controls.Label {
                text:  applicationData.xraw
                color: "red"
                objectName: "x"
            }Controls.Label {
                text:  applicationData.yraw
                color: "green"
                objectName: "y"
            }Controls.Label {
                text:  applicationData.zraw
                color: "blue"
                objectName: "z"
            }Controls.Label {
                text:  applicationData.angle
                color: "black"
                objectName: "vec"
            }
        }
        Row{
            spacing: 10
            Controls.Label {
                text:  applicationData.xraw
                color: "red"
                objectName: "x"
            }Controls.Label {
                text:  applicationData.yraw
                color: "green"
                objectName: "y"
            }Controls.Label {
                text:  applicationData.zraw
                color: "blue"
                objectName: "z"
            }Controls.Label {
                text:  applicationData.angle
                color: "black"
                objectName: "vec"
            }
        }
    }
}

