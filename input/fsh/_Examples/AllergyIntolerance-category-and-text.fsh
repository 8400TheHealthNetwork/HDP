Instance: ilHdpAllergyIntolerance-CategoryAndText
InstanceOf: ILHDPAllergyIntolerance
Title: "ILHDP AllergyIntolerance - Category and Text"
Description: "Example of an allergy intolerance with a category and free text."
Usage: #example

* meta.profile = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-allergy-intolerance"
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #allergiesAndIntolerances
* meta.security[HDP].display = "רגישויות"

* id = "ilHdpAllergyIntolerance-CategoryAndText"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:a76d9bbf-f293-4fb7-ad4c-2811bac77162"
* identifier.type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

// Clinical status
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed

* category = #food
// Patient
* patient = Reference(Patient/example)

// Recording details
* recordedDate = "2026-10-18"
* recorder = Reference(Practitioner/example)

// Allergy code - Text Only
* code.text = "רגישות לחומר ניגוד"

// Narrative
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>רגישות לחומר ניגוד</p></div>"