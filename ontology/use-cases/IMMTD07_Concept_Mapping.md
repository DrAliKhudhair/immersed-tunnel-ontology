# IMMTD07: Exchange of Segment Structural Data for Joint & Ancillary Facility Design - Concept Mapping

## Use Case Overview
**Description**: Define segment structural types, reinforcement, ballast layer thickness, and ancillary facilities based on loads and geological conditions. This phase is critical to ensure the structural integrity and long-term durability of the immersed tube tunnel.  
**Complexity**: High  
**Priority**: High  
**Coverage Status**: ✅ **100% COMPLETE**

---

## Input Data Requirements → Ontology Mapping

### Semantic Representation Requirements

#### Segment Quantities - Materials, Grades, and Performance Indicators
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| Concrete materials and grades | `ConcreteSpecification` | `materialQuantity`, `materialGrade`, `concreteStrength`, `cementType` | structural_systems | 🆕 Implemented |
| Steel materials and grades | `SteelSpecification` | `materialGrade`, `yieldStrength`, `steelGrade`, `performanceIndicator` | structural_systems | 🆕 Implemented |
| Material performance indicators | `SegmentMaterialData` | `performanceIndicator`, `materialQuantity`, `materialGrade` | structural_systems | 🆕 Implemented |
| Concrete additives and mix design | `ConcreteSpecification` | `additiveType`, `waterCementRatio`, `cementType` | structural_systems | 🆕 Implemented |

#### Reinforcement Data - Types, Materials, and Grades
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| Steel bar reinforcement | `SteelBarReinforcement` | `barDiameter`, `barSpacing`, `steelGrade`, `yieldStrength` | structural_systems | 🆕 Implemented |
| Steel strand reinforcement | `SteelStrandReinforcement` | `strandDiameter`, `strandTensileStrength`, `strandConfiguration` | structural_systems | 🆕 Implemented |
| Reinforcement ratio and layout | `SegmentReinforcementData` | `reinforcementRatio`, `barDiameter`, `barSpacing` | structural_systems | 🆕 Implemented |
| Reinforcement material specifications | `SteelSpecification` | `steelGrade`, `yieldStrength`, `performanceIndicator` | structural_systems | 🆕 Implemented |

#### Prestressing Data - Types and Performance Indicators
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| Prestressing strands | `PrestressingStrand` | `strandUltimateStrength`, `strandElongation`, `strandDiameter` | structural_systems | 🆕 Implemented |
| Prestressing tendons | `PrestressingTendon` | `tendonProfile`, `anchorageSystem`, `prestressingForce` | structural_systems | 🆕 Implemented |
| Prestressing force application | `PrestressingData` | `prestressingForce`, `strandUltimateStrength`, `strandElongation` | structural_systems | 🆕 Implemented |
| Performance indicators | `PrestressingStrand` | `strandUltimateStrength`, `strandElongation` | structural_systems | 🆕 Implemented |

#### Ballast Layer Design - Thickness, Material Properties, and Arrangement
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| Ballast layer thickness | `BallastLayerDesign` | `ballastThickness`, `ballastDensity` | structural_systems | 🆕 Implemented |
| Ballast material properties | `BallastMaterial` | `ballastDensity`, `aggregateGradation` | structural_systems | 🆕 Implemented |
| Ballast arrangement requirements | `BallastPlacement` | `placementSequence`, `compactionRequirement` | structural_systems | 🆕 Implemented |
| Material performance | `BallastMaterial` | `ballastDensity`, `aggregateGradation` | structural_systems | 🆕 Implemented |

### Geometric Representation Requirements

#### Input Geometry
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| Cross-sectional dimensions of segments | `SegmentGeometry` | `segmentLength`, `segmentWidth`, `segmentHeight`, `crossSectionalDimensions` | structural_systems | ✅ Existing (IMMTD06) |
| Reinforcement placement and size | `SteelBarReinforcement` | `barDiameter`, `barSpacing` | structural_systems | 🆕 Implemented |
| Prestressing steel strand placement | `PrestressingTendon` | `tendonProfile`, `anchorageSystem` | structural_systems | 🆕 Implemented |
| Load and geological context | `LoadAnalysis`, `GeologicalStratificationModel` | Load properties, geological parameters | engineering_design_analysis, geotechnical_foundation_systems | ✅ Existing (IMMTD01, IMMTD05) |

