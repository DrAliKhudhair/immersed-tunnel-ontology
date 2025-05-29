# Immersed Tunnel Ontology Documentation Guide

## 📖 Complete Documentation Generation, Update & GitHub Deployment Guide

This guide provides comprehensive step-by-step instructions for updating your **Immersed Tunnel Ontology**, regenerating documentation with WIDOCO, and deploying to GitHub Pages.

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

## 🚀 **Part 2: Regenerating Documentation (Local)**

### **Method A: Using Automated Script (Recommended)**

```powershell
# 1. Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# 2. Run the automated regeneration script
.\regenerate_docs.bat

# The script will:
# ✅ Clean old documentation
# ✅ Check Docker availability
# ✅ Generate new documentation with WIDOCO
# ✅ Optionally start web server

# 3. Access your documentation at:
# 📖 Main: http://localhost:8000/scripts/documentation/index-en.html
# 📋 Modules: http://localhost:8000/scripts/documentation/modules_index.html
```

### **Method B: Manual Step-by-Step**

```powershell
# 1. Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# 2. Clean old documentation
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue

# 3. Regenerate documentation
docker-compose up

# 4. Start web server
python -m http.server 8000

# 5. Verify documentation at:
# http://localhost:8000/scripts/documentation/modules_index.html
```

---

## 🌐 **Part 3: Deploying to GitHub Pages**

### **Step 1: Update docs/ Folder for GitHub Pages**

```powershell
# 1. Navigate to project directory
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# 2. Ensure documentation is generated (run Part 2 first)

# 3. Copy generated documentation to docs/ folder
Copy-Item -Path "scripts\documentation\*" -Destination "docs\" -Recurse -Force

# 4. Verify docs/ folder structure:
# docs/
# ├── index.html (auto-redirects to modules_index.html)
# ├── modules_index.html (main navigation)
# ├── index-en.html (WIDOCO main docs)
# ├── webvowl/ (main visualization)
# ├── modules/ (20 individual module docs)
# ├── resources/ (CSS, JS, assets)
# └── ontology.* (multiple formats)
```

### **Step 2: Commit and Push to GitHub**

```powershell
# 1. Check git status
git status

# 2. Add all updated files
git add .

# 3. Commit with descriptive message
git commit -m "Update ontology documentation - [describe your changes]

🔄 Updated Files:
- ontology/Immersed_Tunnel_Ontology_Modular.owl: [your changes]
- ontology/modulars/: [modules you modified]
- Complete WIDOCO documentation regenerated
- All 20 modules with individual WebVOWL visualizations
- Professional navigation interface updated"

# 4. Push to GitHub
git push origin main
```

### **Step 3: Verify GitHub Pages Deployment**

```powershell
# 1. Check GitHub Actions
# Go to: https://github.com/DrAliKhudhair/immersed-tunnel-ontology/actions
# Wait for "Deploy Documentation to GitHub Pages" workflow to complete

# 2. Access your live documentation:
# 📋 Main: https://dralikhudhair.github.io/immersed-tunnel-ontology/
# 📖 Modules: https://dralikhudhair.github.io/immersed-tunnel-ontology/modules_index.html

# 3. Verify all modules are updated and accessible
```

---

## 🔧 **Part 4: Complete Update Workflow (Recommended Process)**

### **Full Update Process (From Ontology Edit to Live Documentation)**

```powershell
# STEP 1: Navigate to project
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"

# STEP 2: Edit your ontology files
# - Update ontology/Immersed_Tunnel_Ontology_Modular.owl
# - Modify files in ontology/modulars/ as needed

# STEP 3: Regenerate documentation locally
.\regenerate_docs.bat
# ✅ This generates fresh WIDOCO docs in scripts/documentation/

# STEP 4: Test locally (optional but recommended)
# Visit: http://localhost:8000/scripts/documentation/modules_index.html
# Verify all changes are reflected correctly

# STEP 5: Update GitHub Pages folder
Copy-Item -Path "scripts\documentation\*" -Destination "docs\" -Recurse -Force

# STEP 6: Commit and push to GitHub
git add .
git commit -m "Update ontology: [describe your specific changes]"
git push origin main

# STEP 7: Verify live deployment
# Wait 2-3 minutes, then visit:
# https://dralikhudhair.github.io/immersed-tunnel-ontology/modules_index.html
```

---

