---
title: Stroke Timing Metric Observation Profile (R5)
layout: default
navSection: profiles
---
# TimingMetricObservationProfile (Observation)

**URL:** http://testSK.org/StructureDefinition/timing-metric-observation-profile  
**Version:** 1.0.0 · **Status:** active  
**Base:** BaseStrokeObservation

**Purpose:** Record **process timings** (e.g., D2N, D2G).

## Must Support
`category`, `code`, `value[x]`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Observation.category` | 1..* | ✓ | Includes `observation-category#procedure` |
| `Observation.code` | 1..1 | ✓ | **Required** binding to `TimingMetricCodesVS` |
| `Observation.valueQuantity` | 1..1 | ✓ | UCUM `min` (minutes) |

**UCUM:** system `https://ucum.org/ucum`, code `min`, unit `minute`.
