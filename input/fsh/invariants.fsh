Invariant: prac-ident-enc
Description: "identifier must contain at least one member with either: 1.system = http://fhir.health.gov.il/identifier/encrypted-id-primary-moh; OR a system from PassportEncUri"
Expression: "identifier.where((system = 'http://fhir.health.gov.il/identifier/encrypted-id-primary-moh') or (system.memberOf('http://fhir.health.gov.il/ValueSet/passport-enc-uri'))).exists()"
Severity: #error

Invariant: prac-role-code-specialty 
Description: "Must contain at least 'code' or 'specialty'"
Expression: "code.exists() or specialty.exists()"
Severity: #error

Invariant: effective-start-end
Description: "effectivePeriod.start and effectivePeriod.end SHALL have a value if extension:courseOfTherapyType is 'continuous' and status is 'stopped'"
Expression: "status = 'stopped' and extension('http://fhir.health.gov.il/StructureDefinition/ext-medication-course-of-therapy-type').value.ofType(CodeableConcept).coding.where(system = 'http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy' and code = 'continuous').exists() implies (effectivePeriod.start.exists() and effectivePeriod.end.exists())"
Severity: #warning

Invariant: check-identifiers
Description: "Must have at least one identifier from slices 'il-id' or 'ppn'"
Expression: "identifier.where(system = 'http://fhir.health.gov.il/identifier/il-national-id' or system.memberOf('http://fhir.health.gov.il/ValueSet/passport-uri')).exists()"
Severity: #warning

Invariant: statuses-exist
Description: "The elements clinicalStatus and verificationStatus SHOULD exist, if possible"
Expression: "verificationStatus.exists() and clinicalStatus.exists()"
Severity: #warning

Invariant: ilhdp-allergy-category-required
Description: "category must be present unless code.coding contains SNOMED CT 716186003 (No known allergy), or code.text is present with no code.coding.code values."
Expression: "category.exists() or code.coding.where(system = 'http://snomed.info/sct' and code = '716186003').exists() or (code.text.exists() and code.coding.code.count() = 0)"
Severity: #error

Invariant: obs-lab-value-absent
Description: "Either Observation.value or Observation.dataAbsentReason must be present, but not both."
Expression: "(value.exists() xor dataAbsentReason.exists())"
Severity: #error

Invariant: medication-dose-rate-1
Description: "If this element is present, then at least one of its subelemnts: ['dose' or 'rate'] must be present."
Expression: "dose.exists() or rate.exists()"
Severity: #error

Invariant: one-strong-identifier
Description: "Every resource SHALL have exactly one (1) strong identifier, as defined by the Israeli HDP law"
// Severity: #error
Severity: #warning  // will change back to Error in the future, once decided. Kippi 11/11/25
Expression: "identifier.where(type.coding.where(system='http://fhir.health.gov.il/cs/il-core-identifier-type' and code='strong-id').exists()).count() = 1"

Invariant: one-strong-identifier-warning
Description: "Every resource SHOULD have exactly one (1) strong identifier, as defined by the Israeli HDP law"
Severity: #warning
Expression: "identifier.where(type.coding.where(system='http://fhir.health.gov.il/cs/il-core-identifier-type' and code='strong-id').exists()).count() = 1"

// Invariant: medication-dose-rate-2
// Description: "If dosage element is present, then at least one of its subelemnts: ['dose' or 'rate'] must be present."
// Expression: "dose.exists() or rate.exists()"
// Severity: #error

Invariant: ilhdp-enc-reason
Description: "Encounter must have a reasonCode or reasonReference."
Severity: #error
Expression: "reasonCode.exists() or reasonReference.exists()"

Invariant: ilhdp-enc-period-start
Description: "period.start must exist if status is not planned."
Severity: #error
Expression: "status = 'planned' or period.start.exists()"

Invariant: ilhdp-enc-finished-period
Description: "If status is finished then period.end or length must exist."
Severity: #error
Expression: "status != 'finished' or period.end.exists() or length.exists()"

