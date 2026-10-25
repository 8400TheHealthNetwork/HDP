Instance: ilHdpAllergyIntolerance-latex-allergy
InstanceOf: ILHDPAllergyIntolerance
Usage: #example
Title: "AllergyIntolerance: latex-allergy"
Description: "An example of ILHDPAllergyIntolerance of a latex allergy"

* meta.profile = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-allergy-intolerance"
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #allergiesAndIntolerances
* meta.security[HDP].display = "רגישויות"

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:39ff11f0-eed3-5db5-82b6-a11f30982986"
* identifier.type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Latex Allergy</div>"
* text.status = #generated

* patient.reference = "Patient/patient-with-israeli-id"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/allergyintolerance-verification#confirmed

* type = #allergy
* criticality = #low
* code = $sct#1003755004 "Allergy to Hevea brasiliensis latex protein (finding)"
* category = #biologic
* reaction.substance = $sct#111088007 "Latex (substance)"
* reaction.manifestation[+] = $sct#271807003 "Eruption of skin (disorder)"
* reaction.manifestation[+] = $sct#418290006 "Itching (finding)"
* reaction.severity = #mild
* reaction.exposureRoute = $sct#6064005 "Topical route (qualifier value)"

* onsetDateTime = "2021-05-10"
* recorder.reference = "Practitioner/practitioner-il-md"
* note.text = "Mild skin rash and itching after using latex gloves."
* recordedDate = "2024-01-10"