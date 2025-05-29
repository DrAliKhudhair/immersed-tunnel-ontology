# Immersed Tunnel Ontology Documentation Guide

## 📖 Complete Documentation Generation, Update & GitHub Deployment Guide

This guide provides comprehensive step-by-step instructions for updating your **Immersed Tunnel Ontology**, regenerating documentation with WIDOCO, and deploying to GitHub Pages using your enhanced `regenerate_docs.bat` automation script.

---

## 🚀 **Part 1: Running the Documentation for the First Time**

### **Prerequisites**
- ✅ Docker Desktop installed and running
- ✅ Python 3.x installed
- ✅ PowerShell or Command Prompt access
- ✅ Web browser (Chrome, Firefox, Edge, etc.)

### **Step 1: Navigate to Project Directory**
```powershell
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"
```

### **Step 2: Verify Project Structure**
Ensure your directory structure looks like this:
```
onto-02-first standard/
├── ontology/
│   ├── Immersed_Tunnel_Ontology_Modular.owl    # Main ontology file
│   └── modulars/                                # Individual module files
│       ├── core.owl
│       ├── taxonomy.owl
│       ├── meronomy.owl
│       ├── properties.owl
│       ├── structural_systems.owl
│       ├── [... 14 other module files]
├── scripts/
│   ├── entrypoint.sh
│   ├── start_webvowl_server.bat
│   └── documentation/                           # Generated docs (created after running)
├── docker-compose.yml
├── Dockerfile
└── README_DOCUMENTATION_GUIDE.md
```

### **Step 3: Generate Documentation**
```powershell
docker-compose up
```

**Expected Output:**
- ✅ Processing 20 ontology modules
- ✅ "Documentation generation completed!"
- ✅ "DOCUMENTATION GENERATION COMPLETE!"

### **Step 4: Start Web Server**
```powershell
python -m http.server 8000
```

### **Step 5: Access Documentation**
Open your web browser and navigate to:

**🏠 Main Documentation:**
```
http://localhost:8000/scripts/documentation/index-en.html
```

**📋 Modules Index:**
```
http://localhost:8000/scripts/documentation/modules_index.html
```

**🎨 Interactive WebVOWL:**
```
http://localhost:8000/scripts/documentation/webvowl/
```

### **Step 6: Stop Services When Done**
- **Stop Web Server:** Press `Ctrl+C` in the terminal
- **Stop Docker:** `docker-compose down` (if containers are still running)

---

## 🔄 **Part 2: Updating Documentation After Ontology Changes**

### **Scenario A: Updated Main Ontology File Only**
If you only modified `ontology/Immersed_Tunnel_Ontology_Modular.owl`:

```powershell
# 1. Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# 2. Clean old documentation
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue

# 3. Regenerate documentation
docker-compose up

# 4. Start web server
python -m http.server 8000
```

### **Scenario B: Updated Module Files in `modulars/` Directory**
If you modified any `.owl` files in `ontology/modulars/`:

```powershell
# 1. Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# 2. Verify all module files have proper XML structure
# (Each .owl file should start with <?xml version='1.0' encoding='utf-8'?>)

# 3. Clean old documentation
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue

# 4. Regenerate documentation
docker-compose up

# 5. Start web server
python -m http.server 8000
```

### **Scenario C: Major Changes to Multiple Files**
For extensive updates to both main ontology and modules:

```powershell
# 1. Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# 2. Validate all OWL files (optional but recommended)
# Check that each .owl file in ontology/modulars/ has:
# - Proper XML header: <?xml version='1.0' encoding='utf-8'?>
# - RDF namespace declarations
# - Proper closing </rdf:RDF> tag

# 3. Clean everything and rebuild
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue
docker-compose down
docker-compose up --build

# 4. Start web server
python -m http.server 8000
```

---

## 🛠️ **Part 3: Troubleshooting Common Issues**

### **Issue 1: "File not found" Errors**
**Symptoms:** Docker cannot find ontology files
**Solution:**
```powershell
# Check file paths are correct
ls ontology/
ls ontology/modulars/

# Ensure you're in the right directory
pwd
# Should show: C:\Users\khudh\Desktop\onto-04\onto-02-first standard
```

### **Issue 2: XML Parsing Errors**
**Symptoms:** WIDOCO fails to parse specific .owl files
**Solution:**
1. Check that each `.owl` file starts with proper XML header
2. Verify namespace declarations are present
3. Ensure closing `</rdf:RDF>` tag exists

