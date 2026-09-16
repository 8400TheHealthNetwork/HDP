Instance: practitioner-nurse-ward-a
InstanceOf: ILHDPPractitioner
Title: "HDP Practitioner - Ward A Nurse"
Description: "Example nurse assigned to the Ward A inpatient care segment."
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Registered Nurse Leah Katz</div>"

* meta.profile[+] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-practitioner"
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #practitioner
* meta.security[HDP].display = "מטפל"

* identifier[+].system = $nurse-license-moh
* identifier[=].value = "11111"
* identifier[+].system = "http://fhir.health.gov.il/identifier/encrypted-id-primary-moh"
* identifier[=].value = "tR56$@8vb"

* active = true
* name[English].family = "Katz"
* name[English].given[+] = "Leah"
* name[English].prefix[+] = "RN"
* name[English].extension[language].valueCode = #en
