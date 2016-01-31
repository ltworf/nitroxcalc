import QtQuick 2.5

import QtQuick.Layouts 1.2


Background {
    GridLayout {
        columns: 2
        anchors.fill: parent

        FormLabel {
            Layout.columnSpan: 2
            text: 'nitroxcalc'
            font.pointSize: 42
        }

        FormLabel {
            text: 'Ean:'
        }

        TextInput {
            id: ean
            text: '21'
            color: 'white'
            font.pointSize: 28
            validator: IntValidator{bottom: 21; top: 40;}
        }

        FormLabel {
            text: 'Max depth'
        }

        FormLabel {
            text: calc.mod(ean.text)
        }

        FormLabel {
            text: 'Best depth'
        }

        FormLabel {
            text: calc.bod(ean.text)
        }

        FormLabel {
            text: 'Depth'
        }

        TextInput {
            id: depth
            text: '15'
            color: 'white'
            font.pointSize: 28
            validator: IntValidator{bottom: 5; top: 66;}
        }

        FormLabel {
            text: 'Equiv. depth'
        }

        FormLabel {
            text: calc.ead(ean.text, depth.text)
        }
    }


}
