---
title: Stroke Vital Sign Observation Profile (R5)
layout: default
navSection: profiles
---

# VitalSignObservationProfile (Observation)

**URL:** http://testSK.org/StructureDefinition/vital-sign-observation-profile  
**Version:** 1.0.0 · **Status:** active  
**Base:** BaseStrokeObservation

**Purpose:** Record **systolic/diastolic blood pressure** components for stroke patients.

## Must Support
`category`, `code`, `component.code`, `component.value[x]`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Observation.category` | 1..* | ✓ | Includes `observation-category#vital-signs` |
| `Observation.code` | 1..1 | ✓ | Fixed to `SCT#61746007` (*Taking patient vital signs*) |
| `Observation.component` | 0..* | ✓ | Each vital sign component |
| `Observation.component.code` | 1..1 | ✓ | **Required** binding to `VitalSignCodesVS` |
| `Observation.component.value[x]` | 1..1 | ✓ | `Quantity`, UCUM `mm[Hg]` |

**UCUM:** system `https://ucum.org/ucum`, code `mm[Hg]`, unit display `mmHg`.
