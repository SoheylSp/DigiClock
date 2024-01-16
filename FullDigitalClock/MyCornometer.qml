import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import com.cornometer 1.0
Rectangle {

    width       : mainWindow.width
    height      : mainWindow.height
    anchors.fill: parent

    property int milSec: 0



    Cornometer{id:cornometer}

    ColumnLayout{

        anchors.fill    : parent
        anchors.centerIn: parent

        Rectangle{

            Layout.preferredHeight: parent.height * 0.8
            Layout.preferredWidth : parent.width * 0.9
            Layout.alignment      : Qt.AlignHCenter | Qt.AlignVCenter
            color                 : "blue"

            Text{

                id              : mText
                color           : "white"
                text            : cornometer.counter
                font.pointSize  : 30
                anchors.centerIn: parent

            }

        }


        RowLayout{

            Layout.fillHeight: true
            Layout.fillWidth : true
            Layout.alignment : Qt.AlignHCenter | Qt.AlignVCenter

            Button{

                text     :qsTr("Start")
                onClicked: {cornometer.start()}

                //Layout.fillHeight: true
                Layout.fillWidth : true
                Layout.alignment : Qt.AlignHCenter | Qt.AlignVCenter

            }
            Button{

                text     :qsTr("Stop")
                onClicked: {cornometer.stop()}

                //Layout.fillHeight: true
                Layout.fillWidth : true
                Layout.alignment : Qt.AlignHCenter | Qt.AlignVCenter
            }
            Button{

                text     :qsTr("Reset")
                onClicked: {cornometer.reset()}
                //Layout.fillHeight: true
                Layout.fillWidth : true
                Layout.alignment : Qt.AlignHCenter | Qt.AlignVCenter
            }

            Button{

                text:qsTr("Menu")

                onClicked: {stackView.pop();}

                //Layout.fillHeight: true
                Layout.fillWidth : true
                Layout.alignment : Qt.AlignHCenter | Qt.AlignVCenter
            }
        }

    }

}
