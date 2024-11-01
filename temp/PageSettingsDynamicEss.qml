import QtQuick 1.1
import com.victron.velib 1.0

MbPage {
	model: VisibleItemModel {
		MbItemOptions {
			id: dEssMode
			description: qsTr("Mode")
			enabled: userHasWriteAccess
			bind: "com.victronenergy.settings/Settings/DynamicEss/Mode"
			possibleValues:[
				MbOption { description: qsTr("Off"); value: 0 },
				MbOption { description: qsTr("Auto"); value: 1 }
			]
		}

		MbItemOptions {
			description: qsTr("Status")
			readonly: true
			bind: "com.victronenergy.system/DynamicEss/Active"
			possibleValues:[
				MbOption { description: qsTr("Inactive"); value: 0 },
				MbOption { description: qsTr("Auto"); value: 1 },
				MbOption { description: qsTr("Buying"); value: 2 },
				MbOption { description: qsTr("Selling"); value: 3 }
			]
		}

		MbItemValue {
			description: qsTr("Target SOC")
			show: dEssMode.value == 1
			item.bind: "com.victronenergy.system/DynamicEss/TargetSoc"
		}

		MbSpinBox {
			description: qsTr("Max Target SOC for idle and Adhoc Charge")
			show: dEssMode.value == 1
			enabled: true
			item {
				bind: "com.victronenergy.settings/Settings/DynamicEss/MaxTargetSocForIdle"
				decimals: 0
				unit: "%"
				min: 5
				max: 100
				step: 1
			}
		}

		MbSpinBox {
			description: qsTr("Adhoc Charge Rate")
			show: dEssMode.value == 1
			enabled: true
			item {
				bind: "com.victronenergy.settings/Settings/DynamicEss/AdhocChargeRate"
				decimals: 0
				unit: "W"
				min: 0
				max: 20000
				step: 250
			}
		}

		MbItemValue {
			description: qsTr("Final Strategy") 
			show: dEssMode.value == 1
			item.bind: "com.victronenergy.system/DynamicEss/FinalStrategy"
		}

		MbItemValue {
			description: qsTr("Hack Version") 
			show: dEssMode.value == 1
			item.bind: "com.victronenergy.system/DynamicEss/HackVersion"
		}
	}
}
