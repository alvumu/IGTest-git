---
title: Initial Care Intensity Extension
layout: default
navSection: extension
---

# InitialCareIntensityExtension

**URL:** http://testSK.org/StructureDefinition/initial-care-intensity-ext  
**Context:** `Encounter`  
**Type:** `value[x] only CodeableConcept` (1..1)  
**Binding:** **Required** to `InitialCareIntensityVS`  
**Purpose:** Specifies the **initial level of care** (e.g., standard bed, monitored bed, ICU/stroke unit).

**Example (excerpt):**
```json
{
  "resourceType": "Encounter",
  "extension": [{
    "url": "http://testSK.org/StructureDefinition/initial-care-intensity-ext",
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://testSK.org/CodeSystem/initial-care-intensity-cs",
        "code": "icu-stroke",
        "display": "ICU / Stroke Unit"
      }]
    }
  }]
}