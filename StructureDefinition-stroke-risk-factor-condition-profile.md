# Stroke Risk Factor Condition Profile - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stroke Risk Factor Condition Profile**

## Resource Profile: Stroke Risk Factor Condition Profile 

| | |
| :--- | :--- |
| *Official URL*:http://testSK.org/StructureDefinition/stroke-risk-factor-condition-profile | *Version*:0.1.0 |
| Active as of 2025-10-07 | *Computable Name*:StrokeRiskFactorConditionProfile |
| **Copyright/Legal**: © Tecnomod. This profile is provided for use within this Implementation Guide. | |

 
Defines a Condition profile for pre-existing or concurrent conditions that increase stroke risk (e.g., atrial fibrillation/flutter, diabetes, hypertension, coronary disease). The profile fixes category to problem-list-item, binds code (required) to StrokeRiskFactorVS, and supports onset[x] and recordedDate to document chronology and longitudinal tracking. Use this profile to maintain the problem list and to support risk assessment and CDS; do not use it to code the acute stroke event itself. 

 
To standardize capture of stroke-related risk factor conditions for longitudinal tracking, CDS, and reporting. 

**Usages:**

* Examples for this Profile: [Condition/StrokeDiagnosisConditionAFib](Condition-StrokeDiagnosisConditionAFib.md), [Condition/StrokeDiagnosisConditionAFlutter](Condition-StrokeDiagnosisConditionAFlutter.md) and [Condition/StrokeRiskFactorConditionExample](Condition-StrokeRiskFactorConditionExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/SKtestIG|current/StructureDefinition/stroke-risk-factor-condition-profile)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-stroke-risk-factor-condition-profile.csv), [Excel](StructureDefinition-stroke-risk-factor-condition-profile.xlsx), [Schematron](StructureDefinition-stroke-risk-factor-condition-profile.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "stroke-risk-factor-condition-profile",
  "url" : "http://testSK.org/StructureDefinition/stroke-risk-factor-condition-profile",
  "version" : "0.1.0",
  "name" : "StrokeRiskFactorConditionProfile",
  "title" : "Stroke Risk Factor Condition Profile",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-10-07",
  "publisher" : "UMU",
  "contact" : [
    {
      "name" : "UMU",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://testSK.org/umu"
        }
      ]
    }
  ],
  "description" : "Defines a Condition profile for pre-existing or concurrent conditions that increase stroke risk (e.g., atrial fibrillation/flutter, diabetes, hypertension, coronary disease). The profile fixes category to problem-list-item, binds code (required) to StrokeRiskFactorVS, and supports onset[x] and recordedDate to document chronology and longitudinal tracking. Use this profile to maintain the problem list and to support risk assessment and CDS; do not use it to code the acute stroke event itself.",
  "purpose" : "To standardize capture of stroke-related risk factor conditions for longitudinal tracking, CDS, and reporting.",
  "copyright" : "© Tecnomod. This profile is provided for use within this Implementation Guide.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "sct-concept",
      "uri" : "http://snomed.info/conceptdomain",
      "name" : "SNOMED CT Concept Domain Binding"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "sct-attr",
      "uri" : "http://snomed.org/attributebinding",
      "name" : "SNOMED CT Attribute Binding"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Condition",
        "path" : "Condition"
      },
      {
        "id" : "Condition.clinicalStatus",
        "path" : "Condition.clinicalStatus",
        "mustSupport" : true
      },
      {
        "id" : "Condition.verificationStatus",
        "path" : "Condition.verificationStatus",
        "mustSupport" : true
      },
      {
        "id" : "Condition.category",
        "path" : "Condition.category",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
              "code" : "problem-list-item",
              "display" : "Problem List Item"
            }
          ]
        },
        "mustSupport" : true
      },
      {
        "id" : "Condition.code",
        "path" : "Condition.code",
        "min" : 1,
        "mustSupport" : true,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://testSK.org/ValueSet/stroke-risk-factor-vs"
        }
      },
      {
        "id" : "Condition.subject",
        "path" : "Condition.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Condition.encounter",
        "path" : "Condition.encounter",
        "mustSupport" : true
      },
      {
        "id" : "Condition.onset[x]",
        "path" : "Condition.onset[x]",
        "mustSupport" : true
      },
      {
        "id" : "Condition.recordedDate",
        "path" : "Condition.recordedDate",
        "mustSupport" : true
      }
    ]
  }
}

```
