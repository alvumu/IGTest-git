// ------------------ Aliases ------------------------------------
Alias: SCT = http://snomed.info/sct
Alias: FHIR = http://hl7.org/fhir
Alias: UCUM = https://ucum.org/ucum
// Alias R5 Adherence CodeSystem/ValueSet
Alias: MedStatementAdherenceVS_URL = http://hl7.org/fhir/ValueSet/medication-statement-adherence

Alias: MedicationVS_URL = http://testSK.org/ValueSet/medication-vs
Alias: MedicationCS_URL = http://testSK.org/CodeSystem/medication-cs

// FHIR R5 Resource Aliases
Alias: MedicationStatement = http://hl7.org/fhir/StructureDefinition/MedicationStatement
Alias: Patient = http://hl7.org/fhir/StructureDefinition/Patient
Alias: Practitioner = http://hl7.org/fhir/StructureDefinition/Practitioner
Alias: PractitionerRole = http://hl7.org/fhir/StructureDefinition/PractitionerRole
Alias: RelatedPerson = http://hl7.org/fhir/StructureDefinition/RelatedPerson
Alias: Organization = http://hl7.org/fhir/StructureDefinition/Organization
Alias: Condition = http://hl7.org/fhir/StructureDefinition/Condition



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
* include SCT#1237404009 "Uses hormone method of contraception (finding)"
* include SCT#372912004 "Substance with 3-hydroxy-3-methylglutaryl-coenzyme A reductase inhibitor mechanism of action (substance)"
* include SCT#372756006 "Warfarin (substance)"
* include SCT#387458008 "Aspirin (substance)"
* include SCT#386952008 "Clopidogrel (substance)"
* include SCT#372877000 "Heparin (substance)"
* include codes from system MedicationCS_URL
* include codes from valueset AbsentOrUnknownVS


CodeSystem: MedicationCS
Id: medication-cs
* ^url = MedicationCS_URL
* ^version = "1.0.0"
* ^name = "DischargeMedicationCS"
* ^title = "Medications CodeSystem"
* ^description = "Codes for drug products or substances representing the Medications on the patient discharge."
* ^status = #draft
* #other-anticoagulant "Other Anticoagulant" "Any anticoagulant medication"
* #antiplatelet "Any Antiplatelet" "Any antiplatelet medication"
* #antidiabetic "Any Antidiabetic" "Any antidiabetic medication"
* #other "Other Medication" "A medication other than those specifically listed was prescribed at discharge"
* #other-antiplatelet "Other Antiplatelet" "Other Antiplatelet"

// ValueSet: DischargeMedicationVS
// Id: discharge-medication-vs
// * ^url = "http://testSK.org/ValueSet/discharge-medication-vs"
// * ^version = "1.0.0"
// * ^name = "DischargeMedicationVS"
// * ^title = "Medications ValueSet"
// * ^description = "Codes for drug products or substances representing the Medications on the patient discharge."
// * ^status = #draft
// *   include codes from system MedicationCS_URL
// *   include codes from valueset AbsentOrUnknownVS
// * include codes from system MedStatementMedsCS_URL


// ------------------ Perfil Unificado: Declaración de Medicación Previa (FHIR R5) ---
Profile: PriorMedicationStatementProfile
Id: prior-medication-statement-profile
Parent: MedicationStatement // Base R5 MedicationStatement
* ^fhirVersion = #5.0.0 // Explicitly state R5 base
* ^url = "http://testSK.org/StructureDefinition/prior-medication-statement-profile"
* ^version = "1.0.0"
* ^name = "PriorMedicationStatementProfile"
* ^title = "Prior Medication Statement Profile (R5)" // Indicate R5
* ^experimental = true
* ^status = #active
* ^description = "Represents a statement about the patient's medication use *before* the index event." 

// Key fields for prior medication reporting
* medication 1..1 MS
* medication from MedStatementMedsVS_URL (required)
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 1..1 MS
* encounter only Reference(Encounter)
* reason 0..* MS 
* reason only CodeableReference(Condition or Observation or DiagnosticReport) // Allowed targets for reason in R5
* status 1..1 MS
// Adherence field to represent Taking / Not Taking in R5
* adherence 0..1 MS // Make the adherence block optional but supported
* adherence.code 1..1 MS // If adherence block is present, code is mandatory
* adherence.code from http://hl7.org/fhir/ValueSet/medication-statement-adherence (required) // Bind to the R5 standard VS

Instance: PriorMedicationStatementExample
InstanceOf: PriorMedicationStatementProfile
* medication = SCT#722045009 "Warfarin therapy (procedure)"
* subject = Reference(PatientExample) // Reference to the patient
* reason = Reference(StrokeDiagnosisConditionExample)
* adherence.code = http://hl7.org/fhir/CodeSystem/medication-statement-adherence#taking // Using R5 adherence codes
* status = #recorded // Status of the prior medication statement
* encounter = Reference(EncounterExample)

