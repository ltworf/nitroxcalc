import QtQuick 2.0
import QtQuick.Particles 2.0

Rectangle {
    color: "#0170FE"

    Image {
        source: "background.jpg"
        fillMode: Image.PreserveAspectCrop
        anchors.fill: parent
    }

    Timer {
        interval: 8000
        triggeredOnStart: true
        repeat: true
        running: true
        onTriggered: {
            emitter.burst(50);
        }
    }

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
    }

    ParticleSystem {
        id: particles
        running: true
    }

    ImageParticle {
        anchors.fill: parent
        system: particles
        source: "bubble.png"
        sizeTable: "sparkleSize.png"
        alpha: 0
        colorVariation: 0.6
    }

    Rectangle {
        width: parent.width
        height: 5
        anchors.bottom: parent.bottom
        opacity: 0
        Emitter {
            id: emitter
            anchors.fill: parent
            system: particles
            emitRate: 3
            lifeSpan: 30000
            size: 20
            endSize: 30
            velocity: PointDirection {y: -72; yVariation: 24}
            sizeVariation: 10
        }
    }


}
