// ------------------ Aliases ------------------------------------
Alias: SCT = http://snomed.info/sct
Alias: FHIR = http://hl7.org/fhir
Alias: CondCat = http://terminology.hl7.org/CodeSystem/condition-category
Alias: CondVerStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status
Alias: StrokeRiskUnknVS = http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-problems-uv-ips
Alias: ClinicalStatusCondCS = http://terminology.hl7.org/CodeSystem/condition-clinical


Alias: HemorrhagicStrokeBleedingReasonCS_URL = http://testSK.org/CodeSystem/hemorrhagic-stroke-bleeding-reason-cs
Alias: StrokeEtiologyCS_URL = http://testSK.org/CodeSystem/stroke-etiology-cs
Alias: StrokeDiagnosisVS_URL = http://testSK.org/ValueSet/stroke-diagnosis-vs
Alias: StrokeRiskFactorSNOMEDVS_URL = http://testSK.org/ValueSet/stroke-risk-factor-snomed-vs
Alias: StrokeRiskFactorVS_URL = http://testSK.org/ValueSet/stroke-risk-factor-vs
Alias: StrokeRiskFactorUnknVS_URL = http://hl7.org/fhir/uv/ips/ValueSet/absent-or-unknown-problems-uv-ips
Alias: DischargeDestinationVS_URL = http://testSK.org/ValueSet/discharge-destination-vs
Alias: AdmissionSourceVS_URL = http://testSK.org/ValueSet/admission-source-vs
Alias: HemorrhagicStrokeBleedingReasonVS_URL = http://testSK.org/ValueSet/hemorrhagic-stroke-bleeding-reason-vs
Alias: StrokeEtiologyVS_URL = http://testSK.org/ValueSet/stroke-etiology-vs

// ValueSet for Stroke Diagnosis (with Displays)
ValueSet: StrokeDiagnosisVS
Id: stroke-diagnosis-vs
Title: "Stroke Diagnosis ValueSet"
Description: "Defines the SNOMED CT codes for final stroke diagnoses, including specific types and etiologies where applicable."
* ^url = StrokeDiagnosisVS_URL
* ^status = #active
* include SCT#422504002 "Ischemic stroke (disorder)"
* include SCT#274100004 "Cerebral hemorrhage (disorder)"
* include SCT#266257000 "Transient ischemic attack (disorder)"
* include SCT#21454007 "Subarachnoid intracranial hemorrhage (disorder)"
* include SCT#95455008 "Thrombosis of cerebral veins (disorder)"

// ValueSet for Stroke Risk Factors (with Displays)
ValueSet: StrokeRiskFactorSNOMEDVS
Id: stroke-risk-factor-snomed-vs
Title: "Stroke Risk Factor ValueSet"
Description: "Defines the SNOMED CT codes for conditions or risk factors relevant to stroke."
* ^url = StrokeRiskFactorSNOMEDVS_URL
* ^version = "0.2.0"
* ^status = #active
* SCT#5370000 "Atrial flutter (disorder)"
* SCT#49436004 "Atrial fibrillation (disorder)"
* SCT#22298006 "Myocardial infarction (disorder)"
* SCT#53741008 "Coronary arteriosclerosis (disorder)"
* SCT#73211009 "Diabetes mellitus (disorder)"
* SCT#55822004 "Hyperlipidemia (disorder)"
* SCT#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* SCT#230706003 "Hemorrhagic cerebral infarction (disorder)"
* SCT#266257000 "Transient ischemic attack (disorder)"
* SCT#422504002 "Ischemic stroke (disorder)"
* SCT#230690007 "Cerebrovascular accident (disorder)"

ValueSet: DischargeDestinationVS
Id: discharge-destination-vs
Title: "Discharge Destination ValueSet"
Description: "Defines possible patient discharge destinations."
* ^url = DischargeDestinationVS_URL
* ^version = "1.0.0"
* ^name = "DischargeDestinationValueset"
* ^status = #draft
* ^experimental = true
* ^date = "2025-03-31"
* ^publisher = "Example Organization"
* ^contact[0].name = "Example Organization"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "info@example.org"
* include SCT#306689006 "Discharge to home (procedure)"
* include SCT#306706006 "Discharge to ward (procedure)"
* include SCT#19712007 "Patient transfer, to another health care facility (procedure)"
* include SCT#306691003 "Discharge to residential home (procedure)"
* include SCT#305398007 "Admission to the mortuary (procedure)"

