Alias: $condition-category = http://terminology.hl7.org/CodeSystem/condition-category
Alias: $sct = http://snomed.info/sct
Alias: $condition-clinical = http://terminology.hl7.org/CodeSystem/condition-clinical
Alias: $condition-ver-status = http://terminology.hl7.org/CodeSystem/condition-ver-status

Profile: StrokeDiagnosisConditionProfile
Parent: Condition
Id: stroke-diagnosis-condition-profile
Title: "Stroke Diagnosis Condition Profile"
Description: "Represents the final diagnosis of the current stroke event."
* ^version = "1.0.0"
* ^status = #active
* extension contains
    HemorrhagicStrokeBleedingReasonExt named bleedingReason 0..1 MS and
    StrokeStrokeEtiologyExt named ischemicEtiology 0..1 MS
* clinicalStatus MS
* verificationStatus = $condition-ver-status#confirmed
* verificationStatus MS
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* category MS
* code 1.. MS
* code from StrokeDiagnosisVS (required)
* subject only Reference(Patient)
* subject MS
* encounter 1.. MS
* onset[x] 1.. MS
* onset[x] only dateTime

Profile: StrokeRiskFactorConditionProfile
Parent: Condition
Id: stroke-risk-factor-condition-profile
Title: "Stroke Risk Factor Condition Profile"
Description: "Represents a known condition or risk factor relevant to stroke."
* ^version = "1.0.0"
* ^status = #active
* clinicalStatus MS
* verificationStatus = $condition-ver-status#confirmed
* verificationStatus MS
* category = $condition-category#problem-list-item "Problem List Item"
* category MS
* code 1.. MS
* code from StrokeRiskFactorSNOMEDVS (required)
* subject only Reference(Patient)
* subject MS
* encounter MS
* onset[x] MS
* recordedDate MS

Extension: HemorrhagicStrokeBleedingReasonExt
Id: hemorrhagic-stroke-bleeding-reason-ext
Context: Condition
* ^version = "1.0.0"
* value[x] only CodeableConcept
* value[x] from HemorrhagicStrokeBleedingReasonVS (required)

Extension: StrokeStrokeEtiologyExt
Id: ischemic-stroke-etiology-ext
Context: Condition
* ^version = "1.0.0"
* value[x] only CodeableConcept
* value[x] from StrokeEtiologyVS (required)

ValueSet: StrokeDiagnosisVS
Id: stroke-diagnosis-vs
Title: "Stroke Diagnosis ValueSet"
Description: "Defines the SNOMED CT codes for final stroke diagnoses, including specific types and etiologies where applicable."
* ^status = #active
* ^version = "1.0.0"
* SNOMED_CT#422504002 "Ischemic stroke (disorder)"
* SNOMED_CT#274100004 "Cerebral hemorrhage (disorder)"
* SNOMED_CT#266257000 "Transient ischemic attack (disorder)"
* SNOMED_CT#21454007 "Subarachnoid intracranial hemorrhage (disorder)"
* SNOMED_CT#95455008 "Thrombosis of cerebral veins (disorder)"

ValueSet: StrokeRiskFactorSNOMEDVS
Id: stroke-risk-factor-snomed-vs
Title: "Stroke Risk Factor ValueSet"
Description: "Defines the SNOMED CT codes for conditions or risk factors relevant to stroke."
* ^status = #active
* ^version = "0.2.0"
* include codes from system SNOMED_CT where constraint = "<<49436004 OR <<5370000"
* SNOMED_CT#22298006 "Myocardial infarction (disorder)"
* SNOMED_CT#53741008 "Coronary arteriosclerosis (disorder)"
* SNOMED_CT#73211009 "Diabetes mellitus (disorder)"
* SNOMED_CT#55822004 "Hyperlipidemia (disorder)"
* SNOMED_CT#38341003 "Hypertensive disorder, systemic arterial (disorder)"
* SNOMED_CT#230706003 "Hemorrhagic cerebral infarction (disorder)"
* SNOMED_CT#266257000 "Transient ischemic attack (disorder)"
* SNOMED_CT#422504002 "Ischemic stroke (disorder)"
* SNOMED_CT#230690007 "Cerebrovascular accident (disorder)"

