

# RequiredPostAcuteCareExtension

**URL:** http://testSK.org/StructureDefinition/required-post-acute-care-ext  
**Context:** `Encounter`  
**Type:** `value[x] only boolean` (1..1)  
**Purpose:** Indicates whether the patient required **hospitalization beyond 24 hours** after the designated acute stroke phase.

**Example (excerpt):**
```json
{
  "resourceType": "Encounter",
  "extension": [{
    "url": "http://testSK.org/StructureDefinition/required-post-acute-care-ext",
    "valueBoolean": false
  }]
}