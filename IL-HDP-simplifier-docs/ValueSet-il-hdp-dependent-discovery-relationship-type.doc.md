# ILHDP Dependent Discovery Relationship Type

**Artifact:** ValueSet/il-hdp-dependent-discovery-relationship-type

**Canonical URL:** `http://hdp.fhir.health.gov.il/ValueSet/il-hdp-dependent-discovery-relationship-type`

Required relationship value set for [HMO dependent discovery](https://simplifier.net/hdp-il/ILHDPDependentDiscoveryRelatedPerson).

| System | Code | Relationship |
| --- | --- | --- |
| `http://terminology.hl7.org/CodeSystem/v3-RoleCode` | `PRN` | Parent |
| `http://terminology.hl7.org/CodeSystem/v3-RoleCode` | `GUARD` | Guardian |

Only these two codes are included. Relationship conformance alone does not establish discovery eligibility: the same record must also carry the discovery tag and have `active=true`. Current authority for Consent actions is checked separately.
