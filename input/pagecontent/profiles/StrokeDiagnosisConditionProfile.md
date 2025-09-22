---
title: Stroke Encounter Profile
layout: default
navSection: profiles
---


# Overview

This package defines **Condition**-based profiles, extensions, and terminology to represent:
- The **final diagnosis** of the current stroke event, and
- **Known stroke risk factors** on the patient problem list,
with supportive **ValueSets/CodeSystems** and timing/etiology **extensions**.

---

# Profile

## StrokeDiagnosisConditionProfile (Condition)

**Purpose:** Represent the **final diagnosis** of the current stroke event (e.g., ischemic stroke, TIA, intracranial hemorrhage).

**Profile URL:** `http://testSK.org/ig/stroke-ig/StructureDefinition/stroke-diagnosis-condition-profile`  
**Base:** `Condition` (R5)  
**Type:** Constraint on `Condition`

### Must Support
`clinicalStatus`, `verificationStatus`, `category`, `code`, `subject`, `encounter`

### Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Condition.category` | 1..* | ✓ | Fixed to `CondCat#encounter-diagnosis` (*Encounter Diagnosis*) |
| `Condition.code` | 1..1 | ✓ | **Required** binding to `StrokeDiagnosisVS` |
| `Condition.subject` | 1..1 | ✓ | `Reference(Patient)` |
| `Condition.encounter` | 1..1 | ✓ | `Reference(Encounter)` — links to the stroke episode |
| `Condition.clinicalStatus` | 0..1 | ✓ | Values from `ClinicalStatusCondCS` |
| `Condition.verificationStatus` | 0..1 | ✓ | Values from `CondVerStatus` |
| `Condition.onset[x]` | 0..0 |  | Onset is captured via extensions below |
| `Condition.extension(bleedingReason)` | 0..1 | ✓ | `HemorrhagicStrokeBleedingReasonExt` |
| `Condition.extension(ischemicEtiology)` | 0..1 | ✓ | `StrokeStrokeEtiologyExt` |
| `Condition.extension(onsetDate)` | 0..1 | ✓ | `OnsetDateExt` (`date`) |
| `Condition.extension(onsetTime)` | 0..1 | ✓ | `OnsetTimeExt` (`time`) |

**Invariants (FHIRPath):**
- *None beyond fixed category and required bindings.*

**Terminology:**
- **Diagnosis:** `StrokeDiagnosisVS` (required)

**Examples:**
- [`Condition/StrokeDiagnosisConditionExample`](../examples/Condition-StrokeDiagnosisConditionExample.json)