**Example of proper .owl file structure:**
```xml
<?xml version='1.0' encoding='utf-8'?>
<rdf:RDF xmlns="http://www.semanticweb.org/immersedTunnelOnto#" 
         xmlns:owl="http://www.w3.org/2002/07/owl#" 
         xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
         xmlns:xsd="http://www.w3.org/2001/XMLSchema#" 
         xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#">
  <owl:Ontology rdf:about="http://www.semanticweb.org/immersedTunnelOnto/modulars/[module_name]">
    <!-- Ontology content -->
  </owl:Ontology>
  <!-- Classes, properties, etc. -->
</rdf:RDF>
```

### **Issue 3: Port 8000 Already in Use**
**Symptoms:** "Address already in use" when starting web server
**Solution:**
```powershell
# Use a different port
python -m http.server 8001

# Or find and kill process using port 8000
netstat -ano | findstr :8000
# Then kill the process ID shown
```

### **Issue 4: Docker Build Failures**
**Symptoms:** Docker image build errors
**Solution:**
```powershell
# Clean Docker cache and rebuild
docker system prune -f
docker-compose build --no-cache
docker-compose up
```

---

## 📝 **Part 4: Quick Reference Commands**

### **Full Regeneration (Recommended for Updates)**
```powershell
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue
docker-compose up
python -m http.server 8000
```

### **Access URLs**
- **Main Docs:** `http://localhost:8000/scripts/documentation/index-en.html`
- **Module Index:** `http://localhost:8000/scripts/documentation/modules_index.html`
- **WebVOWL:** `http://localhost:8000/scripts/documentation/webvowl/`
- **Individual Modules:** `http://localhost:8000/scripts/documentation/modules/`

### **Cleanup Commands**
```powershell
# Stop all services
docker-compose down

# Clean documentation
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue

# Clean Docker cache (if needed)
docker system prune -f
```

---

## 🎯 **Part 5: Automation Script (Optional)**

Create a batch file `regenerate_docs.bat` for easy updates:

```batch
@echo off
echo Regenerating Immersed Tunnel Ontology Documentation...
echo.

REM Navigate to project directory
cd /d "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

REM Clean old documentation
echo Cleaning old documentation...
if exist "scripts\documentation" rmdir /s /q "scripts\documentation"

REM Regenerate documentation
echo Generating new documentation...
docker-compose up

REM Ask user if they want to start web server
echo.
set /p answer=Start web server? (y/n): 
if /i "%answer%"=="y" (
    echo Starting web server on http://localhost:8000
    echo Press Ctrl+C to stop the server when done.
    python -m http.server 8000
)

pause
```

---

## ✅ **Summary Checklist**

### **For First-Time Setup:**
- [ ] Docker Desktop running
- [ ] Navigate to project directory
- [ ] Run `docker-compose up`
- [ ] Start web server with `python -m http.server 8000`
- [ ] Access docs at `http://localhost:8000/scripts/documentation/index-en.html`

### **For Future Updates:**
- [ ] Navigate to project directory
- [ ] Clean old docs: `Remove-Item -Recurse -Force scripts\documentation\*`
- [ ] Regenerate: `docker-compose up`
- [ ] Restart web server: `python -m http.server 8000`
- [ ] Verify docs are updated

---

## 🔄 **Part 1: Updating Your Ontology Files**

### **Scenario A: Updating Main Ontology File**
When you modify `ontology/Immersed_Tunnel_Ontology_Modular.owl`:

```powershell
# 1. Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# 2. Edit your main ontology file
# File: ontology/Immersed_Tunnel_Ontology_Modular.owl
# - Update imports if you add/remove modules
# - Modify metadata, version info, or core structure
# - Ensure all owl:imports statements are correct

# 3. Continue to Part 2 for regeneration
```

### **Scenario B: Updating Individual Module Files**
When you modify any `.owl` files in `ontology/modulars/`:

```powershell
# 1. Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# 2. Edit module files in ontology/modulars/
# Available modules (19 total):
# - core.owl (40KB, 552 lines)
# - taxonomy.owl (29KB, 458 lines)
# - meronomy.owl (27KB, 393 lines)
# - properties.owl (70KB, 1060 lines)
# - structural_systems.owl (188KB, 2583 lines)
# - site_environmental_systems.owl (93KB, 1192 lines)
# - engineering_design_analysis.owl (73KB, 1071 lines)
# - geotechnical_foundation_systems.owl (40KB, 619 lines)
# - construction_processes_methods.owl (28KB, 379 lines)
# - immersed_tunnel_spatial_extensions.owl (28KB, 402 lines)
# - systems_traffic_transportation.owl (27KB, 417 lines)
# - systems_mechanical_electrical.owl (24KB, 377 lines)
# - systems_safety_emergency.owl (23KB, 352 lines)
# - systems_drainage_utilities.owl (22KB, 355 lines)
# - structural_systems_components.owl (13KB, 210 lines)
# - materials_quality_systems.owl (10KB, 173 lines)
# - systems_facilities_temporary_permanent.owl (8.1KB, 132 lines)
# - systems_monitoring_instrumentation.owl (7.9KB, 127 lines)
# - maintenance_operations.owl (3.5KB, 65 lines)

# 3. Verify each .owl file has proper XML structure:
#    - Starts with: <?xml version='1.0' encoding='utf-8'?>
#    - Has proper RDF namespace declarations
#    - Ends with: </rdf:RDF>

# 4. Continue to Part 2 for regeneration
```

