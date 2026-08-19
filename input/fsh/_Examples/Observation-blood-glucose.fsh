Instance: blood-glucose
InstanceOf: ILHDPObservationLab
Title: "Example ILHDP Observation Lab Blood Glucose"
Description: "Demonstrates ILHDP ObservationLab profile with meta, identifiers, subject, encounter, performer, specimen, and device"

* text.status = #generated
* text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Blood glucose measurement: 110 mg/dL</p>
</div>
"""

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #laboratoryTests
* meta.security[HDP].display = "בדיקות מעבדה"

* identifier[0].system = "http://hospital.hospitaliala.org/observations"
* identifier[0].value = "OBS-2025-0001"
* identifier[0].type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

* status = #final
* category[il-core].coding.system = "http://snomed.info/sct"
* category[il-core].coding.code = #108252007
* category[il-core].coding.display = "Laboratory procedure"

* code.coding[0].system = $loinc
* code.coding[0].code = #2339-0
* code.coding[0].display = "Glucose [Mass/volume] in Blood"

* subject = Reference(Patient/patient-with-israeli-id)
* subject.identifier.system = $il-id
* subject.identifier.value = "000000018"
* encounter = Reference(Encounter/example)

* effectiveDateTime = "2025-09-10T09:30:00+02:00"
* issued = "2025-09-10T10:00:00+02:00"

* performer[0] = Reference(Practitioner/example)
* performer[1] = Reference(Organization/example)

* specimen = Reference(Specimen/serum-patient)

* device = Reference(Device/example)

* valueQuantity.value = 110
* valueQuantity.unit = "mg/dL"
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/dL

* referenceRange.low = 70 'mg/dL' "mg/dL"
* referenceRange.high = 140 'mg/dL' "mg/dL"
