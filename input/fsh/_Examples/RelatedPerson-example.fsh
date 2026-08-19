Instance: guardian
InstanceOf: ILHDPRelatedPerson
Title: "Example ILCore RelatedPerson"
Description: "An example instance of the ILCore RelatedPerson profile."
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #patientDemographics
* meta.security[HDP].display = "דמוגרפיה"
* extension[parentName].extension[given].valueString = "John Doe Sr."
* identifier[il-id].system = $il-id
* identifier[il-id].value = "000000018"
* identifier[il-id].type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id
* active = true
* patient = Reference(patient-with-israeli-id)
* relationship[0].coding[0] = http://terminology.hl7.org/CodeSystem/v3-RoleCode#GUARD "Guardian"
* name[English].family = "Nice"
* name[English].given[+] = "Somebody"
* name[English].use[+] = #official
* name[English].extension[language].valueCode = #en
* telecom[0].system = #phone
* telecom[0].value = "+1-555-555-5555"
* telecom[0].use = #mobile
* address[0].line[0] = "123 Main St"
* address[0].city = "Somewhere"
* address[0].state = "CA"
* address[0].postalCode = "90210"
* address[0].country = "USA"
