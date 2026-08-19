Instance: hospital1-ward-a-room-12-bed-2
InstanceOf: ILHDPLocation
Title: "HDP Location - Hospital1 Ward A Room 12 Bed 2"
Description: "Physical bed location used during the first part of the ward A stay."
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Hospital1 Ward A - Room 12 Bed 2</div>"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #organization

* identifier[+].system = "http://hospital1.check.org/locations"
* identifier[=].value = "HOSP1-WARD-A-R12-B2"
* identifier[=].type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

* status = #active
* name = "Ward A Room 12 Bed 2"
* mode = #instance
* managingOrganization.reference = "Organization/hospital1-ward-a"
* address.line[+] = "Rambam Hospital, Haifa"
