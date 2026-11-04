
// =====================================================
// Contained ILCoreMedication
// =====================================================

Instance: medication-iv-mixture
InstanceOf: ILCoreMedication
Usage: #inline
Title: "Contained ILCoreMedication - Vancomycin 1000 mg in NaCl 0.9% 250 mL"
Description: "Prepared intravenous mixture referenced from an HDP MedicationRequest."

// Narrative
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Vancomycin 1000 mg in NaCl 0.9% 250 mL</p></div>"

// Active drug - Vancomycin
* ingredient[0].itemCodeableConcept.coding[0] = http://snomed.info/sct#372735009 "Vancomycin (substance)"
* ingredient[0].isActive = true
* ingredient[0].strength.numerator = 1000 'mg' "mg"
* ingredient[0].strength.denominator = 1 '1' "1"

// Diluent - Sodium chloride
* ingredient[1].itemCodeableConcept.coding[0] = http://snomed.info/sct#387390002 "Sodium chloride (substance)"
* ingredient[1].isActive = false
* ingredient[1].strength.numerator = 250 'mL' "mL"
* ingredient[1].strength.denominator = 1 '1' "1"



// =====================================================
// ILHDPMedicationRequest
// =====================================================

Instance: hdp-medication-request-contained-iv-mixture
InstanceOf: ILHDPMedicationRequest
Usage: #example
Title: "ILHDP MedicationRequest with contained ILCoreMedication IV mixture"
Description: "Vancomycin 1000 mg IV over 2 hours in 250 mL NaCl 0.9%."

// HDP metadata
* meta.profile[0] = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-medication-request"
* meta.security[HDP].system = "http://fhir.health.gov.il/cs/il-hdp-information-buckets"
* meta.security[HDP].code = #medications
* meta.security[HDP].display = "תרופות"

// Identifier
* identifier[0].type.coding[0] = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id "Strong Identifier"
* identifier[0].system = "http://fhir.health.gov.il/fhir/identifier/medication-request"
* identifier[0].value = "IV-MIX-ORDER-001"

// Narrative
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Vancomycin 1000 mg IV in NaCl 0.9% 250 mL, infused over two hours at 125 mL/h.</p></div>"

// MedicationRequest data
* status = #active
* intent = #order
* subject = Reference(Patient/example)
* requester = Reference(Practitioner/example)
* authoredOn = "2026-10-25"

// Contained ILCoreMedication
* contained[0] = medication-iv-mixture
* medicationReference = Reference(medication-iv-mixture)

// Administration
* dosageInstruction[0].text = "Vancomycin 1000 mg IV once over 2 hours in 250 mL NaCl 0.9%"
* dosageInstruction[0].route.coding[0] = http://snomed.info/sct#47625008 "Intravenous route"

// Duration
* dosageInstruction[0].timing.repeat.count = 1
* dosageInstruction[0].timing.repeat.duration = 2
* dosageInstruction[0].timing.repeat.durationUnit = #h

// Dose
* dosageInstruction[0].doseAndRate[0].doseQuantity = 1000 'mg' "mg"

// Infusion rate
* dosageInstruction[0].doseAndRate[0].rateQuantity = 125 'mL/h' "mL/h"
* courseOfTherapyType.coding.system = "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy"
* courseOfTherapyType.coding.code = #acute
* courseOfTherapyType.coding.display = "Short course (acute) therapy"