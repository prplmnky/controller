import QtQuick 1.1
import com.nokia.meego 1.0
import "controlpad"

Page {
    id: mainPage
    tools: commonTools
    objectName: "mainPage"

    Rectangle {
        id: backgroundRect
        color: "black"
        anchors.fill: parent

        Sprite {
            id: sprite
            color: "red"
            x: (parent.width - width) / 2
            y: 100
        }

        DirectionalPad {
            id: controller
            anchors.bottom: parent.bottom
            anchors.horizontalCenter: parent.horizontalCenter
            leftColor: "blue"
            rightColor: "blue"
            downColor: "blue"
            upColor: "blue"

            function moveSpriteLeft() {
                console.log("Moving sprite left")
                sprite.x -= 10
            }

            function moveSpriteRight() {
                console.log("Moving sprite right")
                sprite.x += 10
            }

            function moveSpriteDown() {
                console.log("Moving sprite down")
                sprite.y += 10
            }

            function moveSpriteUp() {
                console.log("Moving sprite up")
                sprite.y -= 10
            }

            onLeftPressed: moveSpriteLeft()
            onLeftHeld: moveSpriteLeft()
            onRightPressed: moveSpriteRight()
            onRightHeld: moveSpriteRight()
            onDownPressed: moveSpriteDown()
            onDownHeld: moveSpriteDown()
            onUpPressed: moveSpriteUp()
            onUpHeld: moveSpriteUp()
        }
    }
}
