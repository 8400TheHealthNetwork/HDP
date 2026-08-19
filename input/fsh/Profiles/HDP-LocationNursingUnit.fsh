Profile: ILHDPLocationNursingUnit
Parent: ILCoreLocationNursingUnit
Id: il-hdp-location-nursing-unit
Title: "ILHDP Location Nursing Unit Profile"
Description: "HDP constraints for nursing-unit locations with security tagging. Intended for nursing-unit locations referenced from HDP inpatient care segments."

* ^url = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-location-nursing-unit"
* insert ConformanceMetadata
* . obeys one-strong-identifier
* ^status = #draft

* meta only ILHDPMeta
* meta 1..1
* identifier 1..*

* managingOrganization only Reference($ILOrganization or $ILHDPOrganization)
* partOf only Reference($ILLocation or $ILLocationNursingUnit or $ILHDPLocation or $ILHDPLocationNursingUnit)
