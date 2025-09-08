// ------------------------- Aliases ----------------------------------
Alias: SCT = http://snomed.info/sct
Alias: FHIR_Encounter = http://hl7.org/fhir/StructureDefinition/Encounter
Alias: FHIR_Extension = http://hl7.org/fhir/StructureDefinition/Extension
Alias: FHIR_Location = http://hl7.org/fhir/StructureDefinition/Location


// URLs for Custom CodeSystems (Defined Below)
Alias: StrokeArrivalModeCS_URL = http://testSK.org/CodeSystem/stroke-arrival-mode-cs
Alias: DischargeDeptCS_URL = http://testSK.org/CodeSystem/CodeSystem/discharge-dept-cs
Alias: InitialCareIntensityCS_URL = http://testSK.org/CodeSystem/initial-care-intensity-cs
Alias: StrokeDischargeDestinationCS_URL = http://testSK.org/CodeSystem/stroke-discharge-destination-cs
// URLs for Custom ValueSets (Defined Below - used in bindings)
Alias: StrokeArrivalModeVS_URL = http://testSK.org/ValueSet/stroke-arrival-mode-vs
Alias: StrokeDischargeDestinationVS_URL = http://testSK.org/ValueSet/stroke-discharge-destination-vs
Alias: DischargeDeptVS_URL = http://testSK.org/ValueSet/discharge-dept-vs
Alias: InitialCareIntensityVS_URL = http://testSK.org/ValueSet/initial-care-intensity-vs

// URLs for Custom Extensions (Defined Below)
Alias: FirstHospitalExt_URL = http://testSK.org/StructureDefinition/first-hospital-ext
Alias: InitialCareIntensityExt_URL = http://testSK.org/StructureDefinition/initial-care-intensity-ext
Alias: RequiredPostAcuteCareExt_URL = http://testSK.org/StructureDefinition/required-post-acute-care-ext
Alias: DischargeDepartmentServiceExt_URL = http://testSK.org/StructureDefinition/discharge-department-service-ext

// ------------------------- Custom CodeSystems & ValueSets -------------

// --- Initial Care Intensity ---
CodeSystem: StrokeArrivalModeCS
Id: stroke-arrival-mode-cs
* ^url = StrokeArrivalModeCS_URL
* ^title = "Initial Care Intensity Code System"
* ^description = "Codes indicating the level of care provided during the patient's initial day(s) in the hospital."
* ^status = #active
* ^experimental = true 
* ^caseSensitive = false  
* #priv-transport-home "Private Transportation from Home/Scene" "The patient arrived via personal or non-medical transport from their home or directly from the scene of the incident."
* #priv-transport-gp "Private Transportation from GP" "The patient was referred and transported privately from GP."
* #ems-gp "EMS from GP" "Emergency Medical Services (EMS) transported the patient from GP."
* #stroke-center "Stroke Center" "The patient was transferred from a specialized stroke center, indicating prior specialized care"
* #ems-home "EMS from Home" "Emergency Medical Services (EMS) transported the patient from their home or directly from the scene where the stroke symptoms began."
* #another-hosp "Another Hospital" "The patient was transferred from another hospital"

// --- Arrival Mode ---
ValueSet: StrokeArrivalModeVS
Id: stroke-arrival-mode-vs
* ^url = StrokeArrivalModeVS_URL
* ^title = "Stroke Arrival Mode ValueSet"
* ^description = "ValueSet specifying the mode and origin of the patient's arrival."
* ^status = #active
* include codes from system StrokeArrivalModeCS_URL

CodeSystem: StrokeDischargeDestinationCS
Id: stroke-discharge-destination-cs
* ^url = StrokeDischargeDestinationCS_URL
* ^title = "Stroke Discharge Destination Code System"   
* ^description = "Codes indicating the possible destinations of the patient upon discharge from the encounter."
* ^status = #active
* ^experimental = true
* #dead "Patient Deceased" "The patient died during the hospital stay."

// --- Discharge Destination ---
ValueSet: StrokeDischargeDestinationVS
Id: stroke-discharge-destination-vs
* ^url = StrokeDischargeDestinationVS_URL
* ^title = "Stroke Discharge Destination ValueSet"
* ^description = "Defines the possible destinations of the patient upon discharge from the encounter."
* ^status = #active
* include SCT#306689006 "Discharge to home (procedure)"
* include SCT#37729005 "Patient transfer, in-hospital (procedure)" 
* include SCT#19712007 "Patient transfer, to another health care facility (procedure)"
* include SCT#306694006 "Discharge to nursing home (procedure)" 
// * include SCT#371828006 "Patient deceased during stay (discharge status = dead) (finding)" 
* include codes from system StrokeDischargeDestinationCS_URL

// --- Discharge Department/Service ---
ValueSet: DischargeDeptVS
Id: discharge-dept-vs
* ^url = DischargeDeptVS_URL
* ^title = "Discharge Department/Service ValueSet"
* ^description = "ValueSet specifying the type of department or service the patient was discharged or transferred to."
* ^status = #active
* include SCT#309940004 "Rehabilitation department (environment)"
* include SCT#309937004 "Neurology department (environment)"
* include SCT#441480003 "Primary care department (environment)"
* include SCT#309912009 "Medical department (environment)"

