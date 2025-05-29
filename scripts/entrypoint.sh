#!/bin/bash
set -e

echo "========================================="
echo "IMMERSED TUNNEL ONTOLOGY DOCUMENTATION"
echo "GBT 51318-2019 COMPLIANT"
echo "========================================="

# Run Widoco with the arguments passed from docker-compose
echo "Generating comprehensive documentation for main modular ontology..."
java $JAVA_OPTS -jar /app/widoco.jar "$@"

echo "Documentation generation completed!"

echo "========================================="
echo "CORE FOUNDATION MODULES (4 modules)"
echo "========================================="

# Core Foundation Module
echo "Generating documentation for core module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/core.owl \
  -outFolder /app/output/modules/core \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Taxonomy Module
echo "Generating documentation for taxonomy module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/taxonomy.owl \
  -outFolder /app/output/modules/taxonomy \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Meronomy Module
echo "Generating documentation for meronomy module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/meronomy.owl \
  -outFolder /app/output/modules/meronomy \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Properties Module
echo "Generating documentation for properties module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/properties.owl \
  -outFolder /app/output/modules/properties \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

echo "========================================="
echo "SYSTEM MODULES (6 modules)"
echo "========================================="

# Safety and Emergency Systems
echo "Generating documentation for systems_safety_emergency module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/systems_safety_emergency.owl \
  -outFolder /app/output/modules/systems_safety_emergency \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Mechanical and Electrical Systems
echo "Generating documentation for systems_mechanical_electrical module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/systems_mechanical_electrical.owl \
  -outFolder /app/output/modules/systems_mechanical_electrical \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Drainage and Utilities Systems
echo "Generating documentation for systems_drainage_utilities module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/systems_drainage_utilities.owl \
  -outFolder /app/output/modules/systems_drainage_utilities \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Monitoring and Instrumentation Systems
echo "Generating documentation for systems_monitoring_instrumentation module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/systems_monitoring_instrumentation.owl \
  -outFolder /app/output/modules/systems_monitoring_instrumentation \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Facilities Temporary and Permanent Systems
echo "Generating documentation for systems_facilities_temporary_permanent module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/systems_facilities_temporary_permanent.owl \
  -outFolder /app/output/modules/systems_facilities_temporary_permanent \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Traffic and Transportation Systems
echo "Generating documentation for systems_traffic_transportation module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/systems_traffic_transportation.owl \
  -outFolder /app/output/modules/systems_traffic_transportation \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

echo "========================================="
echo "TECHNICAL & MANAGEMENT MODULES (10 modules)"
echo "========================================="

# Engineering Design and Analysis
echo "Generating documentation for engineering_design_analysis module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/engineering_design_analysis.owl \
  -outFolder /app/output/modules/engineering_design_analysis \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Construction Processes and Methods
echo "Generating documentation for construction_processes_methods module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/construction_processes_methods.owl \
  -outFolder /app/output/modules/construction_processes_methods \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Site and Environmental Systems
echo "Generating documentation for site_environmental_systems module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/site_environmental_systems.owl \
  -outFolder /app/output/modules/site_environmental_systems \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Geotechnical and Foundation Systems
echo "Generating documentation for geotechnical_foundation_systems module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/geotechnical_foundation_systems.owl \
  -outFolder /app/output/modules/geotechnical_foundation_systems \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Structural Systems (MAIN MODULE)
echo "Generating documentation for structural_systems module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/structural_systems.owl \
  -outFolder /app/output/modules/structural_systems \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Structural Systems Components
echo "Generating documentation for structural_systems_components module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/structural_systems_components.owl \
  -outFolder /app/output/modules/structural_systems_components \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Materials and Quality Systems
echo "Generating documentation for materials_quality_systems module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/materials_quality_systems.owl \
  -outFolder /app/output/modules/materials_quality_systems \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Maintenance and Operations
echo "Generating documentation for maintenance_operations module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/maintenance_operations.owl \
  -outFolder /app/output/modules/maintenance_operations \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

# Immersed Tunnel Spatial Extensions
echo "Generating documentation for immersed_tunnel_spatial_extensions module..."
java $JAVA_OPTS -jar /app/widoco.jar \
  -ontFile ontology/modulars/immersed_tunnel_spatial_extensions.owl \
  -outFolder /app/output/modules/immersed_tunnel_spatial_extensions \
  -uniteSections \
  -lang en \
  -getOntologyMetadata \
  -webVowl \
  -rewriteAll