---

## Output Data Requirements → Ontology Mapping

### Joint Design Specifications
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| Joint waterproofing specifications | `JointWaterproofingDesign` | `gasketSpecification`, `sealingPressure`, `waterPressureResistance` | structural_systems | 🆕 Implemented |
| Deformation tolerances | `JointDeformationTolerance` | `deformationTolerance`, `rotationLimit`, `displacementCapacity` | structural_systems | 🆕 Implemented |
| Load transfer properties | `LoadTransferRequirement` | `structuralCapacity`, `forceDistribution` | structural_systems | ✅ Existing (IMMTD06) |
| Detailed joint design | `DetailedJointDesign` | All joint specification properties | structural_systems | 🆕 Implemented |

### Ancillary Facility Design Details
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| Ballast layer placement | `BallastPlacement` | `placementSequence`, `compactionRequirement`, `ballastThickness` | structural_systems | 🆕 Implemented |
| Roadway cross slopes | `RoadwayCrossSlope` | `crossSlopeGradient`, `surfaceProfile` | structural_systems | 🆕 Implemented |
| Ancillary facility dimensions | `AncillaryFacilityDesign` | Cross slope, drainage, utility properties | structural_systems | 🆕 Implemented |
| Drainage system design | `DrainageSystem` | `drainageCapacity`, `pumpSystemType` | structural_systems | 🆕 Implemented |
| Utility accommodations | `UtilityAccommodation` | `utilityConduitSize`, `accessProvision` | structural_systems | 🆕 Implemented |

### Output Geometry
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| Joint dimensions and locations | `JointGeometry` | `jointAngle`, `transitionPoints`, `finalJointPosition` | structural_systems | ✅ Existing (IMMTD06) |
| Ballast layer arrangement and thickness | `BallastLayerDesign` | `ballastThickness`, `placementSequence` | structural_systems | 🆕 Implemented |
| Roadway cross slope dimensions | `RoadwayCrossSlope` | `crossSlopeGradient`, `surfaceProfile` | structural_systems | 🆕 Implemented |
| Ancillary facility dimensions | `AncillaryFacilityDesign` | Combined facility design properties | structural_systems | 🆕 Implemented |

### External Waterproofing and Durability Design
| Use Case Requirement | Ontology Class | Properties | Module | Status |
|---------------------|----------------|------------|---------|---------|
| External waterproofing system | `ExternalWaterproofingSystem` | `membraneThickness`, `membraneType` | structural_systems | 🆕 Implemented |
| Waterproofing membrane specifications | `WaterproofingMembrane` | `membraneThickness`, `membraneType` | structural_systems | 🆕 Implemented |
| Protection layer design | `ProtectionLayer` | `protectionLayerThickness`, `protectionMaterial` | structural_systems | 🆕 Implemented |
| Durability design specifications | `DurabilityDesign` | `exposureClass`, `serviceLife` | structural_systems | 🆕 Implemented |
| Concrete cover requirements | `ConcreteCover` | `minimumCoverDepth` | structural_systems | 🆕 Implemented |
| Corrosion protection measures | `CorrosionProtection` | `corrosionInhibitor`, `protectiveCoating` | structural_systems | 🆕 Implemented |

---

## Personnel Roles → Ontology Mapping

| Use Case Role | Ontology Class | Role Description | Module | Status |
|---------------|----------------|------------------|---------|---------|
| Structural Engineer | `StructuralEngineer` | Detailed segment design and structural analysis | taxonomy | ✅ Existing (from IMMTD01) |
| Waterproofing Specialist | `WaterproofingSpecialist` | External waterproofing design and durability specifications | taxonomy | 🆕 Implemented |
| Durability Engineer | `DurabilityEngineer` | Long-term durability analysis and material performance | taxonomy | 🆕 Implemented |
| Design Coordinator | `DesignCoordinator` | Multi-discipline design coordination | taxonomy | ✅ Existing (from IMMTD03) |
| Geotechnical Engineer | `GeotechnicalEngineer` | Geological conditions and foundation interface | taxonomy | ✅ Existing (from IMMTD01) |
| Hydrodynamic Specialist | `HydrodynamicSpecialist` | Flow analysis and water pressure calculations | taxonomy | ✅ Existing (from IMMTD01) |