// ValueSet for Admission Source
ValueSet: AdmissionSourceVS
Id: admission-source-vs
Title: "Admission Sources ValueSet"
Description: "Defines the modes of transport or pathways by which the patient arrived."
* ^url = AdmissionSourceVS_URL
* ^version = "1.0.0"
* ^name = "AdmissionSourceValueset"
* ^status = #draft
* ^experimental = true
* ^date = "2025-03-31"
* ^publisher = "Example Organization"
* ^contact[0].name = "Example Organization"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "info@example.org"
* include SCT#715537001 "Transportation by ambulance (procedure)"
* include SCT#715957006 "Transportation by own transport (procedure)" // Note: Verify this code, was corrected per input.
* include SCT#384762007 "Transportation procedure (procedure)"

CodeSystem: HemorrhagicStrokeBleedingReasonCS
Id: hemorrhagic-stroke-bleeding-reason-cs
* ^url = HemorrhagicStrokeBleedingReasonCS_URL
* ^title = "Hemorrhagic Stroke Bleeding Reason Code System"
* ^description = "Codes indicating the reason for bleeding in hemorrhagic stroke cases."
* ^status = #active
* ^experimental = true 
* ^caseSensitive = false  
* #aneurysm "Bleeding Reason Aneurysm" "A cerebral aneurysm was identified as the cause of the patient's hemorrhagic stroke"
* #malformation "Bleeding Reason Malformation" "A vascular malformation was identified as the cause of the patient's hemorrhagic stroke"
* #other "Bleeding Reason Other" "Another, less common or unspecified cause of intracranial hemorrhage was identified"


ValueSet: HemorrhagicStrokeBleedingReasonVS
Id: hemorrhagic-stroke-bleeding-reason-vs
Title: "Hemorrhagic Stroke Bleeding Reason ValueSet"
* ^description = "Specifies the identified cause of a hemorrhagic stroke, typically used with an extension."
* ^url = HemorrhagicStrokeBleedingReasonVS_URL
* ^version = "1.0.0"
* ^name = "HemorrhagicStrokeBleedingReasonVS"
* ^status = #draft
* ^experimental = true
* ^date = "2025-09-08"
* ^publisher = "Example Organization"
* ^contact[0].name = "Example Organization"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "info@example.org"
* include codes from system HemorrhagicStrokeBleedingReasonCS_URL


CodeSystem: StrokeEtiologyCS
Id: stroke-etiology-cs
* ^url = StrokeEtiologyCS_URL
* ^title = "Stroke Etiology Code System"
* ^description = "Codes indicating the etiology of strokes."
* ^status = #active
* ^experimental = true 
* ^caseSensitive = false  
* #atherosclerosis "Stroke Etiology Atherosclerosis" "Specifies that large artery atherosclerosis (for example, significant stenosis in the carotid or basilar arteries) was identified as the cause of the stroke."
* #other "Stroke Etiology Other" "Specifies that the stroke etiology falls into a rarer category not covered by the main classifications, such as vasculitis or hypercoagulable states."

ValueSet: StrokeEtiologyVS
Id: stroke-etiology-vs
Title: "Stroke Etiology ValueSet"
Description: "Specifies the determined etiology of an stroke."
* ^url = StrokeEtiologyVS_URL
* ^version = "1.0.0"
* ^name = "StrokeEtiologyVS"
* ^status = #draft
* ^experimental = true
* ^date = "2025-03-31"
* ^publisher = "Example Organization"
* ^contact[0].name = "Example Organization"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "info@example.org"
* include codes from system StrokeEtiologyCS_URL
* include SCT#16891111000119104 "Cryptogenic stroke (disorder)"
* include SCT#413758000 "Cardioembolic stroke (disorder)"


// ------------------ Extensions ---------------------------------
// (No changes from previous version)
Extension: HemorrhagicStrokeBleedingReasonExt
Id: hemorrhagic-stroke-bleeding-reason-ext
* ^context.type = #element
* ^context.expression = "Condition"
* value[x] only CodeableConcept
* valueCodeableConcept from HemorrhagicStrokeBleedingReasonVS (required)

