@echo off
chcp 65001 >nul
title Image Quality Comparison
cd /d "%~dp0"
echo ============================================
echo    Weft Knitted Fabric Image Quality System
echo ============================================
echo.
echo Starting server...
echo Open http://localhost:5000 in browser
echo Press Ctrl+C to stop
echo.
python app.py
