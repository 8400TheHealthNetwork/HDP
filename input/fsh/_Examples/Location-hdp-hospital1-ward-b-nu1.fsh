Instance: hospital1-ward-b-nu1
InstanceOf: ILHDPLocationNursingUnit
Title: "HDP Location - Hospital1 Ward B Nursing Unit 1"
Description: "Nursing unit location for the Ward B portion of the stay."
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hospital1 Ward B - Nursing Unit 1</div>"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #organization
* meta.security[HDP].display = "יחידה ארגונית"

* identifier[+].system = "http://hospital1.check.org/locations"
* identifier[=].value = "HOSP1-WARD-B-NU1"
* identifier[=].type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

* status = #active
* name = "Hospital1 Ward B Nursing Unit 1"
* type.coding[nursing-unit] = $il-core-location-physical-type#hospital-nursing-unit "Hospital nursing unit"
* type.coding[hospital-unit] = $v3-RoleCode#HU "Hospital unit"
* mode = #instance
* managingOrganization.reference = "Organization/hospital1-ward-b"
* address.line[+] = "Rambam Hospital, Haifa"
