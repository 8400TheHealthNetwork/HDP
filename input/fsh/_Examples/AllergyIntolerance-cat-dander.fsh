Instance: ilHdpAllergyIntolerance-cat-dander
InstanceOf: ILHDPAllergyIntolerance
Usage: #example
Title: "AllergyIntolerance: Cat Dander Allergy"
Description: "An example of ILHDPAllergyIntolerance of a cat-dander allergy"


* meta.profile = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-allergy-intolerance"
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #allergiesAndIntolerances
* meta.security[HDP].display = "רגישויות"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:6641e6ce-5df2-5689-86cb-71465baa0106"
* identifier.type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Cat Dander Allergy</div>"

* patient.reference = "Patient/patient-with-israeli-id"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed

* type = #allergy
* criticality = #low
* code = $sct#232346004 "Allergy to cat dander"
* category = #biologic

* reaction.substance = $sct#260152009 "Cat dander (substance)"
* reaction.manifestation[+] = $sct#271807003 "Eruption of skin (disorder)"
* reaction.manifestation[+] = $sct#418290006 "Itching (finding)"
* reaction.severity = #mild
* reaction.exposureRoute = $sct#6064005 "Topical route (qualifier value)"
* reaction.extension[duration].valueDuration = 3 'h'

* onsetDateTime = "2022-11-15"
* recorder.reference = "Practitioner/practitioner-il-md"
* note.text = "Mild skin reaction upon exposure to household cat."
* recordedDate = "2024-01-10"