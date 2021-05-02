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
        Row{
            spacing: 10
            Controls.Label {
                text:  "x"
                color: "red"
                objectName: "x"
            }Controls.Label {
                text:  "y"
                color: "green"
                objectName: "y"
            }Controls.Label {
                text:  "z"
                color: "blue"
                objectName: "z"
            }Controls.Label {
                text:  "vec"
                color: "black"
                objectName: "vec"
            }
        }
    }
}

