Instance: practitioner-md-ward-a
InstanceOf: ILHDPPractitioner
Title: "HDP Practitioner - Ward A Physician"
Description: "Example physician assigned to the Ward A inpatient care segment."
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dr. Cohen Yael</div>"

* meta.profile[+] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-practitioner"
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #practitioner
* meta.security[HDP].display = "מטפל"

* identifier[+].system = $practitioner-license-moh
* identifier[=].value = "1-12345"
* identifier[enc-il-id].system = "http://fhir.health.gov.il/identifier/encrypted-id-primary-moh"
* identifier[enc-il-id].value = "mK3x*&@9d"
* identifier[enc-il-id].type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

* active = true
* name[English].family = "Cohen"
* name[English].given[+] = "Yael"
* name[English].prefix[+] = "Dr."
* name[English].extension[language].valueCode = #en