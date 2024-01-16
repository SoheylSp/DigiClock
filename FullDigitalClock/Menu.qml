import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12


Rectangle{

    width       : parent.width
    height      : parent.height
    anchors.fill: parent
    visible     : true

    ColumnLayout{

        anchors.fill: parent
        spacing: 5

        Rectangle{

            Layout.fillHeight: true
            Layout.fillWidth: true
            border.color: "purple"




            Text{

                anchors.centerIn: parent
                font.pointSize: 25
                text:qsTr("Select what you want")
            }
        }
        Rectangle{

            border.color: "purple"
            Layout.fillHeight: true
            Layout.fillWidth: true

            MouseArea{

                anchors.fill: parent
                onClicked: {

                    //stackview.push()
                }
            }

            Text{

                anchors.centerIn: parent
                font.pointSize: 22
                text:qsTr("Alarm")

            }

        }
        Rectangle{

            border.color: "purple"
            Layout.fillHeight: true
            Layout.fillWidth: true

            MouseArea{

                anchors.fill: parent
                onClicked: {

                    stackView.push(comp2)
                }
            }


            Text{

                anchors.centerIn: parent
                font.pointSize: 22

                text:qsTr("WorldClock")

            }

        }

        Rectangle{

            border.color: "purple"
            Layout.fillHeight: true
            Layout.fillWidth: true

            MouseArea{

                anchors.fill: parent
                onClicked: {

                    stackView.push(comp1)
                }
            }



            Text{

                anchors.centerIn: parent
                font.pointSize: 22
                text:qsTr("Cornometer")
            }

        }

    }



}