Extension: StrokeStrokeEtiologyExt
Id: ischemic-stroke-etiology-ext
* ^context.type = #element
* ^context.expression = "Condition"
* value[x] only CodeableConcept
* valueCodeableConcept from StrokeEtiologyVS (required)

Extension: OnsetDateExt
Id: onset-date-ext
* ^context.type = #element
* ^context.expression = "Condition"
* value[x] only date


Extension: OnsetTimeExt
Id: onset-time-ext
* ^context.type = #element
* ^context.expression = "Condition"
* value[x] only time

// ------------------ Condition Profiles -------------------------

// --- 1. Profile for Primary Stroke Diagnosis ---
Profile: StrokeDiagnosisConditionProfile
Id: stroke-diagnosis-condition-profile
Parent: Condition
Title: "Stroke Diagnosis Condition Profile"
Description: "Represents the final diagnosis of the current stroke event."
* ^status = #active

* clinicalStatus MS
* verificationStatus MS

* category MS
* category = CondCat#encounter-diagnosis "Encounter Diagnosis"

* code 1..1 MS
* code from StrokeDiagnosisVS (required)

* subject 1..1 MS
* subject only Reference(Patient)

* encounter 1..1
* encounter only Reference(Encounter)
* encounter MS

* onset[x] 0..0


* extension contains HemorrhagicStrokeBleedingReasonExt named bleedingReason 0..1 MS
* extension contains StrokeStrokeEtiologyExt named ischemicEtiology 0..1 MS
* extension contains OnsetDateExt named onsetDate 0..1 MS
* extension contains OnsetTimeExt named onsetTime 0..1 MS


// --- 2. Profile for Stroke Risk Factor Conditions ---
Profile: StrokeRiskFactorConditionProfile
Id: stroke-risk-factor-condition-profile
Parent: Condition
Title: "Stroke Risk Factor Condition Profile"
Description: "Represents a known condition or risk factor relevant to stroke."
* ^status = #active

* clinicalStatus MS
* verificationStatus MS


* category MS
* category = CondCat#problem-list-item "Problem List Item"

* subject 1..1 MS
* subject only Reference(Patient)

* code 1..1 MS
* code from StrokeRiskFactorSNOMEDVS (required)

* onset[x] MS
* recordedDate MS

* encounter only Reference(Encounter)
* encounter MS



Instance: StrokeDiagnosisConditionExample
InstanceOf: StrokeDiagnosisConditionProfile
* category = CondCat#encounter-diagnosis "Encounter Diagnosis"
* code = SCT#266257000 "Transient ischemic attack (disorder)"
* encounter = Reference(StrokeEncounterExample)
* clinicalStatus = ClinicalStatusCondCS#active 
* encounter = Reference(StrokeEncounterExample)
* subject = Reference(PatientExample)

Instance: StrokeDiagnosisConditionAFlutter
InstanceOf: StrokeRiskFactorConditionProfile
* category = CondCat#problem-list-item "Problem List Item"
* code = SCT#5370000 "Atrial flutter (disorder)"
* encounter = Reference(StrokeEncounterExample)
* clinicalStatus = ClinicalStatusCondCS#active
* verificationStatus = CondVerStatus#differential
* encounter = Reference(StrokeEncounterExample)
* subject = Reference(PatientExample)

Instance: StrokeDiagnosisConditionAFib
InstanceOf: StrokeRiskFactorConditionProfile
* category = CondCat#problem-list-item "Problem List Item"
* code = SCT#49436004 "Atrial fibrillation (disorder)"
* encounter = Reference(StrokeEncounterExample)
* clinicalStatus = ClinicalStatusCondCS#active
* verificationStatus = CondVerStatus#differential
* encounter = Reference(StrokeEncounterExample)
* subject = Reference(PatientExample)

Instance: StrokeRiskFactorConditionExample
InstanceOf: StrokeRiskFactorConditionProfile
* category = CondCat#problem-list-item "Problem List Item"
* code = SCT#422504002 "Ischemic stroke (disorder)"
* clinicalStatus = ClinicalStatusCondCS#remission
* onsetDateTime = 2025-03-31T12:00:00Z
* recordedDate = 2025-03-31T12:00:00Z
* encounter = Reference(StrokeEncounterExample)
* subject = Reference(PatientExample)
