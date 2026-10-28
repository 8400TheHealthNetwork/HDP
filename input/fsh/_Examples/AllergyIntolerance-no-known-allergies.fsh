Instance: ilHdpAllergyIntolerance-no-known-allergies
InstanceOf: ILHDPAllergyIntolerance
Usage: #example
Title: "AllergyIntolerance: no-known-allergy"
Description: "An example of ILHDPAllergyIntolerance for a person with no known allergies"


* meta.profile = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-allergy-intolerance"
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #allergiesAndIntolerances
* meta.security[HDP].display = "רגישויות"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:cdc36442-97be-52f3-be41-3fb53d4f0795"
* identifier.type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">No Known Allergies</div>"

* patient.reference = "Patient/patient-israeli-with-two-identifiers"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed

* code = $sct#716186003 "No known allergy"
* recorder.reference = "Practitioner/practitioner-example"
* note.text = "Patient reports no known allergies as of last intake visit."
* recordedDate = "2024-01-10"
// * category = #biologic
// * reaction.substance = $sct#2600152009 "Cat dander (substance)"
// * reaction.manifestation[+] = $sct#271807003 "Eruption of skin (disorder)"
// * reaction.manifestation[+] = $sct#418290006 "Itching (finding)"
// * reaction.severity = #mild
// * reaction.exposureRoute = $sct#6064005 "Topical route (qualifier)"

