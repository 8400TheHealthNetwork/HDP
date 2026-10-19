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
* meta.tag[dependentDiscovery] ^definition = "Selects the dependent-discovery profile requirements independently of meta.profile. The HMO SHALL preserve this tag in projected discovery responses. Remove the tag when a still-active relationship is no longer eligible for discovery; keep active=true. Inactive discovery records may retain the tag. Untagged records do not establish eligibility under this contract."

* identifier ^short = "Identifiers of the representative, not the dependent"
* identifier ^definition = "Identifiers identify the representative. At least one SHALL have an actual value and a supported Israeli national-ID, Palestinian national-ID (pna-id), issuing-country passport system, or the exact synthetic test system http://fhir.health.gov.il/identifier/il-hdp-test-id with value 1 or 2. Inherited IL Core identifier constraints and HDP strong-identifier requirements apply."
* active 1..1
* active ^short = "Whether the discovery relationship record is in active use"
* active ^comment = "The HMO maintains this record's active state. PCM requires an actual true value together with the discovery tag and a supported relationship on the same record; it does not evaluate period. When discovery eligibility ends, for example because the dependent passes the applicable legal age, remove the discovery tag rather than inactivating a still-active relationship. Active does not grant clinical access or authority to approve Consent."
* patient.reference 1..1
* patient.reference obeys hdp-discovery-local-patient
* patient ^short = "The dependent's HDP Patient at the same HMO"
* patient ^definition = "The dependent's Patient record at the HMO exposing this relationship. A resolvable same-server relative Patient/{id} reference is required; identifier-only, contained and cross-server references do not satisfy this contract. The HMO SHALL verify resolution to the dependent."
* relationship 1..*
* relationship from $vs-il-hdp-dependent-discovery-relationship-type (required)
* relationship.coding 1..*
* relationship.coding.system 1..1
* relationship.coding.code 1..1
* relationship.coding obeys hdp-discovery-relationship-coding
* relationship ^comment = "Only parent (PRN) and guardian (GUARD) from v3-RoleCode are supported for dependent discovery. Multiple relationship concepts may describe a pair. Other relationship types do not establish discovery eligibility."
