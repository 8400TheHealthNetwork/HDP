Instance: hdp-med-stmt-no-dose-and-rate
InstanceOf: ILHDPMedicationStatement
Title: "HDP MedicationStatement - Data Absent Reason on dosage.doseAndRate"
Description: "Fluoxetine medication statement with known route and timing, but unknown dose and rate, represented by a data-absent-reason extension on dosage.doseAndRate."
Usage: #example

* id = "hdp-med-stmt-no-dose-and-rate"
* meta.profile = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-medication-statement"
* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

// Chronic course of therapy; stopped with a complete effectivePeriod.
* extension[courseOfTherapyType].url = "http://fhir.health.gov.il/StructureDefinition/ext-medication-course-of-therapy-type"
* extension[courseOfTherapyType].valueCodeableConcept.coding.system = "http://fhir.health.gov.il/cs/il-core-medication-course-of-therapy-type"
* extension[courseOfTherapyType].valueCodeableConcept.coding.code = #chronic

* identifier[0].id = "med-statement"
* identifier[0].system = "http://goodcare.org/med-stat/id"
* identifier[0].value = "med-statement-no-dose-and-rate-001"
* identifier[0].type.coding.system = "http://fhir.health.gov.il/cs/il-core-identifier-type"
* identifier[0].type.coding.code = #strong-id

* status = #stopped
* category.coding.system = "http://fhir.health.gov.il/cs/il-core-medication-request-category"
* category.coding.code = #community-other
* category.coding.display = "Community Care/Long Term Care/Home"
* medicationCodeableConcept.coding.system = "http://snomed.info/sct"
* medicationCodeableConcept.coding.code = #372767007
* medicationCodeableConcept.coding.display = "Fluoxetine (substance)"
* subject = Reference(Patient/patient-with-israeli-id)
* context = Reference(Encounter/123)
* informationSource = Reference(Practitioner/1)
* dateAsserted = "2022-07-30"
* effectivePeriod.start = "2022-10-05"
* effectivePeriod.end = "2022-10-10"

// The administration route and timing are known.
* dosage[0].text = "By mouth every morning; dose and rate are unknown."
* dosage[0].route.coding.system = "http://snomed.info/sct"
* dosage[0].route.coding.code = #26643006
* dosage[0].route.coding.display = "Oral route"
* dosage[0].method.coding.system = "http://snomed.info/sct"
* dosage[0].method.coding.code = #738995006
* dosage[0].method.coding.display = "Swallow (administration method)"
* dosage[0].timing.repeat.when[0] = #MORN

