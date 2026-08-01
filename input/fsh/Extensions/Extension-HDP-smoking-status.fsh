Extension: ILHDPExtensionSmokingStatus
Id: ext-hdp-smoking-status
Title: "Smoking Status Extension"
Description: "Indicates the patient's smoking status as supporting information. This is not the clinical source of truth for smoking status and should not be inferred from a referral alone."

* ^url = $ext-hdp-smoking-status
* ^status = #active
* ^context[0].type = #element
* ^context[0].expression = "ServiceRequest"

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from ILHDPSmokingStatus (required)
* insert ConformanceMetadata
