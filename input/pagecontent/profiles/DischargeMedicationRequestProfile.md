---
title: Discharge Medication Request Profile
layout: default
---

# DischargeMedicationRequestProfile (MedicationRequest)

**URL:** http://testSK.org/StructureDefinition/discharge-medication-request-profile  
**Version:** 1.0.0 · **Status:** active  
**Base:** MedicationRequest (R5)

**Purpose:** Represents a **medication prescription at discharge**, intended for **community** administration, and linked to the stroke encounter.

## Must Support
`status`, `category`, `medication[x]`, `subject`, `encounter`, `authoredOn`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `MedicationRequest.status` | 1..1 | ✓ | Fixed to `active` in examples; use standard status values |
| `MedicationRequest.category` | 1..1 | ✓ | Fixed to `medicationrequest-admin-location#community` (community administration) |
| `MedicationRequest.medication[x]` | 1..1 | ✓ | **Required** binding to `DischargeMedicationVS` |
| `MedicationRequest.subject` | 1..1 | ✓ | `Reference(Patient)` |
| `MedicationRequest.encounter` | 1..1 | ✓ | `Reference(Encounter)` — links to the stroke episode |
| `MedicationRequest.authoredOn` | 0..1 | ✓ | When order was authored |
| `MedicationRequest.intent` | 1..1 |  | Guidance: use `order` for discharge prescriptions |

## Example (excerpt)
- **Instance:** `DischargeMedicationRequest`
  - `status = active`
  - `category = medrequest-admin-location#community`
  - `intent = order`
  - `medication = SCT#372756006 "Warfarin (substance)"`
  - `subject = Reference(PatientExample)`
  - `encounter = Reference(StrokeEncounterExample)`