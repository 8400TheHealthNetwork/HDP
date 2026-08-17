Profile: ILHDPEncounterSupplemental
Parent: ILCoreEncounter
Id: il-hdp-encounter-supplemental
Title: "ILHDP Encounter Supplemental Profile"
Description: "Supplemental encounter profile for optional additional encounter context in HDP flows. This profile is intentionally minimally constrained beyond identification as supplemental, so organizations can represent richer native encounter structures without making consumers dependent on them."

* ^url = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-encounter-supplemental"
* insert ConformanceMetadata
* ^status = #draft

* meta only ILHDPMeta
* meta 1..1
* meta.security[HDP].code = $info-buckets#encounterInformation

* type contains
    supplemental-encounter 1..1 and
    hospitalization 0..0 and
    inpatient-care-segment 0..0 and
    community-hmo-ambulatory 0..0
* type[supplemental-encounter] ^patternCodeableConcept.coding.system = $il-core-encounter-type 
* type[supplemental-encounter] ^patternCodeableConcept.coding.code = #supplemental-encounter-hdp
* type[hospitalization] ^patternCodeableConcept.coding.system = $il-core-encounter-type
* type[hospitalization] ^patternCodeableConcept.coding.code = #hospitalization-hdp
* type[inpatient-care-segment] ^patternCodeableConcept.coding.system = $il-core-encounter-type
* type[inpatient-care-segment] ^patternCodeableConcept.coding.code = #inpatient-care-segment-hdp
* type[community-hmo-ambulatory] ^patternCodeableConcept.coding.system = $il-core-encounter-type
* type[community-hmo-ambulatory] ^patternCodeableConcept.coding.code = #community-hmo-ambulatory-hdp
