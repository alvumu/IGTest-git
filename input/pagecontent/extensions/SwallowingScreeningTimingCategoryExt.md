---
title: Swallowing Screening Timing Category Extension
layout: profile
---

# SwallowingScreeningTimingCategoryExt (Extension)

**URL:** http://testSK.org/StructureDefinition/swallowing-screening-timing-category-ext  
**Version:** 1.0.0 · **Context:** `Procedure`  
**Type:** `value[x] only CodeableConcept` (1..1)  
**Binding:** **Required** to `SwallowingScreeningTimingCategoryVS`  
**Purpose:** Records **when** (relative to stroke onset/admission) the swallowing screening occurred.

**Example (excerpt):**
```json
{
  "resourceType": "Procedure",
  "extension": [{
    "url": "http://testSK.org/StructureDefinition/swallowing-screening-timing-category-ext",
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://testSK.org/CodeSystem/swallow-screen-time-cs",
        "code": "T4H",
        "display": "Within 4 hours"
      }]
    }
  }]
}
