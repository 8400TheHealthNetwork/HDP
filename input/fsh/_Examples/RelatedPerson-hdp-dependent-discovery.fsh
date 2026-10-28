Instance: hdp-dependent-discovery-guardian
InstanceOf: ILHDPDependentDiscoveryRelatedPerson
Usage: #example
Title: "HMO Dependent Discovery - Active Guardian"
Description: "An active guardian discovery record, including optional name and telecom data allowed in the complete resource. PCM discovery projects only the agreed fields and metadata."
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #patientDemographics
* meta.security[HDP].display = "דמוגרפיה"
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
Description: "An inactive parent relationship record that retains the discovery tag. This record cannot establish discovery eligibility. A still-active relationship withdrawn only from discovery instead keeps active=true and loses the tag."
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #patientDemographics
* meta.security[HDP].display = "דמוגרפיה"
* meta.tag[dependentDiscovery] = $hdp-resource-tags#hmo-dependent-discovery
* identifier[il-id].system = $il-id
* identifier[il-id].value = "000000034"
* identifier[il-id].type.coding = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id
* active = false
* patient = Reference(patient-with-israeli-id)
* relationship = $v3-RoleCode#PRN "parent"

Instance: hdp-related-person-parent-outside-discovery
InstanceOf: ILHDPRelatedPerson
Usage: #example
Title: "Active Parent Relationship Outside Dependent Discovery"
Description: "A still-active parent relationship preserved after the dependent passes the applicable legal age for discovery. The discovery tag is absent, so the record cannot establish discovery eligibility."
* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #patientDemographics
* meta.security[HDP].display = "דמוגרפיה"
* identifier[il-id].system = $il-id
* identifier[il-id].value = "000000034"
* identifier[il-id].type.coding = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id
* active = true
* patient = Reference(patient-with-israeli-id)
* relationship = $v3-RoleCode#PRN "parent"
