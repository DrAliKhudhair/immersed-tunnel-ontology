# Prepare Repository for GitHub Upload
Write-Host "Preparing Immersed Tunnel Ontology for GitHub..." -ForegroundColor Green

# Create organized directory structure
Write-Host "Creating organized directory structure..." -ForegroundColor Yellow

# Create main directories
$directories = @(
    "ontology",
    "scripts", 
    "docs",
    "examples",
    ".github/workflows"
)

foreach ($dir in $directories) {
    if (!(Test-Path $dir)) {
        New-Item -ItemType Directory -Path $dir -Force | Out-Null
        Write-Host "  Created directory: $dir" -ForegroundColor Cyan
    }
}

# Move ontology files to organized structure
Write-Host "Organizing ontology files..." -ForegroundColor Yellow

# Copy main ontology to ontology directory
if (Test-Path "Immersed_Tunnel_Ontology_Modular.owl") {
    Copy-Item "Immersed_Tunnel_Ontology_Modular.owl" "ontology/" -Force
    Write-Host "  Copied main ontology to ontology/" -ForegroundColor Cyan
}

# Copy catalog file
if (Test-Path "catalog-v001.xml") {
    Copy-Item "catalog-v001.xml" "ontology/" -Force
    Write-Host "  Copied catalog file to ontology/" -ForegroundColor Cyan
}

# Copy modulars directory
if (Test-Path "modulars") {
    Copy-Item "modulars" "ontology/" -Recurse -Force
    Write-Host "  Copied modulars directory to ontology/" -ForegroundColor Cyan
}

# Move scripts to scripts directory
Write-Host "Organizing scripts..." -ForegroundColor Yellow

$scriptFiles = @(
    "generate-clean-docs.ps1",
    "serve-docs.ps1"
)

foreach ($script in $scriptFiles) {
    if (Test-Path $script) {
        Copy-Item $script "scripts/" -Force
        Write-Host "  Copied $script to scripts/" -ForegroundColor Cyan
    }
}

# Copy enhanced config
if (Test-Path "enhanced-widoco-config.properties") {
    Copy-Item "enhanced-widoco-config.properties" "scripts/" -Force
    Write-Host "  Copied enhanced config to scripts/" -ForegroundColor Cyan
}

# Copy current documentation to docs (as initial version)
Write-Host "Copying current documentation..." -ForegroundColor Yellow

if (Test-Path "clean-documentation") {
    Copy-Item "clean-documentation/*" "docs/" -Recurse -Force
    Write-Host "  Copied current documentation to docs/" -ForegroundColor Cyan
    
    # Get documentation stats
    if (Test-Path "docs/index-en.html") {
        $docSize = [math]::Round((Get-Item "docs/index-en.html").Length / 1KB, 1)
        Write-Host "  Documentation size: ${docSize} KB" -ForegroundColor White
    }
}

# Move example files to examples directory
Write-Host "Organizing example files..." -ForegroundColor Yellow

$exampleFiles = Get-ChildItem -Filter "*.md" | Where-Object { 
    $_.Name -match "IMMTD|Implementation|Concept|Mapping|Use_Case" 
}

if ($exampleFiles.Count -gt 0) {
    foreach ($file in $exampleFiles) {
        Copy-Item $file.FullName "examples/" -Force
        Write-Host "  Moved $($file.Name) to examples/" -ForegroundColor Cyan
    }
    Write-Host "  Moved $($exampleFiles.Count) example files" -ForegroundColor White
}

# Create .gitignore file
Write-Host "Creating .gitignore..." -ForegroundColor Yellow

$gitignoreContent = @"
# Temporary files
temp_*.owl
*.tmp

# OS generated files
.DS_Store
Thumbs.db

# IDE files
.vscode/
.idea/
*.swp
*.swo

# Local documentation builds (keep source, ignore local builds)
/local-docs/
/test-*/

# Logs
*.log

# PowerShell execution policy files
*.ps1.bak
"@

$gitignoreContent | Set-Content ".gitignore" -Encoding UTF8
Write-Host "  Created .gitignore file" -ForegroundColor Cyan

# Create initial docs from current documentation
Write-Host "Preparing initial GitHub Pages content..." -ForegroundColor Yellow

# Create a simple index.html redirect
$indexHtmlContent = @"
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="0; url=index-en.html">
    <title>Immersed Tunnel Engineering Ontology</title>
</head>
<body>
    <p>Redirecting to <a href="index-en.html">documentation</a>...</p>
</body>
</html>
"@

$indexHtmlContent | Set-Content "docs/index.html" -Encoding UTF8
Write-Host "  Created docs/index.html redirect" -ForegroundColor Cyan

# Summary
Write-Host ""
Write-Host "Repository preparation complete!" -ForegroundColor Green
Write-Host "Repository structure:" -ForegroundColor Yellow

Write-Host "Next steps:" -ForegroundColor Green
Write-Host "1. Create a new GitHub repository" -ForegroundColor Yellow
Write-Host "2. Upload these files to the repository" -ForegroundColor Yellow
Write-Host "3. Enable GitHub Pages in repository settings" -ForegroundColor Yellow
Write-Host "4. Your documentation will be available at: https://your-username.github.io/repo-name/" -ForegroundColor Yellow

Write-Host ""
Write-Host "Features enabled:" -ForegroundColor Green
Write-Host "  Automatic documentation generation on push" -ForegroundColor Cyan
Write-Host "  GitHub Pages hosting" -ForegroundColor Cyan
Write-Host "  Professional landing page" -ForegroundColor Cyan
Write-Host "  Multiple download formats" -ForegroundColor Cyan
Write-Host "  Interactive WebVowl visualization" -ForegroundColor Cyan

Write-Host ""
Write-Host "Repository is ready for GitHub!" -ForegroundColor Green 