---
title: Stroke Functional Score Observation Profile (R5)
layout: profile
---

# FunctionalScoreObservationProfile (Observation)

**URL:** http://testSK.org/StructureDefinition/functional-score-observation-profile  
**Version:** 1.1.0 · **Status:** active  
**Base:** BaseStrokeObservation

**Purpose:** Record **functional scores** (mRS, NIHSS), using an **extension** to capture timing context.

## Must Support
`extension[timingContext]`, `category`, `code`, `value[x]`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Observation.extension(timingContext)` | 1..1 | ✓ | `ObservationTimingContextExtension` (required) |
| `Observation.category` | 1..* | ✓ | Includes `observation-category#exam` |
| `Observation.code` | 1..1 | ✓ | **Required** binding to `FunctionalScoreCodesVS` |
| `Observation.valueCodeableConcept` | 0..1 | ✓ | **For mRS** — **Required** binding to `MRsScoreVS` (see invariant `obs-mrs-code`) |
| `Observation.valueInteger` | 0..1 | ✓ | **For NIHSS** — see invariant `obs-nihss-code` |

**Invariants:**  
- `obs-mrs-code`: If code = SNOMED `1255866005` (mRS), value **must** be `CodeableConcept`.  
- `obs-nihss-code`: If code = SNOMED `450743008` (NIHSS), value **must** be `integer`.
