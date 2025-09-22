---
title: First Hospital Extension
layout: profile
---

# FirstHospitalExtension

**URL:** http://testSK.org/StructureDefinition/first-hospital-ext  
**Context:** `Encounter`  
**Type:** `value[x] only boolean` (1..1)  
**Purpose:** Indicates whether the **reporting hospital** was the **first facility** to admit the patient for this stroke episode.

**Example (excerpt):**
```json
{
  "resourceType": "Encounter",
  "extension": [{
    "url": "http://testSK.org/StructureDefinition/first-hospital-ext",
    "valueBoolean": true
  }]
}
