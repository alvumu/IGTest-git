---
title: Specific Stroke Finding Observation Profile (R5)
layout: default
navSection: profiles
---
# SpecificFindingObservationProfile (Observation)

**URL:** http://testSK.org/StructureDefinition/specific-finding-observation-profile  
**Version:** 1.0.0 · **Status:** active  
**Base:** BaseStrokeObservation

**Purpose:** Record **specific coded findings** like AFib/Flutter status or mTICI grade.

## Must Support
`code`, `value[x]`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Observation.code` | 1..1 | ✓ | **Required** binding to `StrokeFindingCodesVS` |
| `Observation.valueCodeableConcept` | 1..1 | ✓ | CodeableConcept value from appropriate VS (see invariants) |

**Invariants:**  
- `obs-afib-code`: If code = SNOMED `1290101000000101` (AF/Flutter assessment), value **must** come from **AfibFlutterStatusVS**.  
- `obs-mtici-code`: If code = SNOMED `1156911000` (mTICI assessment), value **must** come from **MticiScoreVS**.