---

## Exchange Scenarios → Ontology Support

### Sender/Receiver Relationships
| Sender | Receiver | Data Type | Ontology Support |
|--------|----------|-----------|------------------|
| Immersed Tube Structure Designer | Immersed Tube External Waterproofing Designer | Segment structural data, material specifications | `SegmentStructuralData`, `SegmentMaterialData`, `SegmentReinforcementData` |
| Immersed Tube Structure Designer | Durability Designer | Material specifications, exposure conditions | `DurabilityDesign`, `ConcreteSpecification`, `CorrosionProtection` |
| Segment Designer | Joint Designer | Joint interface requirements, load transfer | `DetailedJointDesign`, `JointWaterproofingDesign`, `JointDeformationTolerance` |
| Structural Designer | Ancillary Facility Designer | Facility accommodation requirements | `AncillaryFacilityDesign`, `BallastLayerDesign`, `RoadwayCrossSlope` |

---

## Project Phase Coverage

### Design Phase ✅
- **Detailed structural design**: `SegmentStructuralData`, `SegmentMaterialData`, `SegmentReinforcementData`
- **Material specifications**: `ConcreteSpecification`, `SteelSpecification`, `PrestressingData`
- **Joint design**: `DetailedJointDesign`, `JointWaterproofingDesign`, `JointDeformationTolerance`
- **Ancillary facilities**: `AncillaryFacilityDesign`, `BallastLayerDesign`, `RoadwayCrossSlope`
- **Waterproofing design**: `ExternalWaterproofingSystem`, `WaterproofingMembrane`, `ProtectionLayer`
- **Durability design**: `DurabilityDesign`, `ConcreteCover`, `CorrosionProtection`

---

## Implementation Statistics

### Coverage Metrics
- **Input Semantic Requirements**: 16/16 ✅ (100%)
- **Input Geometric Requirements**: 4/4 ✅ (100%)
- **Output Requirements**: 18/18 ✅ (100%)
- **Personnel Roles**: 6/6 ✅ (100%)
- **Exchange Scenarios**: 4/4 ✅ (100%)
- **Project Phases**: 1/1 ✅ (100%)

### New Implementations for IMMTD07
- **Classes Added**: 21 new structural design and material specification classes
- **Properties Added**: 45+ specialized properties for detailed structural design
- **Personnel Roles**: 2 new roles (WaterproofingSpecialist, DurabilityEngineer)
- **Modules Enhanced**: structural_systems.owl, taxonomy.owl

### Property Categories
- **Material Properties**: `materialQuantity`, `materialGrade`, `performanceIndicator`, `concreteStrength`, `steelGrade`
- **Reinforcement Properties**: `barDiameter`, `barSpacing`, `reinforcementRatio`, `strandDiameter`, `strandTensileStrength`
- **Prestressing Properties**: `prestressingForce`, `strandUltimateStrength`, `tendonProfile`, `anchorageSystem`
- **Ballast Properties**: `ballastThickness`, `ballastDensity`, `aggregateGradation`, `placementSequence`
- **Joint Properties**: `deformationTolerance`, `rotationLimit`, `gasketSpecification`, `sealingPressure`
- **Waterproofing Properties**: `membraneThickness`, `membraneType`, `protectionLayerThickness`
- **Durability Properties**: `minimumCoverDepth`, `exposureClass`, `serviceLife`, `corrosionInhibitor`

---

## Detailed Property Mapping

### Material Specification Properties
```
materialQuantity: rdfs:range xsd:decimal
materialGrade: rdfs:range xsd:string
concreteStrength: rdfs:range xsd:decimal
yieldStrength: rdfs:range xsd:decimal
waterCementRatio: rdfs:range xsd:decimal
```

