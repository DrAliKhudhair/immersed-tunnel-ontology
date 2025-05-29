# IMMTD01: Exchange of Initial Design Requirements & Constraints - Concept Mapping

## Use Case Overview
**Description**: Exchange of initial design requirements and constraints between project stakeholders  
**Complexity**: Low  
**Priority**: Medium  
**Coverage Status**: ✅ **100% COMPLETE**

---

## Input Data Requirements → Ontology Mapping

### Site and Environmental Data
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| Geotechnical data | `GeotechnicalInvestigation` | `bearingCapacity`, `settlementLimit` | site_environmental_systems | ✅ Existing |
| Hydrological/bathymetric data | `HydrographicSurvey` | `waterDepth`, `tidalRange` | site_environmental_systems | ✅ Existing |
| Environmental constraints | `EnvironmentalInvestigation` | `environmentalCategory`, `turbidity` | site_environmental_systems | ✅ Existing |
| Water quality data | `WaterQualityAssessment` | `turbidity`, `airQualityIndex` | site_environmental_systems | ✅ Existing |
| Marine construction environment | `MarineConstructionEnvironment` | `currentVelocity`, `waveHeight` | core | ✅ Existing |

### Project Requirements
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| Safety requirements | `SafetyRequirement` | `requirementType`, `complianceLevel` | core | ✅ Existing |
| Environmental requirements | `EnvironmentalRequirement` | `environmentalCategory`, `protectionLevel` | core | ✅ Existing |
| Regulatory standards | `Standard` | `standardCode`, `version` | taxonomy | ✅ Existing |
| Design specifications | `TechnicalSpecification` | `specificationVersion`, `applicabilityScope` | core | ✅ Existing |

---

## Output Data Requirements → Ontology Mapping

### Design Principles and Guidelines
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| Design principles | `DesignPrinciple` | `principleType`, `designScope` | core | 🆕 Implemented |
| Alignment principles | `AlignmentPrinciple` | `alignmentType`, `geometricConstraints` | core | 🆕 Implemented |
| Segment dimension principles | `SegmentDimensionPrinciple` | `dimensionType`, `sizeConstraints` | core | 🆕 Implemented |
| Joint requirement principles | `JointRequirementPrinciple` | `jointType`, `performanceRequirements` | core | 🆕 Implemented |

### Design Challenges and Guidelines
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| Design challenges | `DesignChallenge` | `challengeType`, `complexityLevel` | core | 🆕 Implemented |
| Waterproofing challenges | `WaterproofingChallenge` | `challengeDescription`, `mitigationStrategy` | core | 🆕 Implemented |
| Load bearing challenges | `LoadBearingCapacityChallenge` | `challengeScope`, `technicalSolution` | core | 🆕 Implemented |
| Preliminary design guidelines | `PreliminaryDesignGuideline` | `guidelineType`, `applicationScope` | core | 🆕 Implemented |
| Structural performance guidelines | `StructuralPerformanceGuideline` | `performanceType`, `acceptanceCriteria` | core | 🆕 Implemented |
| Hydraulic performance guidelines | `HydraulicPerformanceGuideline` | `hydraulicRequirement`, `flowCriteria` | core | 🆕 Implemented |

---

## Personnel Roles → Ontology Mapping

| Use Case Role | Ontology Class | Responsibilities | Module | Status |
|---------------|----------------|------------------|---------|---------|
| Project Manager | `ProjectManager` | Overall project coordination | taxonomy | 🆕 Implemented |
| Client/Owner/Sponsor | `ClientOwnerSponsor` | Requirements definition and approval | taxonomy | 🆕 Implemented |
| Geotechnical Engineer | `GeotechnicalEngineer` | Soil investigation and analysis | taxonomy | 🆕 Implemented |
| Structural Engineer | `StructuralEngineer` | Structural design and analysis | taxonomy | 🆕 Implemented |
| Hydrodynamic Specialist | `HydrodynamicSpecialist` | Flow analysis and modeling | taxonomy | 🆕 Implemented |
| Environmental Engineer | `EnvironmentalEngineer` | Environmental assessment | taxonomy | 🆕 Implemented |

