Profile: ILHDPEpisodeOfCare
Parent: ILCoreEpisodeOfCare
Id: il-hdp-episode-of-care
Title: "ILHDP EpisodeOfCare Profile"
Description: "HDP constraints for EpisodeOfCare with security tagging. Used to represent clinically related encounter series and other episode-level context in the HDP model."

* ^url = "http://hdp.fhir.health.gov.il/StructureDefinition/il-hdp-episode-of-care"
* insert ConformanceMetadata
* . obeys one-strong-identifier
* ^status = #draft

* meta only ILHDPMeta
* meta 1..1
* meta.security[HDP].system = $info-buckets (exactly)
* meta.security[HDP].code = #encounterInformation (exactly)
* meta.security[HDP].display = "ביקורים" (exactly)
* identifier 1..*

* diagnosis.condition only Reference(ILCoreCondition or $ILHDPCondition)
* patient only Reference($ILHDPPatient)
* managingOrganization only Reference(ILCoreOrganization or $ILHDPOrganization)
* referralRequest only Reference(ILCoreServiceRequest or $ILHDPServiceRequest)
* careManager only Reference(ILCorePractitioner or ILCorePractitionerRole or $ILHDPPractitioner or $ILHDPPractitionerRole)
* team only Reference(ILCoreCareTeam or $ILHDPCareTeam)