### Reinforcement Properties
```
barDiameter: rdfs:range xsd:decimal
barSpacing: rdfs:range xsd:decimal
reinforcementRatio: rdfs:range xsd:decimal
strandDiameter: rdfs:range xsd:decimal
strandTensileStrength: rdfs:range xsd:decimal
```

### Prestressing Properties
```
prestressingForce: rdfs:range xsd:decimal
strandUltimateStrength: rdfs:range xsd:decimal
strandElongation: rdfs:range xsd:decimal
tendonProfile: rdfs:range xsd:string
anchorageSystem: rdfs:range xsd:string
```

### Ballast and Ancillary Properties
```
ballastThickness: rdfs:range xsd:decimal
ballastDensity: rdfs:range xsd:decimal
crossSlopeGradient: rdfs:range xsd:decimal
drainageCapacity: rdfs:range xsd:decimal
utilityConduitSize: rdfs:range xsd:decimal
```

### Waterproofing and Durability Properties
```
membraneThickness: rdfs:range xsd:decimal
protectionLayerThickness: rdfs:range xsd:decimal
minimumCoverDepth: rdfs:range xsd:decimal
serviceLife: rdfs:range xsd:integer
deformationTolerance: rdfs:range xsd:decimal
```

---

## Segment Structural Design Process Integration

### Design Flow Coordination
IMMTD07 establishes comprehensive structural design with detailed material and system specifications:

#### 1. Material Specification and Quantification
- **Input**: Load requirements, environmental conditions, durability requirements
- **Ontology Support**: `SegmentMaterialData`, `ConcreteSpecification`, `SteelSpecification`
- **Process**: Define material grades, quantities, and performance indicators
- **Output**: Complete material specifications with performance requirements

#### 2. Reinforcement Design and Layout
- **Input**: Structural loads, design codes, material specifications
- **Ontology Support**: `SegmentReinforcementData`, `SteelBarReinforcement`, `SteelStrandReinforcement`
- **Process**: Design reinforcement layout, spacing, and configuration
- **Output**: Detailed reinforcement drawings and specifications

#### 3. Prestressing System Design
- **Input**: Structural requirements, span limitations, construction constraints
- **Ontology Support**: `PrestressingData`, `PrestressingStrand`, `PrestressingTendon`
- **Process**: Design prestressing systems with anchorage and profile optimization
- **Output**: Prestressing specifications with force and geometry requirements

#### 4. Joint Design Integration
- **Input**: Segment structural data, deformation requirements, waterproofing needs
- **Ontology Support**: `DetailedJointDesign`, `JointWaterproofingDesign`, `JointDeformationTolerance`
- **Process**: Design joint systems with waterproofing and tolerance specifications
- **Output**: Complete joint specifications for construction

#### 5. Ballast Layer and Ancillary Design
- **Input**: Stability requirements, operational needs, drainage requirements
- **Ontology Support**: `BallastLayerDesign`, `AncillaryFacilityDesign`, `RoadwayCrossSlope`
- **Process**: Design ballast systems and ancillary facilities
- **Output**: Complete facility design with placement specifications

#### 6. Waterproofing and Durability Design
- **Input**: Environmental exposure, service life requirements, maintenance considerations
- **Ontology Support**: `ExternalWaterproofingSystem`, `DurabilityDesign`, `CorrosionProtection`
- **Process**: Design comprehensive waterproofing and durability measures
- **Output**: Long-term protection specifications

---

## Standards Compliance

### Referenced Standards
- **GB/T 51318-2019**: Immersed tunnel structural design and material specifications
- **JTG 2120-2020**: Highway tunnel reinforcement and prestressing requirements
- **JTG/T 3371-2022**: Waterproofing and joint sealing specifications
- **GB 50010**: Concrete structure design code
- **GB 50017**: Steel structure design standard
- **JGJ 107**: Technical specification for mechanical splicing of steel bars

