Instance: ilHdpAllergyIntolerance-peanut-allergy-resolved
InstanceOf: ILHDPAllergyIntolerance
Usage: #example
Title: "AllergyIntolerance: peanut-allergy"
Description: "An example of ILHDPAllergyIntolerance of a peanut allergy"

* meta.profile = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-allergy-intolerance"
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #allergiesAndIntolerances
* meta.security[HDP].display = "רגישויות"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:ae01a40f-5a40-51cd-9fd2-5e96251366ef"
* identifier.type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Peanut Allergy</div>"
* text.status = #generated

* patient.reference = "Patient/patient-israeli-with-two-identifiers"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed

* type = #allergy
* criticality = #high
* code = $sct#91935009 "Allergy to peanuts"
* category = #food
* reaction.substance = $sct#417889008 "Arachis oil (substance)"
* reaction.manifestation = $sct#39579001 "Anaphylaxis (disorder)"
* reaction.severity = #severe
* reaction.exposureRoute = $sct#26643006 "Oral route"
* extension[AllergyIntoleranceEnd].extension[endDate].valueDateTime = "2020-01-01"
* extension[AllergyIntoleranceEnd].extension[reasonEnded].valueCodeableConcept = $sct#63098009 "Clinical immunologist (occupation)"

* onsetDateTime = "2018-06-10"
* recorder.reference = "Practitioner/practitioner-il-family-md"
* note.text = "Patient previously had severe allergic reaction to peanuts, but tolerance developed after immunotherapy."
* recordedDate = "2024-01-10"