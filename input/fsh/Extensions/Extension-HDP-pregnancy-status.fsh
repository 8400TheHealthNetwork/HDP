Extension: ILHDPExtensionPregnancyStatus
Id: ext-hdp-pregnancy-status
Title: "Pregnancy Status Extension"
Description: "Indicates whether the patient is currently pregnant, as supporting information. This extension is not the clinical source of truth for pregnancy status and should not be used to infer or confirm it."
* ^url = $ext-hdp-pregnancy-status
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
* ^context[7].type = #element
* ^context[7].expression = "DiagnosticReport"
* ^context[8].type = #element
* ^context[8].expression = "ImagingStudy"
* value[x] 1..1
* value[x] only boolean
* insert ConformanceMetadata
