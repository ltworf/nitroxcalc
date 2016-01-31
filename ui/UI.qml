import QtQuick 2.5

import QtQuick.Layouts 1.2


Background {
    GridLayout {
        columns: 2
        anchors.fill: parent

        FormLabel {
            Layout.columnSpan: 2
            text: 'nitroxcalc'
            horizontalAlignment: Text.AlignHCenter
            font.pointSize: 42

            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        FormLabel {
            text: 'Ean:'
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TextInput {
            id: ean
            text: '21'
            color: 'white'
            font.pointSize: 28
            validator: IntValidator{bottom: 21; top: 40;}
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        FormLabel {
            text: 'Max depth'
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        FormLabel {
            text: calc.mod(ean.text)
            Layout.fillHeight: true
        }

        FormLabel {
            text: 'Best depth'
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        FormLabel {
            text: calc.bod(ean.text)
            Layout.fillHeight: true
        }

        FormLabel {
            text: 'Depth'
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        TextInput {
            id: depth
            text: '15'
            color: 'white'
            font.pointSize: 28
            validator: IntValidator{bottom: 5; top: 66;}
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        FormLabel {
            text: 'Equiv. depth'
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        FormLabel {
            text: calc.ead(ean.text, depth.text)
            Layout.fillHeight: true
        }

    }


}
