---
title: Home
layout: default
---

## Home

The [RES-Q Stroke Registry](https://stroke.qualityregistry.org/) mission is to empower hospitals and healthcare providers to monitor, evaluate, and enhance the quality of health care. Today, more than 2,000 hospitals across 89 countries actively contribute data to RES-Q, making it one of the largest international stroke quality registries. 
The RES-Q platform provides hospitals with interactive dashboards and customizable reports, enabling them to benchmark performance, identify gaps, and implement targeted improvements in clinical practice.
Within RES-Q, stroke-related data is systematically collected using a dedicated [data collection form](https://stroke.qualityregistry.org/useful-information/data-collection-form) which ensures consistency in reporting across participating institutions. However, integrating data from external systems into RES-Q can be complex and often requires manual work or bespoke ETL pipelines.
This implementation guide addresses that challenge by describing how to model your data using HL7 FHIR, following the RES-Q profiles and value sets. By adopting this standardized approach, registries and hospitals can align their data with RES-Q requirements, reduce integration effort, and benefit from a uniform interface for exchanging information. Ultimately, this not only simplifies participation in RES-Q but also strengthens interoperability with other health information systems.

---
### Purpose

The goal of this Implementation Guide is to specify how to represent in HL7 FHIR the RES-Q Stroke registry. 

### Project Backgound

This work has been made as part of the [RES-Q+ project](https://www.resqplus.eu)

### Authors and Contributors

| Role           | Name              | Organization                  | Contact                          |
|----------------|-------------------|-------------------------------|----------------------------------|
| Primary Editor | Álvaro Riquelme   | University of Murcia, Spain   | alvaro.riquelmet@um.es           |
| Primary Editor | Catalina Martínez Costa     | University of Murcia, Spain             | cmartinezcosta@um.es      |


## 🔖 Narratives by folder


### Profiles
{% include list-folder.html srcpath='profiles' %}

### Extensions
{% include list-folder.html srcpath='extensions' %}

### CodeSystems
{% include list-folder.html srcpath='codesystems' %}

### ValueSets
{% include list-folder.html srcpath='valuesets' %}

### Examples
{% include list-folder.html srcpath='examples' %}

---
