import QtQuick 2.1
import org.kde.kirigami 2.4 as Kirigami
import QtQuick.Controls 2.0 as Controls

Kirigami.ApplicationWindow {
    id: root

    title: "Hello"

//    pageStack.initialPage: mainPageComponent

//    Component {
//        id: mainPageComponent

//        Kirigami.Page {
//            title: "Hello"

  //          Rectangle {
    //            color: "yellow"
      //          anchors.fill: parent
         Column{      
                Controls.Label {
                    text:  "Hello Kirigami"
                    color: "red"
                   // anchors.centerIn: parent
                    objectName: "x" 
               }Controls.Label {
                    text:  "Hello Kirigami"
                    color: "green"
                   // anchors.centerIn: parent
                    objectName: "y" 
               }Controls.Label {
                    text:  "Hello Kirigami"
                    color: "blue"
                   // anchors.centerIn: parent
                    objectName: "z" 
               }Controls.Label {
                    text:  "Hello Kirigami"
                    color: "black"
                   // anchors.centerIn: parent
                    objectName: "vec" 
               }
}
        //    }
       // }
   // }
}
