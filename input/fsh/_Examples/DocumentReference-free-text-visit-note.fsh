Instance: free-text-visit-note
InstanceOf: ILHDPDocumentReference
Title: "Example ILHDP DocumentReference Free-Text Visit Note"
Description: "Demonstrates a general free-text visit note represented inline in DocumentReference.content.attachment.data as Base64-encoded plain text"
Usage: #example

* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>DocumentReference example for general free text from a visit sheet, represented as Base64-encoded plain text.</p></div>"

* meta.security[HDP].system = $info-buckets
* meta.security[HDP].code = #clinicalNotes
* meta.security[HDP].display = "סיכומים"

* identifier[0].system = "http://hospital.hospitliala.org/documents"
* identifier[0].value = "DOCREF-TEXT-2026-0001"
* identifier[0].type = http://fhir.health.gov.il/cs/il-core-identifier-type#strong-id

* status = #current
* subject = Reference(Patient/patient-with-israeli-id)

* author[0] = Reference(PractitionerRole/gp)
* author[1] = Reference(Organization/HMO1)

* authenticator = Reference(PractitionerRole/gp)

* type = $loinc#11488-4 "Consult note"

* date = "2026-06-28T10:30:00+03:00"

* content[0].attachment.contentType = #text/plain
* content[0].attachment.data = "15TXnteY15XXpNecINeU15LXmdeiINec15HXmden15XXqCDXnteo16TXkNeq15kg15HXqtec15XXoNeUINei15wg15vXkNeR15kg16jXkNepINeV16HXl9eo15fXldeo16og16fXnNeUINeR157XqdeaIDMg15nXnteZ150uDQrXkdeR15PXmden15Qg15LXldek16DXmdeqOiDXntem15Eg15vXnNec15kg15jXldeRLCDXoteo16DXmSDXldee16nXqtejINek16LXldec15QuINec15fXpSDXk9edIDEyMC84MCDXnteeItebLCDXk9eV16TXpyA3MiDXnNeT16fXlCwg15fXldedIDM2Ljcg157Xotec15XXqi4NCteo15nXkNeV16og16DXp9eZ15XXqiwg15HXmNefINeo15vXlCDXnNec15Ag16jXkteZ16nXldeqLg0K15TXldee15zXpSDXotecINee16DXldeX15QsINep16rXmdeZ15Qg157XqNeV15HXlCDXldep15nXnteV16kg15HXkNen157XldecINec16TXmSDXlNem15XXqNeaLg0K15TXldeh15HXqNeVINeh15nXnteg15kg15DXlteU16jXlCDXldeg16fXkdeiINeR15nXp9eV16gg15fXldeW16gg16rXldeaINep15HXldeiINeQ150g15zXkCDXmdeX15XXnCDXqdeZ16TXldeoLg=="
* content[0].attachment.creation = "2026-06-28T10:15:00+03:00"
