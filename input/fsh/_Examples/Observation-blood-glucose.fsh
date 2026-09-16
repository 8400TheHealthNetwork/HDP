Instance: blood-glucose
InstanceOf: ILHDPObservationLab
Title: "Example ILHDP Observation Blood Glucose"
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

* status = #final
* category[0].coding[0].system = $obs-cat
* category[0].coding[0].code = #laboratory
* category[0].coding[0].display = "Laboratory"
* category[il-core].coding[0].system = $sct
* category[il-core].coding[0].code = #108252007
* category[il-core].coding[0].display = "Laboratory procedure"

* code.coding[0].system = $loinc
* code.coding[0].code = #2339-0
* code.coding[0].display = "Glucose [Mass/volume] in Blood"

* subject.identifier.system = "http://fhir.health.gov.il/identifier/il-national-id"
* subject.identifier.value = "000000018"
* subject.reference = "Patient/example"
* encounter = Reference(Encounter/example)

* effectiveDateTime = "2025-09-10T09:30:00+02:00"
* issued = "2025-09-10T10:00:00+02:00"

* performer[0] = Reference(Practitioner/example)
* performer[1] = Reference(Organization/example)

* specimen = Reference(Specimen/example)

* device = Reference(Device/example)

* valueQuantity.value = 110
* valueQuantity.unit = "mg/dL"
* valueQuantity.system = $ucum
* valueQuantity.code = #mg/dL

* referenceRange[0].low.value = 70
* referenceRange[0].low.unit = "mg/dL"
* referenceRange[0].low.system = $ucum
* referenceRange[0].low.code = #mg/dL
* referenceRange[0].high.value = 100
* referenceRange[0].high.unit = "mg/dL"
* referenceRange[0].high.system = $ucum
* referenceRange[0].high.code = #mg/dL

