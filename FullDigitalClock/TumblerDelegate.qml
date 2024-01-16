import QtQuick 2.0
import QtQuick.Controls 2.12

Rectangle {

    id      :tumblerDelegate
    width   : parent.width * 0.6
    height  : parent.height * 0.8

    Text{


        anchors.centerIn: parent
        text            : modelData


    }



}
