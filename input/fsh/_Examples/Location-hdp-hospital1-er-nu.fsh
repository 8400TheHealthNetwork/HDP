Instance: hospital1-er-nu
InstanceOf: ILHDPLocationNursingUnit
Title: "HDP Location - Hospital1 ER Nursing Unit"
Description: "Nursing unit location for the ER segment."
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hospital1 ER Nursing Unit</div>"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #organization
* meta.security[HDP].display = "יחידה ארגונית"

* identifier[+].system = "http://hospital1.check.org/locations"
* identifier[=].value = "HOSP1-ER-NU"
* identifier[=].type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

* status = #active
* name = "Hospital1 ER Nursing Unit"
* type.coding[nursing-unit] = $il-core-location-physical-type#hospital-nursing-unit "Hospital nursing unit"
* type.coding[hospital-unit] = $v3-RoleCode#HU "Hospital unit"
* mode = #instance
* managingOrganization.reference = "Organization/hospital1-er"
* address.line[+] = "Rambam Hospital, Haifa"
