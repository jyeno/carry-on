import QtQuick 2.6
import QtQuick.Controls 1.4
import QtQuick.Window 2.2
import QtQuick.Layouts 1.1

ApplicationWindow {
    id: window
    visible: true;
    width: Screen.width
    height: Screen.height
    color: screenSettings.backgroundColor

    GameScene {
        id: gameScene
        height: screenSettings.gameSceneHeight
        width: screenSettings.gameSceneWidth
        Component.onCompleted: console.log("screenSettings.gameSceneHeight: ", screenSettings.gameSceneHeight)
    }

    CarControl {
        id: carControl
        height: screenSettings.carControlHeight
        width: screenSettings.carControlWidth
        anchors.top: gameScene.bottom
    }

    ControlProperties {
        id: controlProperties
        height: screenSettings.controlPropertiesHeight
        width: screenSettings.controlPropertiesWidth
        color: screenSettings.backgroundColor
        anchors.left: gameScene.right
    }

    ScreenSettings {
        id: screenSettings
    }
}

