import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12

Window {

    id      : mainWindow
    visible : true
    width   : 350
    height  : 600
    title   : qsTr("Digital Clock")

    StackView{

        id          : stackView
        width       : parent.width
        height      : parent.height
        anchors.fill: parent
        initialItem : comp3

    }

    Component{

        id:comp1

        MyCornometer{id:myCornometer}
    }

    Component{

        id:comp2
        WorldClock{id:myWorldClock}
    }

    Component{

        id:comp3
        Menu{id:myMenu}
    }

}
