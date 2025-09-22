---
title: Stroke Circumstance Observation Profile (R5)
layout: default
---

# StrokeCircumstanceObservationProfile (Observation)

**URL:** http://testSK.org/StructureDefinition/stroke-circumstance-observation-profile  
**Version:** 1.0.0 · **Status:** active  
**Base:** BaseStrokeObservation

**Purpose:** Record **stroke onset circumstances** (e.g., in-hospital, wake-up).

## Must Support
`code`, `hasMember`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Observation.code` | 1..1 | ✓ | **Required** binding to `StrokeCircumstanceCodesVS` |
| `Observation.hasMember` | 0..* | ✓ | Related observations (e.g., supporting findings) |
