import QtQuick 2.1
import org.kde.kirigami 2.4 as Kirigami
import QtQuick.Controls 2.0 as Controls

Kirigami.ApplicationWindow {
    id: root
    title: "Kompass"
         Column{
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
