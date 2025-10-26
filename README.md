# FarmGML-ADE 🚜
## FarmGML ADE v1.3
**Agricultural Domain Extension (ADE) for CityGML 3.0**

[![License: CC BY 4.0](https://img.shields.io/badge/License-CC%20BY%204.0-lightgrey.svg)](https://creativecommons.org/licenses/by/4.0/)
[![OGC Standard](https://img.shields.io/badge/OGC-CityGML%203.0-blue.svg)](https://www.ogc.org/standard/citygml/)
---

**FarmGML** is an *Application Domain Extension (ADE)* of **CityGML 3.0**, designed to represent **rural and agricultural features** in a 3D geospatial context.

It extends CityGML classes (such as `LandUse`, `Vegetation`, and `Building`) to model:
- Rural properties and agricultural enterprises  
- Crop areas, production cycles, and harvest lots  
- Risk and sustainability indicators  
- Integration with geospatial and remote-sensing data  

FarmGML enables integration between **3D city models**, **agricultural information systems**, **QGIS**, **3DCityDB**, and **CesiumJS** for **digital twins of rural areas**.

---

## 🧩 Version Information

| Field | Value |
|-------|-------|
| **ADE Name** | FarmGML |
| **Version** | 1.3 |
| **Target Standard** | OGC CityGML 3.0 |
| **Namespace URI** | `./schemas/ade/farmgml/1.3` |
| **Prefix** | `farm` |
| **Last Updated** | 2025-10-25 |
| **License** | Creative Commons Attribution 4.0 International (CC BY 4.0) |

---

## 🗂️ Repository Structure

FarmGML-ADE/
│
├── model/                  # UML/XMI source (conceptual model)
│   └── 1.3/
│       ├── FarmGML_v1.3.xmi
│       └── diagrams/
│
├── schemas/                # Generated schemas and examples (distribution)
│   ├── 1.3/
│   │   ├── FarmGML.xsd
│   │   ├── farm-core.xsd
│   │   ├── farm-production.xsd
│   │   ├── …
│   │   ├── codelists/
│   │   ├── examples/
│   │   │   └── example_ruralproperty.gml
│   │   └── metadata/
│   │       └── farmgml-metadata.yaml
│
├── tools/                  # Automation and validation tools
│   ├── shapechange-config/
│   │   └── farmgml_1.3_config.xml
│   ├── scripts/
│   │   ├── generate-xsd-from-uml.bat
│   │   └── validate-xsd.sh
│   └── validation/
│
├── docs/                   # Documentation and policies
│   ├── specification/
│   │   ├── FarmGML_Conceptual_Model.pdf
│   │   ├── FarmGML_Encoding_Specification.pdf
│   │   └── FarmGML_UseCases.pdf
│   ├── schema-reference/
│   │   └── 1.3/farmgml.html
│   └── policies/
│       └── namespace-policy.md
│
└── .ogc/                   # OGC submission metadata
├── submission-manifest.yaml
├── contact.json
└── ogc-registration.yaml
---

## ⚙️ Model-Driven Architecture (MDA) Workflow

FarmGML adopts a **Model-Driven Architecture** approach.  
All schemas and documentation are generated from the UML conceptual model.

**Workflow summary:**
1. Model conceptual features in UML (e.g., Enterprise Architect, MagicDraw).
2. Export UML → XMI (`model/1.3/FarmGML_v1.3.xmi`).
3. Configure **ShapeChange** using `tools/shapechange-config/farmgml_1.3_config.xml`.
4. Run ShapeChange to generate XSD modules under `schemas/1.3/`.
5. Validate using the included `validate-xsd.sh` script.
6. Test instances (`example_ruralproperty.gml`) with **3DCityDB**, **CesiumJS**, and **QGIS**.
---

## 🧪 Validation and Use Cases

FarmGML will be validate!

---
## 📚 References
	•	OGC CityGML 3.0 Specification (OGC 20-010)
	•	OGC Best Practice for ADE Development (Brink et al., 2013)
	•	3DCityDB ADE Manager
	•	CesiumJS (https://cesium.com/platform/cesiumjs)
	•	QGIS CityGML Plugin
---
## 👤 Contact

| **Name** | Eng. Igor Quintão |
|-------|-------|
| **Organization** | UNIVERSIDADE FEDERAL DE VIÇOSA - UFV |
|-------|-------|
| **Email** | igor.quintao@ufv.br |
|-------|-------|
| **Version** | FarmGML ADE v1.3 |
|-------|-------|
| **Date** | 2025-10-25 |
|-------|-------|
---

## © 2025 FarmGML ADE Project — Licensed under CC BY 4.0
Developed using Model-Driven Architecture principles (UML → ShapeChange → XSD)
