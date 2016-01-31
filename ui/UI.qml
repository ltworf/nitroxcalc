import QtQuick 2.5

import QtQuick.Layouts 1.2


Background {
    GridLayout {
        columns: 2
        anchors.fill: parent

        FormLabel {
            text: 'Lel'
            Layout.columnSpan: 2
            anchors.centerIn: parent.Center
        }

        FormLabel {
            text: 'Ean:'
        }

        TextInput {
            id: ean
            text: '21'
            font.pointSize: 32
            validator: IntValidator{bottom: 21; top: 40;}
        }

        FormLabel {
            text: 'Max depth'
        }

        FormLabel {
            text: calc.mod(ean.text)+ 'm'
        }

        FormLabel {
            text: 'Best depth'
        }

        FormLabel {
            text: calc.bod(ean.text)+ 'm'
        }

        FormLabel {
            text: 'Equivalent air depth'
        }

        FormLabel {

        }
    }


}