### **Scenario C: Adding New Modules**
When you create new module files:

```powershell
# 1. Create new .owl file in ontology/modulars/
# Example: ontology/modulars/new_module_name.owl

# 2. Ensure proper XML structure:
```xml
<?xml version='1.0' encoding='utf-8'?>
<rdf:RDF xmlns="http://www.semanticweb.org/immersedTunnelOnto#" 
         xmlns:owl="http://www.w3.org/2002/07/owl#" 
         xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#" 
         xmlns:xsd="http://www.w3.org/2001/XMLSchema#" 
         xmlns:rdfs="http://www.w3.org/2000/01/rdf-schema#">
  <owl:Ontology rdf:about="http://www.semanticweb.org/immersedTunnelOnto/modulars/new_module_name">
    <!-- Module content -->
  </owl:Ontology>
  <!-- Classes, properties, etc. -->
</rdf:RDF>
```

# 3. Update main ontology to import new module
# Add to ontology/Immersed_Tunnel_Ontology_Modular.owl:
# <owl:imports rdf:resource="http://www.semanticweb.org/immersedTunnelOnto/modulars/new_module_name"/>

# 4. Continue to Part 2 for regeneration
```

---

## 🚀 **Part 2: Complete Automation with regenerate_docs.bat (Recommended)**

### **🎯 One-Command Complete Workflow**

Your enhanced `regenerate_docs.bat` script now handles everything from documentation generation to GitHub Pages preparation in a single command:

```powershell
# Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# Run the complete automation script
.\regenerate_docs.bat
```

### **🔄 What the Script Does (5-Step Process):**

```
[1/5] Cleaning old documentation...
    ✅ Removes old docs from scripts/documentation/

[2/5] Checking Docker availability...
    ✅ Verifies Docker Desktop is running

[3/5] Generating new documentation...
    ✅ Runs WIDOCO with all 20 modules
    ✅ Creates individual WebVOWL visualizations
    ✅ Generates multiple format exports (OWL, TTL, JSON-LD, N-Triples)

[4/5] GitHub Pages deployment preparation...
    ❓ Asks: "Update docs/ folder for GitHub Pages deployment? (y/n)"
    
    If YES (y):
    ✅ Copies all documentation to docs/ folder
    ✅ Shows git commands for deployment:
        1. git add .
        2. git commit -m "Update ontology documentation"
        3. git push origin main
        4. Wait for GitHub Actions to deploy

[5/5] Starting web server...
    ❓ Asks: "Start web server to view documentation locally? (y/n)"
    
    If YES (y):
    ✅ Starts Python HTTP server on port 8000
    ✅ Shows access URLs:
        📖 Main: http://localhost:8000/scripts/documentation/index-en.html
        📋 Index: http://localhost:8000/scripts/documentation/modules_index.html
        🎨 WebVOWL: http://localhost:8000/scripts/documentation/webvowl/
```

### **🎯 Complete Workflow Example:**

```powershell
# After editing your ontology files:
.\regenerate_docs.bat

# During script execution:
# - Step 4: Answer "y" to prepare GitHub Pages
# - Step 5: Answer "y" to test locally (optional)

# Follow the on-screen instructions:
git add .
git commit -m "Update ontology: [describe your changes]"
git push origin main

# Wait 2-3 minutes, then verify at:
# https://dralikhudhair.github.io/immersed-tunnel-ontology/modules_index.html
```

---

## 🔧 **Part 3: Manual Alternative (If Needed)**

### **Manual Step-by-Step Process**

Only use this if you need to troubleshoot or prefer manual control:

```powershell
# 1. Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# 2. Clean old documentation
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue

# 3. Regenerate documentation
docker-compose up

# 4. Copy to GitHub Pages folder
Copy-Item -Path "scripts\documentation\*" -Destination "docs\" -Recurse -Force

# 5. Test locally (optional)
python -m http.server 8000

# 6. Deploy to GitHub
git add . && git commit -m "Update ontology documentation" && git push origin main
```

---

## 🛠️ **Part 4: Troubleshooting Common Issues**

