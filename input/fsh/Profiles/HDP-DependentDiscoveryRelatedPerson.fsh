Profile: ILHDPDependentDiscoveryRelatedPerson
Parent: ILHDPRelatedPerson
Id: il-hdp-dependent-discovery-related-person
Title: "ILHDP RelatedPerson for HMO Dependent Discovery"
Description: "HMO-maintained representative-to-patient relationship for PCM dependent discovery. The resource tag identifies this profile independently of meta.profile. Additional content permitted by ILHDPRelatedPerson remains allowed in the complete resource."
* insert ConformanceMetadata
* . ^short = "ILHDP RelatedPerson for HMO Dependent Discovery"
* . ^definition = "An HMO-maintained relationship between a representative and a dependent HDP Patient, identified by the dependent-discovery resource tag and used as evidence in PCM dependent discovery."
* . obeys hdp-discovery-identifier and hdp-discovery-active and hdp-discovery-test-security-label
* . ^comment = "Expose one logical discovery relationship record per representative/dependent pair at the dependent's HMO. The same representative identifier can occur on records for several dependents. The representative need not have a Patient record at that HMO. Profile conformance and the resource tag do not grant clinical access or authority to approve Consent."
* id 1..1

* meta.tag ^slicing.discriminator[0].type = #value
* meta.tag ^slicing.discriminator[0].path = "system"
* meta.tag ^slicing.discriminator[1].type = #value
* meta.tag ^slicing.discriminator[1].path = "code"
* meta.tag ^slicing.rules = #open
* meta.tag contains dependentDiscovery 1..1
* meta.tag[dependentDiscovery].system 1..1
* meta.tag[dependentDiscovery].system = $hdp-resource-tags (exactly)
* meta.tag[dependentDiscovery].code 1..1
* meta.tag[dependentDiscovery].code = #hmo-dependent-discovery (exactly)
* meta.tag[dependentDiscovery] ^short = "Record maintained for HMO dependent discovery"
* meta.tag[dependentDiscovery] ^definition = "Selects the dependent-discovery profile requirements independently of meta.profile. The HMO SHALL retain this tag on active and inactive discovery records and in projected discovery responses. Untagged records do not establish eligibility under this contract."

* identifier ^short = "Identifiers of the representative, not the dependent"
* identifier ^definition = "Identifiers identify the representative. At least one SHALL have an actual value and a supported Israeli national-ID, Palestinian national-ID (pna-id), issuing-country passport system, or the exact synthetic test system http://fhir.health.gov.il/identifier/il-hdp-test-id with value 1 or 2. Inherited IL Core identifier constraints and HDP strong-identifier requirements apply."
* active 1..1
* active ^short = "Whether the discovery relationship record is in active use"
* active ^comment = "The HMO maintains this record's active state under the current discovery-eligibility rules, including applicable periods, age/role conditions and revocations. PCM requires an actual true value together with an eligible relationship on the same record; it does not evaluate period. An inactive discovery record does not assert that a biological relationship has ended. Active does not grant clinical access or authority to approve Consent."
* patient.reference 1..1
* patient.reference obeys hdp-discovery-local-patient
* patient ^short = "The dependent's HDP Patient at the same HMO"
* patient ^definition = "The dependent's Patient record at the HMO exposing this relationship. A resolvable same-server relative Patient/{id} reference is required; identifier-only, contained and cross-server references do not satisfy this contract. The HMO SHALL verify resolution to the dependent."
* relationship 1..*
* relationship.coding 1..*
* relationship.coding.system 1..1
* relationship.coding.code 1..1
* relationship.coding obeys hdp-discovery-relationship-coding
* relationship ^comment = "Retains the inherited required IL Core patient-relationship-type binding. Multiple relationship concepts may describe a pair. The eligible subset and authoritative mappings are agreed with the PCM workflow owner; conformance to the broader national value set alone does not establish eligibility. Unknown or unmapped roles fail closed."

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
