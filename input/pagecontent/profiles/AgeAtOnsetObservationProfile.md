---
title: Age at Stroke Onset Observation Profile (R5)
layout: default
navSection: profiles
---

# AgeAtOnsetObservationProfile (Observation)

**URL:** http://testSK.org/StructureDefinition/age-at-onset-observation-profile  
**Version:** 1.0.0 · **Status:** active  
**Base:** BaseStrokeObservation

**Purpose:** Record the **patient’s age** at **stroke onset**.

## Must Support
`code`, `valueInteger`

## Elements and Constraints

| Element | Card. | MS | Binding/Notes |
|---|---:|:---:|---|
| `Observation.code` | 1..1 | ✓ | Fixed to `SCT#445518008` (*Age at onset of clinical finding*) |
| `Observation.valueInteger` | 1..1 | ✓ | Age in years |
