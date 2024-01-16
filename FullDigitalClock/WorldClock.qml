import QtQuick 2.0
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {

    id          : worldClockBaseRect
    width       : mainWindow.width
    height      : mainWindow.height
    anchors.fill: parent


    ColumnLayout{


        anchors.fill    : parent
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter


        RowLayout{

            Layout.fillHeight   : true
            Layout.fillWidth    : true
            Layout.alignment    : Qt.AlignHCenter | Qt.AlignVCenter


            Tumbler{

                id              : hourTumbler
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model           :{

                    var hourAr = [];
                    for(var i = 0 ; i < 24 ; i++){
                        hourAr.push(i)
                    }
                    return hourAr
                }
                enabled     : false
                delegate    : TumblerDelegate{}
                currentIndex: WorldClockBackend.hour



            }
            Tumbler{

                id              :minuteTumbler
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model           : {

                    var minAr = [] ;
                    for ( var i =  0 ; i < 60 ; i++){

                        minAr.push(i)
                    }
                    return minAr
                }
                enabled     : false
                delegate    :TumblerDelegate{}
                currentIndex: WorldClockBackend.minute

            }
            Tumbler{

                id              : secondTumbler
                Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                model           : {

                    var secAr = [] ;
                    for (var i = 0 ; i < 60 ; i++){
                        secAr.push(i)
                    }
                    return secAr
                }

                enabled: false
                delegate    :TumblerDelegate{}
                currentIndex: WorldClockBackend.second
            }

        }

        RowLayout{

            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter

            Button{text:"World Clock"}
            Button{text:"Zone Clock"}
            Button{text:"Menu"

                onClicked: {stackView.pop()}
            }
        }
    }


}
