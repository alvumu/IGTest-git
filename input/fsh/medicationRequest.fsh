// ------------------ Aliases ------------------------------------
Alias: SCT = http://snomed.info/sct
Alias: FHIR = http://hl7.org/fhir
Alias: FHIR_MedicationRequest = http://hl7.org/fhir/StructureDefinition/MedicationRequest
Alias: FHIR_Patient = http://hl7.org/fhir/StructureDefinition/Patient
Alias: FHIR_Encounter = http://hl7.org/fhir/StructureDefinition/Encounter
Alias: FHIR_Practitioner = http://hl7.org/fhir/StructureDefinition/Practitioner
Alias: FHIR_PractitionerRole = http://hl7.org/fhir/StructureDefinition/PractitionerRole
Alias: FHIR_Organization = http://hl7.org/fhir/StructureDefinition/Organization
Alias: FHIR_Device = http://hl7.org/fhir/StructureDefinition/Device
Alias: FHIR_CodeableConcept = http://hl7.org/fhir/StructureDefinition/CodeableConcept
Alias: MedReqAdminLocCS = http://terminology.hl7.org/CodeSystem/medicationrequest-admin-location 
Alias: AbsentOrUnknownVS = https://hl7.org/fhir/uv/ips/ValueSet-absent-or-unknown-medications-uv-ips.html

// URLs for Medication ValueSets
Alias: MedicationVS_URL = http://testSK.org/ValueSet/medication-vs
Alias: MedicationCS_URL = http://testSK.org/CodeSystem/medication-cs

ValueSet: MedicationVS
Id: medication-vs
* ^url = MedicationVS_URL
* ^version = "1.0.0"
* ^name = "MedicationVS"
* ^title = "Medications ValueSet"
* ^description = "SNOMED CT codes for drug products or substances."
* ^status = #draft
* include SCT#372756006 "Warfarin (substance)"
* include SCT#372586001 "Hypotensive agent (substance)"
* include SCT#372862008 "Anticoagulant (substance)"
* include SCT#312263009 "Sex hormone (substance)"
* include SCT#372912004 "Substance with 3-hydroxy-3-methylglutaryl-coenzyme A reductase inhibitor mechanism of action (substance)"
* include SCT#387458008 "Aspirin (substance)"
* include SCT#386952008 "Clopidogrel (substance)"
* include SCT#372877000 "Heparin (substance)"
* include codes from system MedicationCS_URL
* include codes from valueset AbsentOrUnknownVS


CodeSystem: MedicationCS
Id: medication-cs
* ^url = MedicationCS_URL
* ^version = "1.0.0"
* ^name = "MedicationCS"
* ^title = "Medications CodeSystem"
* ^description = "Codes for drug products or substances representing the Medications on the patient discharge."
* ^status = #draft
* #other-anticoagulant "Other Anticoagulant" "Any anticoagulant medication"
* #antiplatelet "Any Antiplatelet" "Any antiplatelet medication"
* #antidiabetic "Any Antidiabetic" "Any antidiabetic medication"
* #other "Other Medication" "A medication other than those specifically listed was prescribed at discharge"
* #other-antiplatelet "Other Antiplatelet" "Other Antiplatelet"


// ------------------ Profile: Discharge Medication Request (Updated) -----------------------

Profile: DischargeMedicationRequestProfile
Id: discharge-medication-request-profile
Parent: FHIR_MedicationRequest
* ^url = "http://testSK.org/StructureDefinition/discharge-medication-request-profile"
* ^version = "1.0.0"
* ^name = "DischargeMedicationRequestProfile"
* ^title = "Discharge Medication Request Profile"
* ^status = #active
* ^description = "Represents a medication prescription made as part of the patient's discharge plan, categorized as community administration." 


* status = #active
* status MS


* category = MedReqAdminLocCS#community
* category 1..1 MS 

* medication 1..1 MS
* medication from MedicationVS (required)
* subject 1..1 MS
* subject only Reference(FHIR_Patient)

* encounter 1..1 MS
* encounter only Reference(FHIR_Encounter)

* authoredOn 0..1 MS


Instance: DischargeMedicationRequest
InstanceOf: DischargeMedicationRequestProfile
* id = "discharge-medication-request-001"
* status = #active
* category = MedReqAdminLocCS#community
* medication = SCT#372756006 "Warfarin (substance)"
* intent = #order // Intent for discharge medication request
* subject = Reference(PatientExample) // Reference to the patient
* encounter = Reference(StrokeEncounterExample) // Reference to the stroke encounter
