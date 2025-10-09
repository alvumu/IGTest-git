// -----------------------------------
// Alias
// -----------------------------------
Alias: StrokeRegistryIdSystem = https://stroke.qualityregistry.org

// -----------------------------------
// Profile
// -----------------------------------
Profile: StrokeRegistryOrganizationProfile
Id: stroke-registry-organization-profile
Parent: Organization
Title: "Stroke Registry Organization Profile"
Description: "Organization profile ensuring an active organization with a registry identifier (system=https://stroke.qualityregistry.org) and a required name, aligned with the build_organization() transformation."
* ^url = "http://testSK.org/StructureDefinition/stroke-registry-organization-profile"
* ^name = "StrokeRegistryOrganizationProfile"
* ^status = #active
* ^version = "1.0.0"
* ^date = "2025-10-09"
* ^experimental = false
* ^publisher = "Tecnomod"
* ^contact[0].telecom[0].system = #email
* ^contact[0].telecom[0].value = "alvaro.riquelmet@um.es"
* ^jurisdiction = urn:iso:std:iso:3166#ES "Spain"
* ^purpose = "To ensure a canonical form for Organizations used by the stroke quality registry, matching the ETL mapping (active=true, required name, and registry identifier)."
* ^type = "Organization"
* ^derivation = #constraint

// Active must be true
* active 1..1 MS
* active = true

// Name must be present (from raw['hospital_name'])
* name 1..1 MS

// Require at least one identifier; slice the registry identifier by system
* identifier 1..* MS
* identifier ^slicing.discriminator[0].type = #value
* identifier ^slicing.discriminator[0].path = "system"
* identifier ^slicing.rules = #open
* identifier contains registry 1..1 MS

// Fix the system for the registry slice and require value
* identifier[registry].system 1..1
* identifier[registry].system = StrokeRegistryIdSystem (exactly)
* identifier[registry].value 1..1 MS


Instance: ExampleStrokeOrganization
InstanceOf: StrokeRegistryOrganizationProfile
Title: "Example Stroke Registry Organization"
Description: "Matches build_organization: active=true, name from hospital_name, identifier from mapped_org_id."
* active = true
* name = "University Hospital of Boston"
* identifier[registry].system = StrokeRegistryIdSystem
* identifier[registry].value = "987654" 
