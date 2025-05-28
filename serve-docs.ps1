# Simple HTTP Server for WIDOCO Documentation
# This script starts a local web server to view the documentation properly

param(
    [int]$Port = 8080,
    [string]$Directory = "widoco-documentation"
)

Write-Host "Starting local web server for WIDOCO documentation..." -ForegroundColor Green

# Check if documentation exists
if (!(Test-Path $Directory)) {
    Write-Host "Error: Documentation directory '$Directory' not found!" -ForegroundColor Red
    Write-Host "Run .\generate-documentation.ps1 first to create the documentation." -ForegroundColor Yellow
    exit 1
}

# Check if Python is available
try {
    $pythonVersion = python --version 2>&1
    Write-Host "Found Python: $pythonVersion" -ForegroundColor Green
} catch {
    Write-Host "Error: Python not found. Please install Python to use the built-in HTTP server." -ForegroundColor Red
    Write-Host "Alternative: Use any other web server like Live Server in VS Code." -ForegroundColor Yellow
    exit 1
}

Write-Host "================================================" -ForegroundColor Cyan
Write-Host "Starting HTTP server on port $Port..." -ForegroundColor Blue
Write-Host "Documentation will be available at:" -ForegroundColor Yellow
Write-Host "  http://localhost:$Port/index-en.html" -ForegroundColor White
Write-Host "  http://localhost:$Port/webvowl/index.html (WebVowl)" -ForegroundColor White
Write-Host "================================================" -ForegroundColor Cyan
Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Gray

# Change to documentation directory and start server
Set-Location $Directory
python -m http.server $Port 