# 🚀 GitHub Deployment Guide

## **Complete Step-by-Step Instructions**

Follow these steps to publish your WIDOCO documentation to GitHub Pages:

### **Step 1: Create GitHub Repository**

1. **Go to GitHub**: Visit [github.com](https://github.com) and sign in
2. **Create New Repository**: Click the "+" icon → "New repository"
3. **Repository Settings**:
   - **Name**: `immersed-tunnel-ontology` (or your preferred name)
   - **Description**: `IFC4.3 Ready Immersed Tunnel Engineering Ontology - Complete Modular Architecture`
   - **Visibility**: Choose Public or Private
   - **Initialize**: ❌ **DO NOT** add README, .gitignore, or license (we have our own)
   - Click **"Create repository"**

### **Step 2: Upload Your Files**

**Option A: Using GitHub Web Interface (Recommended for Beginners)**
1. **After creating the repository**, you'll see an empty repository page
2. **Click "uploading an existing file"** at the bottom of the page
3. **Drag and drop ALL these folders/files at once**:
   ```
   📁 .github/
   📁 docs/
   📁 examples/
   📁 ontology/
   📁 scripts/
   📄 .gitignore
   📄 DEPLOY-TO-GITHUB.md
   📄 GITHUB-READY-SUMMARY.md
   📄 README.md
   📄 enhanced-widoco-config.properties
   ```
4. **Commit message**: "Initial commit: Complete ontology with WIDOCO documentation"
5. **Click "Commit changes"**

**Option B: Using Git Command Line (For Advanced Users)**
```bash
# First, initialize your local repository
cd "C:\Users\khudh\Desktop\onto-04\onto-02-first standard"
git init
git add .
git commit -m "Initial commit: Complete ontology with WIDOCO documentation"

# Then connect to your GitHub repository (replace with your actual URL)
git remote add origin https://github.com/your-username/immersed-tunnel-ontology.git
git branch -M main
git push -u origin main
```

### **Step 3: Enable GitHub Pages**

1. **Go to Repository Settings**: Click "Settings" tab in your repository
2. **Navigate to Pages**: Scroll down to "Pages" in the left sidebar
3. **Configure Source**:
   - **Source**: Deploy from a branch
   - **Branch**: `main`
   - **Folder**: `/docs` ← **IMPORTANT: Select /docs folder**
4. **Click "Save"**

### **Step 4: Enable GitHub Actions**

1. **Go to Actions Tab**: Click "Actions" in your repository
2. **Enable Workflows**: Click "I understand my workflows, go ahead and enable them"
3. **Automatic Deployment**: Your documentation will auto-generate on every push!

### **Step 5: Wait and Access Your Documentation**

**⏱️ Wait 2-5 minutes** for GitHub Pages to process your files.

**Your documentation will be available at:**
```
https://your-username.github.io/immersed-tunnel-ontology/
```

**Direct links for your team:**
- 📋 **Main Documentation**: `https://your-username.github.io/immersed-tunnel-ontology/index-en.html`
- 🎯 **Interactive Visualization**: `https://your-username.github.io/immersed-tunnel-ontology/webvowl/index.html`
- 📁 **Download Files**: `https://your-username.github.io/immersed-tunnel-ontology/ontology.owl`

## **🌟 What Your Team Will Get**

### **Professional Landing Page**
- Beautiful, responsive design
- Quick access to all documentation sections
- Download links for all formats
- Interactive visualization

### **Complete Documentation**
- ✅ All 19 modules fully integrated
- ✅ Hundreds of classes and properties documented
- ✅ Cross-reference tables
- ✅ Multiple serialization formats (OWL, Turtle, JSON-LD, N-Triples)
- ✅ WebVowl interactive graph visualization
- ✅ Professional responsive HTML styling

### **Automatic Updates**
- Every time you push changes to the repository
- GitHub Actions automatically regenerates documentation
- Always up-to-date for your team

### **Team Access Features**
- 📱 **Mobile-friendly**: Works on all devices
- 🔗 **Direct links**: Easy to bookmark and share
- 📊 **Search functionality**: Built into the documentation
- 🌐 **No login required**: Anyone with the link can access
- ⚡ **Fast loading**: Optimized for quick access

## **📧 Sharing with Your Team**

Once deployed, share these links:

**🌐 Main Documentation Portal:**
```
https://your-username.github.io/immersed-tunnel-ontology/
```

**📋 Quick Access Links:**
- Documentation: `https://your-username.github.io/immersed-tunnel-ontology/index-en.html`
- Visualization: `https://your-username.github.io/immersed-tunnel-ontology/webvowl/index.html`
- Downloads: `https://your-username.github.io/immersed-tunnel-ontology/ontology.owl`

## **🔧 Future Updates**

To update your documentation:
1. Modify your ontology files
2. Push changes to GitHub
3. GitHub Actions automatically rebuilds documentation
4. Updated documentation is live within 2-3 minutes

## **❗ Troubleshooting**

**If you get "Repository not found" error:**
- Make sure you created the repository first on GitHub
- Replace `your-username` with your actual GitHub username
- Replace `immersed-tunnel-ontology` with your actual repository name

**If GitHub Pages shows 404:**
- Wait 5-10 minutes for initial deployment
- Check that you selected `/docs` folder in Pages settings
- Verify all files uploaded successfully

**If documentation looks broken:**
- Check that the `docs/` folder contains all the files
- Verify GitHub Actions completed successfully in the Actions tab

## **📞 Support Information**

- **Repository**: Include link to your GitHub repository
- **Issues**: Use GitHub Issues for bug reports
- **Documentation**: Links to WIDOCO and ontology documentation
- **License**: CC BY 4.0 International

Your team will have professional, always-updated access to your complete ontology documentation! 🎉 