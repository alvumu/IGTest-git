# SpecificFindingObservationExampleMTICI - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SpecificFindingObservationExampleMTICI**

## Example Observation: SpecificFindingObservationExampleMTICI

Profile: [Specific Stroke Finding Observation Profile (R5)](StructureDefinition-specific-finding-observation-profile.md)

**status**: Final

**code**: mTICI Score Assessment

**subject**: [Anonymous Patient (no stated gender), DoB Unknown](Patient-example-patient.md)

**encounter**: [Encounter: extension = true,ICU / Stroke Unit,false,Neurology department (environment); status = completed; type = Inpatient Encounter; actualPeriod = 2025-03-01 08:00:00+0000 --> 2025-03-10 12:00:00+0000](Encounter-StrokeEncounterExample.md)

**value**: Grade 3: Complete antegrade reperfusion of the previously occluded target artery ischemic territory, with absence of visualized occlusion in all distal branches



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "SpecificFindingObservationExampleMTICI",
  "meta" : {
    "profile" : [
      "http://testSK.org/StructureDefinition/specific-finding-observation-profile"
    ]
  },
  "status" : "final",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "1156911000",
        "display" : "mTICI Score Assessment"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/example-patient"
  },
  "encounter" : {
    "reference" : "Encounter/StrokeEncounterExample"
  },
  "valueCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://testSK.org/CodeSystem/mtici-score-cs",
        "code" : "3",
        "display" : "Grade 3: Complete antegrade reperfusion of the previously occluded target artery ischemic territory, with absence of visualized occlusion in all distal branches"
      }
    ]
  }
}

```
