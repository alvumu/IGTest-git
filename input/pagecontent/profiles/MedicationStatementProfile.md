---
title: Prior Medication Statement Profile (R5)
layout: default
---

# PriorMedicationStatementProfile (MedicationStatement)

**URL:** http://testSK.org/StructureDefinition/prior-medication-statement-profile  
**Version:** 1.0.0 · **Status:** active · **Experimental:** true  
**Base:** MedicationStatement (FHIR R5)

**Purpose:** Represents a statement about the patient’s **medication use before the index event** (e.g., before stroke onset or prior to admission), supporting therapy/finding style codings and adherence.

## Must Support
`medication[x]`, `subject`, `reason[x]`, `adherence`, `adherence.code`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `MedicationStatement.medication[x]` | 1..1 | ✓ | **Required** binding to `MedicationStatementMedsCodesVS` |
| `MedicationStatement.subject` | 1..1 | ✓ | `Reference(Patient)` |
| `MedicationStatement.reason[x]` | 0..* | ✓ | `CodeableReference(Condition or Observation or DiagnosticReport)` |
| `MedicationStatement.adherence` | 0..1 | ✓ | If present, `adherence.code` is required |
| `MedicationStatement.adherence.code` | 1..1 | ✓ | **Required** binding to `http://hl7.org/fhir/ValueSet/medication-statement-adherence` |
| `MedicationStatement.status` | 0..1 |  | Use according to R5 (e.g., `recorded`) |

> **Adherence coding (R5):** Use codes from `http://hl7.org/fhir/CodeSystem/medication-statement-adherence` such as `taking`, `not-taking`, etc.

## Example (excerpt)
- **Instance:** `PriorMedicationStatementExample`  
  - `medication = SCT#722045009 "Warfarin therapy (procedure)"`  
  - `subject = Reference(PatientExample)`  
  - `reason = Reference(StrokeDiagnosisConditionExample)`  
  - `adherence.code = http://hl7.org/fhir/CodeSystem/medication-statement-adherence#taking`  
  - `status = recorded`