### Compliance Verification
- ✅ Material specifications follow GB/T 51318-2019 requirements
- ✅ Reinforcement design aligns with JTG 2120-2020 standards
- ✅ Prestressing systems meet GB 50010 specifications
- ✅ Waterproofing requirements comply with JTG/T 3371-2022
- ✅ Durability design follows exposure class standards

---

## Integration Notes

### Reusable Concepts from Previous Use Cases
- **From IMMTD01**: `StructuralEngineer`, `GeotechnicalEngineer`, `HydrodynamicSpecialist`
- **From IMMTD03**: `DesignCoordinator`, `CrossSectionDesign`
- **From IMMTD06**: `TunnelSegment`, `SegmentGeometry`, `JointSpecification`, `JointGeometry`
- **From IMMTD05**: `GeologicalStratificationModel`, `LoadAnalysis`

### New Concepts for Future Use Cases
The following IMMTD07 concepts will be reused in other use cases:
- `SegmentStructuralData`, `SegmentMaterialData` → Construction planning and quality control
- `DetailedJointDesign`, `JointWaterproofingDesign` → Installation and commissioning
- `ExternalWaterproofingSystem`, `DurabilityDesign` → Maintenance and lifecycle management
- `BallastLayerDesign`, `AncillaryFacilityDesign` → Construction sequencing and operations

### IFC Schema Preparation
All IMMTD07 concepts are structured for direct conversion to IFC entities:
- Material entities map to IfcMaterial and IfcMaterialProperties extensions
- Reinforcement entities map to IfcReinforcementElement extensions
- Prestressing entities map to IfcTendon and IfcTendonAnchor extensions
- Joint entities map to IfcJoint and IfcSealant extensions
- Waterproofing entities map to IfcCovering and IfcMembrane extensions

### Multi-Discipline Coordination Support
IMMTD07 establishes comprehensive coordination between:
- **Structural Design ↔ Material Specification**: Through `SegmentStructuralData` and `SegmentMaterialData`
- **Reinforcement Design ↔ Prestressing**: Through `SegmentReinforcementData` and `PrestressingData`
- **Joint Design ↔ Waterproofing**: Through `DetailedJointDesign` and `JointWaterproofingDesign`
- **Structural Design ↔ Durability**: Through `DurabilityDesign` and `CorrosionProtection`
- **Facility Design ↔ Operations**: Through `AncillaryFacilityDesign` and operational requirements

---

## IMMTD07 Design Process Flow

The use case establishes the following comprehensive design workflow:

### Phase 1: Material Specification and Design
1. **Material Selection** → Define concrete and steel grades based on structural requirements
2. **Performance Specification** → Establish material performance indicators and quality requirements
3. **Quantity Estimation** → Calculate material quantities for construction planning
4. **Quality Control** → Define testing and acceptance criteria

### Phase 2: Reinforcement and Prestressing Design
1. **Load Analysis** → Analyze structural loads and design requirements
2. **Reinforcement Layout** → Design conventional reinforcement layout and spacing
3. **Prestressing Design** → Design prestressing systems with anchorage details
4. **Integration Verification** → Verify compatibility between systems

### Phase 3: Joint and Interface Design
1. **Joint Requirements** → Define structural and waterproofing requirements
2. **Deformation Analysis** → Calculate allowable deformations and tolerances
3. **Waterproofing Design** → Design comprehensive sealing systems
4. **Load Transfer Design** → Ensure adequate load transfer capacity

### Phase 4: Ancillary Facility Integration
1. **Ballast Design** → Design ballast systems for stability and buoyancy control
2. **Drainage Design** → Design drainage systems for operational requirements
3. **Utility Integration** → Design utility accommodations and access provisions
4. **Roadway Design** → Design roadway cross slopes and surface profiles

### Phase 5: Waterproofing and Durability
1. **Exposure Assessment** → Evaluate environmental exposure conditions
2. **Membrane Design** → Design external waterproofing membrane systems
3. **Protection Design** → Design protection layers and durability measures
4. **Service Life Verification** → Verify design service life requirements

This comprehensive workflow ensures complete structural design from material specification through detailed construction documentation, providing all necessary data for subsequent construction and operational phases. 