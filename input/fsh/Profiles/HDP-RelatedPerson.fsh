Profile: ILHDPRelatedPerson
Parent: ILCoreRelatedPerson
Id: il-hdp-related-person
Title: "ILHDP RelatedPerson Profile"
Description: "HDP constraints on a person related to an HDP Patient, including national identifiers and HDP security metadata."
* insert ConformanceMetadata
* . ^short = "ILHDP RelatedPerson Profile"
* . ^definition = "Information about a person related to an HDP Patient, with the identifier and security metadata requirements for HDP exchange."
* . obeys one-strong-identifier
* meta only ILHDPMeta
* meta 1..1

* meta.security[HDP].system = $info-buckets (exactly)
* meta.security[HDP].code = #patientDemographics (exactly)
* meta.security[HDP].display = "דמוגרפיה" (exactly)
* identifier 1..*
* patient only Reference(ILHDPPatient)
* patient ^short = "The HDP Patient this person is related to"
* patient ^definition = "The patient this person is related to, represented by a resource conforming to ILHDPPatient."
