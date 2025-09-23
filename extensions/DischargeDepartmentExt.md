

# DischargeDepartmentServiceExtension

**URL:** http://testSK.org/StructureDefinition/discharge-department-service-ext  
**Context:** `Encounter`  
**Type:** `value[x] only CodeableConcept` (1..1)  
**Binding:** **Required** to `DischargeDeptVS`  
**Purpose:** Specifies the **department/service** the patient was **discharged or transferred to**.

**Example (excerpt):**
```json
{
  "resourceType": "Encounter",
  "extension": [{
    "url": "http://testSK.org/StructureDefinition/discharge-department-service-ext",
    "valueCodeableConcept": {
      "coding": [{
        "system": "http://testSK.org/CodeSystem/discharge-dept-cs",
        "code": "neurology",
        "display": "Neurology"
      }]
    }
  }]
}