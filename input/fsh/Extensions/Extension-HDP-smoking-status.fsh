Extension: ILHDPExtensionSmokingStatus
Id: ext-hdp-smoking-status
Title: "Smoking Status Extension"
Description: "Indicates the patient's smoking status as supporting information. This extension is not the clinical source of truth for smoking status and should not be used to infer or confirm it."
* ^url = $ext-hdp-smoking-status
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "ServiceRequest"
* ^context[1].type = #element
* ^context[1].expression = "MedicationRequest"
* ^context[2].type = #element
* ^context[2].expression = "DeviceRequest"
* ^context[3].type = #element
* ^context[3].expression = "Appointment"
* ^context[4].type = #element
* ^context[4].expression = "Encounter"
* ^context[5].type = #element
* ^context[5].expression = "Procedure"
* ^context[6].type = #element
* ^context[6].expression = "Condition"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from ILHDPSmokingStatus (required)
* insert ConformanceMetadata
