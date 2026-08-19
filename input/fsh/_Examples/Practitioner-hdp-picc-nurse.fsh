Instance: practitioner-nurse-picc
InstanceOf: ILHDPPractitioner
Title: "HDP Practitioner - PICC Nurse"
Description: "Example nurse performing the PICC line insertion segment."
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Registered Nurse Maya Levi</div>"

* meta.profile[+] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-practitioner"
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #practitioner
* meta.security[HDP].display = "מטפל"

* identifier[+].system = $nurse-license-moh
* identifier[=].value = "22222"
* identifier[enc-il-id].system = "http://fhir.health.gov.il/identifier/encrypted-id-primary-moh"
* identifier[enc-il-id].value = "tV6p*&@4h"
* identifier[enc-il-id].type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

* active = true
* name[English].family = "Levi"
* name[English].given[+] = "Maya"
* name[English].prefix[+] = "RN"
* name[English].extension[language].valueCode = #en

