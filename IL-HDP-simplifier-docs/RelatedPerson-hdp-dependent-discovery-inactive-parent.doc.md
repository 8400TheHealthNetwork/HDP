# HMO Dependent Discovery - Inactive Parent Record

This complete [ILHDPDependentDiscoveryRelatedPerson](https://simplifier.net/hdp-il/ILHDPDependentDiscoveryRelatedPerson) example identifies representative `000000034` as a parent of `Patient/patient-with-israeli-id` on the same server.

The `hmo-dependent-discovery` tag from [IL HDP Resource Tags](https://simplifier.net/ilcore/il-hdp-resource-tags) remains present while `active=false`. The record still conforms to the discovery profile but cannot establish current discovery eligibility. The record itself is no longer in active use. Retaining the parent code does not imply ongoing authority to represent the patient. To preserve a still-active relationship that has only lost discovery eligibility, remove the discovery tag instead of setting `active=false`; see the [active parent outside discovery](https://simplifier.net/hdp-il/hdp-related-person-parent-outside-discovery) example.
