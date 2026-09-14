Profile: ILHDPRelatedPersonContained
Parent: RelatedPerson
Id: il-hdp-related-person-contained
Title: "ILHDP RelatedPerson Contained Profile"
Description: "A minimal RelatedPerson profile for use as a contained resource in HDP. Only the relationship to the patient is represented."

* ^url = $ILHDPRelatedPersonContained
* insert ConformanceMetadata
* ^status = #active

* . ^short = "Minimal contained RelatedPerson for HDP"
* . ^definition = "A minimal RelatedPerson resource used to represent the relationship of a non-identified person to the patient."

// Elements inherited from RelatedPerson
* identifier 0..0
* active 0..0

// Mandatory in the base RelatedPerson resource
* patient 1..1 MS
* patient only Reference(ILCorePatient)

// The relationship is the only clinical detail represented
* relationship 1..1 MS
* relationship from $vs-patient-relationship-type (required)

// All remaining RelatedPerson elements are prohibited
* name 0..0
* telecom 0..0
* gender 0..0
* birthDate 0..0
* address 0..0
* photo 0..0
* period 0..0
* communication 0..0