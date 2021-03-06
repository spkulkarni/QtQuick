import QtQuick 2.0

Rectangle {
    width: 150; height: 220; color: "white"

    ListModel {
        id: nameModel
        ListElement { name: "Alice" }
        ListElement { name: "Bob" }
        ListElement { name: "Jane" }
        ListElement { name: "Harry" }
        ListElement { name: "Wendy" }
    }

    Component {
        id: nameDelegate
        Text {
            text: name;
            font.pixelSize: 32
        }
    }

    ListView {
        anchors.fill: parent
        model: nameModel
        delegate: nameDelegate
        focus: true
        clip: true
        header: Rectangle {
            width: parent.width; height: 10;
            color: "pink"
        }
        footer: Rectangle {
            width: parent.width; height: 10;
            color: "lightblue"
        }
        highlight: Rectangle {
            width: parent.width
            color: "lightgray"
        }
    }
}
