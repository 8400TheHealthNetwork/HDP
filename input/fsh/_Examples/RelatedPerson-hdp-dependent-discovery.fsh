Instance: hdp-dependent-discovery-guardian
InstanceOf: ILHDPDependentDiscoveryRelatedPerson
Usage: #example
Title: "HMO Dependent Discovery - Active Guardian"
Description: "An active guardian discovery record, including optional name and telecom data allowed in the complete resource. PCM discovery projects only the agreed fields and metadata."
* meta.tag[dependentDiscovery] = $hdp-resource-tags#hmo-dependent-discovery
* identifier[il-id].system = $il-id
* identifier[il-id].value = "000000026"
* identifier[il-id].type.coding = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id
* active = true
* patient = Reference(patient-with-israeli-id)
* relationship = $v3-RoleCode#GUARD "Guardian"
* name[English].family = "Cohen"
* name[English].given = "Alex"
* name[English].use = #official
* name[English].extension[language].valueCode = #en
* telecom.system = #phone
* telecom.value = "+972501234567"
* telecom.use = #mobile

Instance: hdp-dependent-discovery-inactive-parent
InstanceOf: ILHDPDependentDiscoveryRelatedPerson
Usage: #example
Title: "HMO Dependent Discovery - Inactive Parent Record"
Description: "A parent record no longer in active use for discovery. The resource tag remains present, and the parent relationship code is retained; this record cannot establish discovery eligibility."
* meta.tag[dependentDiscovery] = $hdp-resource-tags#hmo-dependent-discovery
* identifier[il-id].system = $il-id
* identifier[il-id].value = "000000034"
* identifier[il-id].type.coding = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id
* active = false
* patient = Reference(patient-with-israeli-id)
* relationship = $v3-RoleCode#PRN "parent"