ValueSet: DischargeDestinationValueset
Id: discharge-destination-vs
Title: "Discharge Destination ValueSet"
Description: "Defines possible patient discharge destinations."
* ^status = #draft
* ^version = "1.0.0"
* ^experimental = true
* ^date = "2025-03-31"
* ^publisher = "Example Organization"
* ^contact.name = "Example Organization"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "info@example.org"
* SNOMED_CT#306689006 "Discharge to home (procedure)"
* SNOMED_CT#306706006 "Discharge to ward (procedure)"
* SNOMED_CT#19712007 "Patient transfer, to another health care facility (procedure)"
* SNOMED_CT#306691003 "Discharge to residential home (procedure)"
* SNOMED_CT#305398007 "Admission to the mortuary (procedure)"

ValueSet: AdmissionSourceValueset
Id: admission-source-vs
Title: "Admission Sources ValueSet"
Description: "Defines the modes of transport or pathways by which the patient arrived."
* ^status = #draft
* ^version = "1.0.0"
* ^experimental = true
* ^date = "2025-03-31"
* ^publisher = "Example Organization"
* ^contact.name = "Example Organization"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "info@example.org"
* SNOMED_CT#715537001 "Transportation by ambulance (procedure)"
* SNOMED_CT#715957006 "Transportation by own transport (procedure)"
* SNOMED_CT#384762007 "Transportation procedure (procedure)"

ValueSet: HemorrhagicStrokeBleedingReasonVS
Id: hemorrhagic-stroke-bleeding-reason-vs
Title: "Hemorrhagic Stroke Bleeding Reason ValueSet"
Description: "Specifies the identified cause of a hemorrhagic stroke, typically used with an extension."
* ^status = #draft
* ^version = "1.0.0"
* ^experimental = true
* ^date = "2025-03-31"
* ^publisher = "Example Organization"
* ^contact.name = "Example Organization"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "info@example.org"
* SNOMED_CT#128609009 "Intracranial aneurysm (disorder)"
* SNOMED_CT#703221003 "Congenital intracranial vascular malformation (disorder)"
* SNOMED_CT#64572001 "Disease (disorder)"
* SNOMED_CT#71388002 "Procedure (procedure)"

ValueSet: StrokeEtiologyVS
Id: stroke-etiology-vs
Title: "Stroke Etiology ValueSet"
Description: "Specifies the determined etiology of an stroke."
* ^status = #draft
* ^version = "1.0.0"
* ^experimental = true
* ^date = "2025-03-31"
* ^publisher = "Example Organization"
* ^contact.name = "Example Organization"
* ^contact.telecom.system = #email
* ^contact.telecom.value = "info@example.org"
* SNOMED_CT#724425005 "Cerebral ischemic stroke due to intracranial large artery atherosclerosis (disorder)"
* SNOMED_CT#724426006 "Cerebral ischemic stroke due to extracranial large artery atherosclerosis (disorder)"
* SNOMED_CT#1251566005 "Embolism from heart (disorder)"
* SNOMED_CT#404684003 "Clinical finding (finding)"
* SNOMED_CT#16891111000119104 "Cryptogenic stroke (disorder)"
* SNOMED_CT#230698000 "Lacunar infarction (disorder)"
* SNOMED_CT#443929000 "Small vessel cerebrovascular disease (disorder)"

Instance: StrokeDiagnosisConditionExample
InstanceOf: StrokeDiagnosisConditionProfile
Usage: #example
* category = $condition-category#encounter-diagnosis "Encounter Diagnosis"
* code = $sct#266257000 "Transient ischemic attack (disorder)"
* encounter.reference = "StrokeEncounterExample"
* onsetDateTime = "2025-03-31T12:00:00Z"
* clinicalStatus = $condition-clinical#active
* subject.reference = "PatientExample"

Instance: StrokeRiskFactorConditionExample
InstanceOf: StrokeRiskFactorConditionProfile
Usage: #example
* category = $condition-category#problem-list-item "Problem List Item"
* code = $sct#422504002 "Ischemic stroke (disorder)"
* clinicalStatus = $condition-clinical#remission
* onsetDateTime = "2025-03-31T12:00:00Z"
* recordedDate = "2025-03-31T12:00:00Z"
* encounter.reference = "StrokeEncounterExample"
* subject.reference = "PatientExample"