// --- Initial Care Intensity ---
CodeSystem: InitialCareIntensityCS
Id: initial-care-intensity-cs
* ^url = InitialCareIntensityCS_URL
* ^title = "Initial Care Intensity Code System"
* ^description = "Codes indicating the level of care provided during the patient's initial day(s) in the hospital."
* ^status = #active
* ^experimental = true 
* ^caseSensitive = false  
* #standard "Standard Bed" "Patient placed in a standard hospital bed without continuous monitoring."
* #monitored "Monitored Bed" "Patient placed in a bed with continuous telemetry or other monitoring (outside ICU)."
* #icu-stroke "ICU / Stroke Unit" "Patient placed in an Intensive Care Unit or specialized Stroke Unit."

ValueSet: InitialCareIntensityVS
Id: initial-care-intensity-vs
* ^url = InitialCareIntensityVS_URL
* ^title = "Initial Care Intensity ValueSet"
* ^description = "ValueSet indicating the level of care provided initially."
* ^status = #active
* include codes from system InitialCareIntensityCS_URL

// ------------------------- Extensions -------------------------------

Extension: FirstHospitalExtension
Id: first-hospital-ext
* ^url = FirstHospitalExt_URL
* ^title = "First Hospital Extension"
* ^description = "Indicates if the reporting hospital was the first medical facility to admit the patient for this stroke episode."
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* value[x] only boolean
* value[x] 1..1

Extension: InitialCareIntensityExtension
Id: initial-care-intensity-ext
* ^url = InitialCareIntensityExt_URL
* ^title = "Initial Care Intensity Extension"
* ^description = "Specifies the level of care provided during the patient's initial day(s) in the hospital (e.g., standard bed, monitored, ICU/Stroke Unit)."
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from InitialCareIntensityVS_URL (required)

Extension: RequiredPostAcuteCareExtension
Id: required-post-acute-care-ext
* ^url = RequiredPostAcuteCareExt_URL
* ^title = "Required Post-Acute Care Extension"
* ^description = "Indicates whether the patient required hospitalization beyond 24 hours after the designated acute phase of stroke care for this encounter."
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* value[x] only boolean
* value[x] 1..1

Extension: DischargeDepartmentServiceExtension
Id: discharge-department-service-ext
* ^url = DischargeDepartmentServiceExt_URL
* ^title = "Discharge Department/Service Extension"
* ^description = "Specifies the type of department or service the patient was discharged or transferred to."
* ^context[0].type = #element
* ^context[0].expression = "Encounter"
* value[x] only CodeableConcept
* value[x] 1..1
* value[x] from DischargeDeptVS_URL (required)

// ------------------------- Encounter Profile -------------------------

Profile: StrokeEncounterProfile
Id: stroke-encounter-profile
Parent: Encounter
* ^title = "Stroke Encounter Profile"
* ^description = "Profile for an Encounter resource representing a patient's hospital admission and stay for a stroke event, including key administrative and workflow details."
* ^status = #active

// Extensions
* extension contains FirstHospitalExtension named isFirstHospital 1..1 MS and
    InitialCareIntensityExtension named initialCareIntensity 1..1 MS and
    RequiredPostAcuteCareExtension named requiredPostAcuteCare 1..1 MS and
    DischargeDepartmentServiceExtension named dischargeDepartmentService 1..1 MS

// Standard Encounter Elements
* status 1..1 MS
* class = #IMP "inpatient encounter"
* class MS
* type MS // Consider defining a ValueSet for specific encounter types if needed

// Period (Start/End Dates)
* actualPeriod 1..1 MS
* actualPeriod.start 1..1 MS // hospital timestamp
* actualPeriod.end 0..1 MS // discharge date

* subject 1..1 
* subject MS // Reference to the patient
* subject only Reference(Patient) // Reference to the patient resource
// Length of Stay
* length MS

// Hospitalization Details
* admission 1..1 MS
* admission.admitSource 0..1 MS // arrival mode
* admission.admitSource from StrokeArrivalModeVS_URL (required)
* admission.dischargeDisposition 0..1 MS // discharge destination
* admission.dischargeDisposition from StrokeDischargeDestinationVS_URL (required)



Instance: PatientExample
InstanceOf: Patient
* id = "example-patient"

Instance: StrokeEncounterExample
InstanceOf: StrokeEncounterProfile
* status = #completed
* type = #inpatient "Inpatient Encounter"

* actualPeriod.start = 2025-03-01T08:00:00Z
* actualPeriod.end   = 2025-03-10T12:00:00Z
* length.value = 9
* length.unit  = "days"
* length.system = "http://unitsofmeasure.org"

* subject = Reference(PatientExample)

* admission.admitSource = SCT#715537001 "Transportation by ambulance (procedure)"
* admission.dischargeDisposition = SCT#306689006 "Discharge to home (procedure)"
* extension[isFirstHospital].valueBoolean = true
* extension[initialCareIntensity].valueCodeableConcept = InitialCareIntensityCS_URL#icu-stroke "ICU / Stroke Unit"
* extension[requiredPostAcuteCare].valueBoolean = false
* extension[dischargeDepartmentService].valueCodeableConcept = SCT#309937004 "Neurology department (environment)"