---

## Exchange Scenarios → Ontology Support

### Sender/Receiver Relationships
| Sender | Receiver | Data Type | Ontology Support |
|--------|----------|-----------|------------------|
| Client/Owner/Sponsor | Immersed Tube Structure Discipline | Project requirements | `SafetyRequirement`, `EnvironmentalRequirement` |
| Geotechnical Engineer | Structural Engineer | Site investigation data | `GeotechnicalInvestigation`, `PhysicalMechanicalParameters` |
| Environmental Engineer | Design Team | Environmental constraints | `EnvironmentalInvestigation`, `EnvironmentalCategory` |
| Hydrodynamic Specialist | Design Team | Marine conditions | `HydrographicSurvey`, `CurrentMonitoring` |

---

## Project Phase Coverage

### Brief Phase ✅
- Requirements gathering: `SafetyRequirement`, `EnvironmentalRequirement`
- Initial site assessment: `SiteInvestigation`, `EnvironmentalInvestigation`
- Stakeholder identification: `ProjectManager`, `ClientOwnerSponsor`

### Design Phase ✅  
- Design principle development: `DesignPrinciple`, `AlignmentPrinciple`
- Challenge identification: `DesignChallenge`, `WaterproofingChallenge`
- Guideline establishment: `PreliminaryDesignGuideline`, `StructuralPerformanceGuideline`

---

## Implementation Statistics

### Coverage Metrics
- **Input Data Types**: 9/9 ✅ (100%)
- **Output Data Types**: 10/10 ✅ (100%)
- **Personnel Roles**: 6/6 ✅ (100%)
- **Exchange Scenarios**: 4/4 ✅ (100%)
- **Project Phases**: 2/2 ✅ (100%)

### New Implementations for IMMTD01
- **Classes Added**: 13 new design-related classes
- **Properties Added**: 20+ specialized properties
- **Personnel Roles**: 6 new stakeholder roles
- **Modules Enhanced**: core.owl, taxonomy.owl

### Property Categories
- **Requirement Properties**: `requirementType`, `complianceLevel`, `protectionLevel`
- **Design Properties**: `principleType`, `designScope`, `challengeType`, `complexityLevel`
- **Performance Properties**: `performanceRequirements`, `acceptanceCriteria`, `flowCriteria`
- **Constraint Properties**: `geometricConstraints`, `sizeConstraints`, `applicationScope`

---

## Standards Compliance

### Referenced Standards
- **GB/T 51318-2019**: Immersed tunnel engineering standards
- **JTG 2120-2020**: Highway tunnel design specifications  
- **JTG/T 3371-2022**: Environmental classification guidelines
- **HPDI Classification**: Industry-standard component classification

### Compliance Verification
- ✅ Environmental categories align with JTG/T 3371-2022
- ✅ Safety requirements follow GB/T 51318-2019
- ✅ Design principles support JTG 2120-2020 methodologies
- ✅ Personnel roles match HPDI classification structure

---

## Integration Notes

### Reusable Concepts
The following concepts from IMMTD01 are reused in other use cases:
- `GeotechnicalEngineer`, `StructuralEngineer`, `EnvironmentalEngineer` → Used in IMMTD02
- `GeotechnicalInvestigation`, `HydrographicSurvey` → Used in IMMTD02
- `SafetyRequirement`, `EnvironmentalRequirement` → Used across multiple use cases

### IFC Schema Preparation
All IMMTD01 concepts are structured for direct conversion to IFC entities:
- Proper class hierarchies with `rdfs:subClassOf`
- Domain/range constraints on properties
- No instance data (schema-focused approach)
- Modular organization for selective implementation

This mapping demonstrates complete coverage of IMMTD01 requirements and provides a solid foundation for IFC 4.3 extension development in the immersed tunnel domain. 