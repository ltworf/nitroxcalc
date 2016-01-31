import QtQuick 2.0
import QtQuick.Particles 2.0

Rectangle {
    color: "#0170FE"

    Image {
        width: 1162
        height: 778
        source: "background.jpg"
        fillMode: Image.Pad
        anchors.centerIn: parent
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

    Component.onCompleted: {
        //particles.running = true;
    }

    MouseArea {
        anchors.fill: parent
        acceptedButtons: Qt.LeftButton | Qt.RightButton
        onClicked: {
            //if (mouse.button == Qt.LeftButton)
            //    particles.running = !particles.running
            //else
            //    particles.paused = !particles.paused;
        }
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