### **Issue 1: regenerate_docs.bat Fails**
**Symptoms:** Script stops with error messages
**Solutions:**
```powershell
# Check you're in the right directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"
dir docker-compose.yml  # Should exist

# Ensure Docker Desktop is running
docker --version

# Check ontology file syntax
# Verify all .owl files have proper XML headers

# Run with elevated permissions if needed
# Right-click PowerShell -> "Run as Administrator"
```

### **Issue 2: Docker Generation Fails**
**Symptoms:** Step 3 fails during WIDOCO generation
**Solutions:**
```powershell
# Clean Docker cache
docker system prune -f
docker-compose build --no-cache

# Check for file path issues
ls ontology/
ls ontology/modulars/

# Verify all module files have proper structure
```

### **Issue 3: GitHub Pages Not Updating**
**Symptoms:** Live site shows old content after push
**Solutions:**
```powershell
# 1. Verify docs/ folder was updated by the script
dir docs\

# 2. Check git status shows changes
git status

# 3. Check GitHub Actions status
# Go to: https://github.com/DrAliKhudhair/immersed-tunnel-ontology/actions

# 4. Force refresh browser cache
# Ctrl+F5 or hard refresh
```

### **Issue 4: WebVOWL Visualizations Not Working**
**Symptoms:** Individual module WebVOWL pages show blank
**Solutions:**
```powershell
# 1. Check module file structure
# Each .owl file must have proper XML structure

# 2. Test with smaller modules first
# Start with maintenance_operations.owl (3.5KB)

# 3. Regenerate completely
.\regenerate_docs.bat
# Answer "y" to both GitHub Pages and web server options
```

---

## 📝 **Part 5: Quick Reference Commands**

### **🚀 Complete Update Workflow (Recommended)**
```powershell
# 1. Edit your ontology files (ontology/ folder)
# 2. Run automation script:
.\regenerate_docs.bat
# 3. Answer "y" to GitHub Pages preparation
# 4. Follow on-screen git commands
# 5. Verify live deployment
```

### **⚡ Power User One-Liner (After running regenerate_docs.bat with GitHub Pages option)**
```powershell
git add . && git commit -m "Update ontology documentation" && git push origin main
```

### **🌐 Documentation URLs**
- **Local Development:**
  - Main: `http://localhost:8000/scripts/documentation/modules_index.html`
  - Testing: `http://localhost:8000/scripts/documentation/index-en.html`

- **Live GitHub Pages:**
  - Main: `https://dralikhudhair.github.io/immersed-tunnel-ontology/modules_index.html`
  - Repository: `https://github.com/DrAliKhudhair/immersed-tunnel-ontology`

### **📁 Essential Files to Monitor**
- **Main Ontology:** `ontology/Immersed_Tunnel_Ontology_Modular.owl`
- **Module Files:** `ontology/modulars/*.owl` (19 files)
- **Automation Script:** `regenerate_docs.bat` ⭐
- **GitHub Pages:** `docs/` (auto-updated by script)
- **Local Docs:** `scripts/documentation/` (generated)

---

## ✅ **Part 6: Validation Checklist**

### **Before Running regenerate_docs.bat:**
- [ ] All .owl files have proper XML headers
- [ ] Main ontology imports all required modules
- [ ] Docker Desktop is running
- [ ] You're in the correct project directory

### **During Script Execution:**
- [ ] Step 1-3 complete without errors
- [ ] Choose "y" for GitHub Pages preparation (Step 4)
- [ ] Choose "y" for local testing (Step 5) - optional

### **After Script Completion:**
- [ ] `docs/` folder contains updated documentation
- [ ] Local server shows correct content (if started)
- [ ] Follow git commands shown by script
- [ ] GitHub Actions workflow completes successfully
- [ ] Live site reflects your changes

---

## 🎯 **Summary: Your Streamlined Workflow**

### **🔄 The New Simple Process:**

1. **📝 Edit** your ontology files in `ontology/` folder
2. **🚀 Run** `.\regenerate_docs.bat`
3. **✅ Answer** "y" to GitHub Pages preparation
4. **📤 Execute** the git commands shown by the script
5. **🌐 Verify** your live documentation is updated

### **⭐ Key Benefits:**

- **🎯 One Command**: `.\regenerate_docs.bat` handles everything
- **🔄 Interactive**: You choose what steps to take
- **📖 Guided**: Clear instructions for each step
- **⚡ Fast**: Complete workflow in under 5 minutes
- **🛡️ Safe**: Validates each step before proceeding
- **🌐 Professional**: Direct integration with GitHub Pages

**🎉 Your ontology documentation workflow is now completely streamlined and professional!** 