echo "========================================="
echo "CREATING COMPREHENSIVE DOCUMENTATION INDEX"
echo "========================================="

# Copy the core WebVOWL files to main documentation (richest content)
echo "Copying WebVOWL visualizations to main documentation..."
if [ -d "/app/output/modules/core/webvowl" ]; then
  cp -r /app/output/modules/core/webvowl/* /app/output/webvowl/
fi

# Create comprehensive documentation index following the user's structure
echo "Creating comprehensive documentation index..."
cat > /app/output/modules_index.html << 'EOF'
<!DOCTYPE html>
<html>
<head>
    <title>Immersed Tunnel Engineering Ontology - GBT 51318-2019 Compliant Documentation</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 40px; line-height: 1.6; }
        .header { background: #2c5aa0; color: white; padding: 20px; border-radius: 5px; margin-bottom: 30px; }
        .category { margin: 30px 0; padding: 20px; border: 2px solid #2c5aa0; border-radius: 10px; }
        .category h2 { color: #2c5aa0; margin-top: 0; border-bottom: 2px solid #2c5aa0; padding-bottom: 10px; }
        .module { margin: 15px 0; padding: 15px; border: 1px solid #ddd; border-radius: 5px; background: #f9f9f9; }
        .module h3 { color: #2c5aa0; margin-top: 0; }
        .links a { margin-right: 15px; text-decoration: none; color: #2c5aa0; font-weight: bold; }
        .links a:hover { text-decoration: underline; }
        .note { background: #e8f4f8; padding: 15px; border-radius: 5px; margin: 20px 0; border-left: 5px solid #2c5aa0; }
        .main-docs { background: #f0f8ff; border: 2px solid #2c5aa0; margin-bottom: 30px; }
    </style>
</head>
<body>
    <div class="header">
        <h1>🏗️ Immersed Tunnel Engineering Ontology</h1>
        <h2>GBT 51318-2019 Standards Compliant Documentation</h2>
        <p>Comprehensive semantic infrastructure for tunnel engineering design, construction, and operation processes</p>
    </div>

    <div class="note">
        <h4>📋 Documentation Structure:</h4>
        <p>This ontology follows the modular architecture specified in GBT 51318-2019 with 20 specialized modules organized into three main categories:</p>
        <ul>
            <li><strong>4 Core Foundation Modules:</strong> Core semantic infrastructure and taxonomic organization</li>
            <li><strong>6 System Modules:</strong> Operational and safety systems for tunnel infrastructure</li>
            <li><strong>10 Technical & Management Modules:</strong> Engineering domains with comprehensive coverage</li>
        </ul>
    </div>

    <div class="category main-docs">
        <h2>📖 Main Documentation</h2>
        <div class="module">
            <h3>Complete Modular Ontology</h3>
            <p>Main ontology structure with imports from all 19 modules and comprehensive WebVOWL visualization.</p>
            <div class="links">
                <a href="index-en.html" target="_blank">📖 Main Documentation</a>
                <a href="webvowl/" target="_blank">🎨 WebVOWL Visualization</a>
            </div>
        </div>
    </div>

    <div class="category">
        <h2>🏗️ Core Foundation Modules (4 modules)</h2>
        
        <div class="module">
            <h3>core</h3>
            <p>Core semantic infrastructure including base classes, fundamental concepts, and project deliverables.</p>
            <div class="links">
                <a href="modules/core/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/core/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>taxonomy</h3>
            <p>Taxonomic organization providing comprehensive classification framework for immersed tunnel domain.</p>
            <div class="links">
                <a href="modules/taxonomy/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/taxonomy/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>meronomy</h3>
            <p>Part-whole relationships and spatial organization within immersed tunnel systems.</p>
            <div class="links">
                <a href="modules/meronomy/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/meronomy/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>properties</h3>
            <p>Comprehensive property definitions and datatype specifications for ontology attributes.</p>
            <div class="links">
                <a href="modules/properties/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/properties/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
    </div>

    <div class="category">
        <h2>⚙️ System Modules (6 modules)</h2>
        
        <div class="module">
            <h3>systems_safety_emergency</h3>
            <p>Safety and emergency systems including fire protection, evacuation, and emergency response.</p>
            <div class="links">
                <a href="modules/systems_safety_emergency/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/systems_safety_emergency/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>systems_mechanical_electrical</h3>
            <p>Mechanical and electrical systems for tunnel operation and infrastructure support.</p>
            <div class="links">
                <a href="modules/systems_mechanical_electrical/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/systems_mechanical_electrical/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>systems_drainage_utilities</h3>
            <p>Drainage systems and utility infrastructure for tunnel environments.</p>
            <div class="links">
                <a href="modules/systems_drainage_utilities/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/systems_drainage_utilities/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>systems_monitoring_instrumentation</h3>
            <p>Monitoring and instrumentation systems for tunnel performance and safety tracking.</p>
            <div class="links">
                <a href="modules/systems_monitoring_instrumentation/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/systems_monitoring_instrumentation/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>systems_facilities_temporary_permanent</h3>
            <p>Temporary and permanent facility systems for tunnel construction and operation.</p>
            <div class="links">
                <a href="modules/systems_facilities_temporary_permanent/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/systems_facilities_temporary_permanent/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>systems_traffic_transportation</h3>
            <p>Traffic management and transportation systems within tunnel infrastructure.</p>
            <div class="links">
                <a href="modules/systems_traffic_transportation/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/systems_traffic_transportation/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
    </div>

    <div class="category">
        <h2>🔧 Technical & Management Modules (10 modules)</h2>
        
        <div class="module">
            <h3>engineering_design_analysis</h3>
            <p>Engineering design methodologies and analysis frameworks for tunnel systems.</p>
            <div class="links">
                <a href="modules/engineering_design_analysis/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/engineering_design_analysis/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>construction_processes_methods</h3>
            <p>Construction processes and methodologies for immersed tunnel projects.</p>
            <div class="links">
                <a href="modules/construction_processes_methods/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/construction_processes_methods/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>site_environmental_systems</h3>
            <p>Site conditions and environmental systems with GBT 51318-2019 Section 4, 5, 6 compliance.</p>
            <div class="links">
                <a href="modules/site_environmental_systems/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/site_environmental_systems/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>geotechnical_foundation_systems</h3>
            <p>Geotechnical engineering and foundation systems for tunnel support structures.</p>
            <div class="links">
                <a href="modules/geotechnical_foundation_systems/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/geotechnical_foundation_systems/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>structural_systems</h3>
            <p>Main structural systems module with comprehensive structural engineering components and design frameworks.</p>
            <div class="links">
                <a href="modules/structural_systems/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/structural_systems/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>structural_systems_components</h3>
            <p>Detailed structural system components and architectural elements for tunnel construction.</p>
            <div class="links">
                <a href="modules/structural_systems_components/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/structural_systems_components/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>materials_quality_systems</h3>
            <p>Materials specification and quality assurance systems aligned with standards.</p>
            <div class="links">
                <a href="modules/materials_quality_systems/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/materials_quality_systems/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>maintenance_operations</h3>
            <p>Maintenance protocols and operational procedures for tunnel lifecycle management.</p>
            <div class="links">
                <a href="modules/maintenance_operations/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/maintenance_operations/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
        
        <div class="module">
            <h3>immersed_tunnel_spatial_extensions</h3>
            <p>Spatial modeling and geometric extensions for immersed tunnel infrastructure.</p>
            <div class="links">
                <a href="modules/immersed_tunnel_spatial_extensions/index-en.html" target="_blank">📖 Documentation</a>
                <a href="modules/immersed_tunnel_spatial_extensions/webvowl/" target="_blank">🎨 WebVOWL</a>
            </div>
        </div>
    </div>

    <div class="note">
        <h4>🔧 Technical Information:</h4>
        <p><strong>Standards Compliance:</strong> Primary Standard GBT 51318-2019, Supporting Standards JTG 2120-2020, IFC4.3, ISO 19650</p>
        <p><strong>Version:</strong> 4.0.0-GBT51318-2019-standards-enhanced</p>
        <p><strong>Access:</strong> All documentation must be accessed through the HTTP server to avoid CORS restrictions</p>
    </div>
</body>
</html>
EOF

# Fix permissions on generated files (if running as root)
if [ "$(id -u)" = "0" ]; then
  chown -R 1000:1000 /app/output 2>/dev/null || true
fi

echo "========================================="
echo "DOCUMENTATION GENERATION COMPLETE!"
echo "========================================="
echo "📖 Main documentation: documentation/index-en.html"
echo "📋 Comprehensive index: documentation/modules_index.html"
echo "🎨 WebVOWL visualization: documentation/webvowl/"
echo "📁 All 20 module documentation: documentation/modules/"
echo "🌐 Access via HTTP server to avoid CORS restrictions"
echo "========================================="