import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window
{
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Label
    {
        id: myLabel
        font.pixelSize: 22
        font.bold: true
        font.italic: false
        font.family: "verdana"

        text: "Qt With Ketan"

        width: 300
        height: 100

        anchors.centerIn: parent

        verticalAlignment: Qt.AlignVCenter
        horizontalAlignment: Qt.AlignHCenter

        background: Rectangle
        {
            border.color: "blue"
            border.width: 5
            radius: 10
        }

        color: myMouseArea.containsMouse ? "red" : "black"
        scale: myMouseArea.containsMouse ? 1.2 : 1.0

        MouseArea
        {
            id: myMouseArea
            anchors.fill: parent
            hoverEnabled: true
            cursorShape: Qt.PointingHandCursor
        }
    }
}