Invariant: ilhdp-enc-ambulatory-period
Description: "For ambulatory encounters, at least one of period.start or period.end must be present."
Severity: #error
Expression: "period.start.exists() or period.end.exists()"

Invariant: ilhdp-enc-ambulatory-class-participant
Description: "If encounter class is ambulatory (AMB), at least one participant must be present."
Severity: #error
Expression: "class.where(code='AMB').exists() implies participant.exists()"

Invariant: ilhdp-community-virtual-class
Description: "If encounter type includes a virtual encounter, class must be VR."
Severity: #error
Expression: "type.where(coding.where(system='http://snomed.info/sct' and code='185316007').exists()).empty() or class.code = 'VR'"

Invariant: ilhdp-enc-face-to-face-exclusive
Description: "Face-to-face encounter type SHALL NOT be combined with virtual or without-patient-present types."
Severity: #error
Expression: "type.coding.where(system='http://snomed.info/sct' and code='1258986006').exists() implies (type.coding.where($this.memberOf('http://fhir.health.gov.il/ValueSet/il-core-virtual-type')).exists().not() and type.coding.where(system='http://fhir.health.gov.il/cs/il-core-encounter-type' and code='without-patient-present').exists().not())"
Invariant: ilhdp-enc-one-active-nursing-unit
Description: "No more than one active nursing-unit location entry is allowed at a time."
Severity: #error
Expression: "location.where(physicalType.coding.where(system='http://fhir.health.gov.il/cs/il-core-location-physical-type' and code='hospital-nursing-unit').exists() and status = 'active').count() <= 1"

Invariant: il-id-or-ppn
Description: "The identifier SHOULD contain at least one of the following slices: il-id or ppn"
Severity: #warning
Expression: "identifier.where(system = 'http://fhir.health.gov.il/identifier/il-national-id').exists() or identifier.where(system.startsWith('http://hl7.org/fhir/sid/passport')).exists()"

Invariant: il-dosage-dose-required-when-no-substeps
Description: "If ext-sub-dosage-step extension is NOT present on Dosage, doseAndRate SHALL be present."
Severity: #error
Expression: "extension('http://fhir.health.gov.il/StructureDefinition/ext-sub-dosage-step').exists().not() implies doseAndRate.exists()"

Invariant: hdp-discovery-identifier
Description: "A discovery record SHALL include a representative identifier with an actual value and an Israeli national-ID, Palestinian national-ID (pna-id), recognized issuing-country passport system, or one of the two exact synthetic test identifiers."
Severity: #error
Expression: "identifier.where(value.hasValue() and (system = 'http://fhir.health.gov.il/identifier/il-national-id' or system = 'http://fhir.health.gov.il/identifier/pna-national-id' or system.memberOf('http://fhir.health.gov.il/ValueSet/passport-uri') or (system = 'http://fhir.health.gov.il/identifier/il-hdp-test-id' and (value = '1' or value = '2')))).exists()"

Invariant: hdp-discovery-test-security-label
Description: "A discovery record carrying a synthetic test identifier SHALL carry HTEST."
Severity: #error
Expression: "identifier.where(system = 'http://fhir.health.gov.il/identifier/il-hdp-test-id').exists() implies meta.security.where(system = 'http://terminology.hl7.org/CodeSystem/v3-ActReason' and code = 'HTEST').exists()"

Invariant: hdp-discovery-active
Description: "Discovery requires an actual active boolean; a data-absent-reason extension is insufficient."
Severity: #error
Expression: "active.hasValue()"

Invariant: hdp-discovery-local-patient
Description: "The dependent reference SHALL have the relative form Patient/{id} on the same server."
Severity: #error
Expression: "hasValue() and matches('^Patient/[A-Za-z0-9.-]{1,64}$')"

Invariant: hdp-discovery-relationship-coding
Description: "A relationship coding SHALL contain actual system and code values."
Severity: #error
Expression: "system.hasValue() and code.hasValue()"
