Instance: hospital1-main-campus
InstanceOf: ILHDPLocation
Title: "HDP Location - Hospital1 Main Campus"
Description: "Generic physical site location for the top-level hospitalization encounter."
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hospital1 Main Campus</div>"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #organization
* meta.security[HDP].display = "יחידה ארגונית"

* identifier[+].system = "http://hospital1.check.org/locations"
* identifier[=].value = "HOSP1-MAIN-CAMPUS"
* identifier[=].type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

* status = #active
* name = "Hospital1 Main Campus"
* mode = #instance
* managingOrganization.reference = "Organization/hospital1"
* managingOrganization.display = "Hospital1"
* address.line[+] = "Rambam Hospital, Haifa"