## 🛠️ **Part 5: Troubleshooting Common Issues**

### **Issue 1: WIDOCO Generation Fails**
**Symptoms:** Docker fails to generate documentation
**Solutions:**
```powershell
# Check ontology file syntax
# Ensure all .owl files have proper XML headers

# Clean Docker cache
docker system prune -f
docker-compose build --no-cache
docker-compose up

# Check for file path issues
ls ontology/
ls ontology/modulars/
```

### **Issue 2: GitHub Pages Not Updating**
**Symptoms:** Live site shows old content
**Solutions:**
```powershell
# 1. Check GitHub Actions status
# Go to: https://github.com/DrAliKhudhair/immersed-tunnel-ontology/actions

# 2. Verify docs/ folder was updated
git status
# Should show changes in docs/ folder

# 3. Force refresh browser cache
# Ctrl+F5 or hard refresh

# 4. Check workflow logs for errors
```

### **Issue 3: Module Documentation Missing**
**Symptoms:** Some modules not appearing in navigation
**Solutions:**
```powershell
# 1. Verify module files exist
ls ontology/modulars/

# 2. Check imports in main ontology
# Ensure ontology/Immersed_Tunnel_Ontology_Modular.owl has:
# <owl:imports rdf:resource="http://www.semanticweb.org/immersedTunnelOnto/modulars/[module_name]"/>

# 3. Regenerate completely
Remove-Item -Recurse -Force scripts\documentation\* -ErrorAction SilentlyContinue
.\regenerate_docs.bat
```

### **Issue 4: WebVOWL Visualizations Not Working**
**Symptoms:** Individual module WebVOWL pages show blank
**Solutions:**
```powershell
# 1. Check module file structure
# Each .owl file must have proper XML structure

# 2. Verify file sizes are reasonable
ls -la ontology/modulars/

# 3. Test with smaller modules first
# Start with smaller files like maintenance_operations.owl (3.5KB)
```

---

## 📝 **Part 6: Quick Reference Commands**

### **Complete Update Workflow (One-Liner)**
```powershell
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard" && .\regenerate_docs.bat && Copy-Item -Path "scripts\documentation\*" -Destination "docs\" -Recurse -Force && git add . && git commit -m "Update ontology documentation" && git push origin main
```

### **Documentation URLs**
- **Local Development:**
  - Main: `http://localhost:8000/scripts/documentation/modules_index.html`
  - Testing: `http://localhost:8000/scripts/documentation/index-en.html`

- **Live GitHub Pages:**
  - Main: `https://dralikhudhair.github.io/immersed-tunnel-ontology/modules_index.html`
  - Repository: `https://github.com/DrAliKhudhair/immersed-tunnel-ontology`

### **Essential Files to Monitor**
- **Main Ontology:** `ontology/Immersed_Tunnel_Ontology_Modular.owl`
- **Module Files:** `ontology/modulars/*.owl` (19 files)
- **GitHub Pages:** `docs/` (auto-deployed)
- **Local Docs:** `scripts/documentation/` (generated)
- **Automation:** `regenerate_docs.bat`

---

## ✅ **Part 7: Validation Checklist**

### **Before Committing to GitHub:**
- [ ] All .owl files have proper XML headers
- [ ] Main ontology imports all required modules
- [ ] Local documentation generates without errors
- [ ] All 20 modules appear in modules_index.html
- [ ] Individual WebVOWL visualizations work
- [ ] docs/ folder is updated with latest content

### **After GitHub Deployment:**
- [ ] GitHub Actions workflow completes successfully
- [ ] Live site loads at https://dralikhudhair.github.io/immersed-tunnel-ontology/
- [ ] All module links work correctly
- [ ] Download links provide correct ontology files
- [ ] No broken links or missing resources

---

## 🎯 **Summary: Your Complete Workflow**

1. **Edit** your ontology files (`ontology/` folder)
2. **Regenerate** locally with `.\regenerate_docs.bat`
3. **Test** at `http://localhost:8000/scripts/documentation/modules_index.html`
4. **Copy** to GitHub Pages: `Copy-Item scripts\documentation\* docs\ -Recurse -Force`
5. **Commit** and **push** to GitHub
6. **Verify** live deployment at your GitHub Pages URL

**🎉 Your Immersed Tunnel Ontology documentation is now always up-to-date and professionally presented!** 