import QtQuick 2.2
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.4
import org.kde.kirigami 2.4 as Kirigami

Kirigami.Page
{
    title: "Developper view"

    Row{
            spacing: 10
            Label {
                text:  "x"
                color: "red"
                objectName: "x"
            }Label {
                text:  "y"
                color: "green"
                objectName: "y"
            }Label {
                text:  "z"
                color: "blue"
                objectName: "z"
            }Label {
                text:  "vec"
                color: "black"
                objectName: "vec"
            }
        }
}

