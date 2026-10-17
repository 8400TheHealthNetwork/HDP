# ILHDP RelatedPerson for HMO Dependent Discovery

**Artifact:** StructureDefinition/il-hdp-dependent-discovery-related-person

**Canonical URL:** `http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-dependent-discovery-related-person`

**Parent:** [ILHDPRelatedPerson](https://simplifier.net/hdp-il/ILHDPRelatedPerson), derived from [ILCoreRelatedPerson](https://simplifier.net/ilcore/ILCoreRelatedPerson)

## Overview

After successful PCM portal authentication through GovID or home-HMO-assisted OTP, PCM queries participating HMOs for relationships between the authenticated representative and candidate dependent Patients. This profile defines the HMO-maintained RelatedPerson records used as discovery evidence. The representative need not have a Patient record at the dependent's HMO.

The [PCM Authentication and Dependent Discovery Implementation Guide](https://simplifier.net/pcm-il/simplifier-docs-pcm-authentication-and-dependent-discovery-implementation-guide) defines the process, Patient authentication prerequisites, searches, response projections, eligibility checks and authorization boundaries. Patient continues to use the existing [ILHDPPatient](https://simplifier.net/hdp-il/ILHDPPatient) profile; the additional HMO authentication prerequisites do not change that profile's cardinalities or apply to every HDP provider.

## Profile selection

Require exactly one `meta.tag` entry with this system/code pair, defined by [IL HDP Resource Tags](https://simplifier.net/ilcore/il-hdp-resource-tags):

```json
{
  "system": "http://fhir.health.gov.il/cs/il-hdp-resource-tags",
  "code": "hmo-dependent-discovery"
}
```

The tag means that the HMO maintains the relationship record under the dependent-discovery contract. Tagged RelatedPerson resources SHALL conform to this profile independently of any `meta.profile` declaration. The HMO SHALL preserve the tag in discovery projections and retain it on inactive records. Additional tags are allowed. An untagged record, or a tagged record that fails the required checks, cannot establish discovery eligibility.

The tag selects the applicable requirements; it does not establish current eligibility, clinical-access permission or authority to approve Consent. It is separate from the inherited `patientDemographics` security label, which remains required.

## Required content

| Element | Requirement |
| --- | --- |
| `id` | Stable logical identity for the relationship record. |
| `meta` | Inherited HDP metadata and security labels, plus the resource tag above. |
| `identifier` | Identifies the representative, not the dependent. At least one actual value with the Israeli national-ID system, Palestinian national-ID system (`http://fhir.health.gov.il/identifier/pna-national-id`, inherited `pna-id` slice), an issuing-country passport system in the IL Core [passport URI value set](https://simplifier.net/ilcore/passport-uri), or `http://fhir.health.gov.il/identifier/il-hdp-test-id` with value `1` or `2`. Inherited identifier constraints apply. |
| `patient.reference` | Resolvable relative `Patient/{id}` reference to the dependent's [ILHDPPatient](https://simplifier.net/hdp-il/ILHDPPatient) on the same HMO server. Identifier-only, contained and cross-server references are insufficient. |
| `active` | An actual boolean is required; DAR is insufficient. `false` records remain valid instances of this profile but cannot establish current discovery eligibility. |
| `relationship` | One or more coded concepts, each with an actual coding system and code. The inherited required IL Core [patient relationship type](https://simplifier.net/ilcore/patient-relationship-type) binding applies. |

Synthetic integration-test records SHALL carry `http://terminology.hl7.org/CodeSystem/v3-ActReason|HTEST` and refer only to synthetic Patients. HMO interface support for synthetic identifiers does not permit synthetic PCM portal login; the existing authorization and trusted-context requirements still apply.

Expose one logical discovery record per representative/dependent pair. The representative identifier may occur on records for multiple dependents, and multiple relationship concepts may describe a pair. The HMO must enforce pair uniqueness, stable identity and reference resolution; resource validation alone cannot establish these server-level properties.

The HMO maintains the discovery record's active state as applicable periods, age/role conditions and revocations change. PCM checks `active=true` and an eligible relationship on the same tagged record; it does not evaluate `period`. The eligible relationship subset and authoritative mappings are agreed with the PCM workflow owner. Membership in the broader national relationship value set does not establish eligibility, and unknown or unmapped roles fail closed. An inactive discovery record does not assert that a biological relationship has ended. Current authority must be checked separately before sensitive representative actions.

## Complete resources and response projections

This is a complete-resource profile. Other fields allowed by ILHDPRelatedPerson, including name, telecom, address and period, remain allowed; they are not prohibited merely because discovery does not request them. The resource also conforms to ILHDPRelatedPerson, so an additional duplicate resource is not required solely because of the child profile.

PCM receives the agreed search projection rather than all optional content. Preserve the resource tag, resource identity, mandatory and modifier elements, and required security/processing metadata. Apply the standard SUBSETTED marker when appropriate, and do not use a projected response as a complete replacement. Follow the linked PCM guide for the exact requests and response rules.

## Examples

- [Active guardian](https://simplifier.net/hdp-il/hdp-dependent-discovery-guardian): includes optional name and telecom content in the complete record.
- [Inactive parent record](https://simplifier.net/hdp-il/hdp-dependent-discovery-inactive-parent): retains the discriminator tag while remaining ineligible for discovery.
