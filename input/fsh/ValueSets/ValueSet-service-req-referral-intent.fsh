ValueSet: ILHDPServiceRequestReferralIntent
Id: il-hdp-service-request-referral-intent
Title: "IL HDP ServiceRequest Referral Intent"
Description: "A restriction of the standard request-intent value set to order and its descendants, for use in representing referrals."

* ^url = $vs-il-hdp-service-request-referral-intent
* ^status = #active

* http://hl7.org/fhir/request-intent#order "Order"
* http://hl7.org/fhir/request-intent#original-order "Original Order"
* http://hl7.org/fhir/request-intent#reflex-order "Reflex Order"
* http://hl7.org/fhir/request-intent#filler-order "Filler Order"
* http://hl7.org/fhir/request-intent#instance-order "Instance Order"
* insert ConformanceMetadata
