

# ObservationTimingContextExtension

**URL:** http://testSK.org/StructureDefinition/observation-timing-context-ext  
**Context:** `Observation`  
**Type:** `value[x] only CodeableConcept` (1..1)  
**Binding:** **Required** to `AssessmentContextVS`  
**Purpose:** Specifies the **timing context/phase** (e.g., pre-stroke, admission, discharge, 3-month) in which an observation or assessment was made.

**Example (excerpt):**
```json
{
  "resourceType": "Observation",
  "extension": [{
    "url": "http://testSK.org/StructureDefinition/observation-timing-context-ext",
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://testSK.org/CodeSystem/assessment-context-cs",
        "code": "pre-stroke",
        "display": "Pre-stroke"
      }]
    }
  }]
}
