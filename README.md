# Image Quality Assessment System

![Cover](assets/cover.png)

# Project Overview

A web application for comparing image quality, supporting MS-SSIM, PSNR, and LPIPS metrics calculation for image quality assessment scenarios.

## Features

### Image Upload
- Drag and drop image upload
- Support for batch upload of multiple images
- Click to upload single file or entire folder
- Image preview

### Quality Metrics Calculation
- **MS-SSIM** (Multi-Scale Structural Similarity) - Higher is better
- **PSNR** (Peak Signal-to-Noise Ratio) - Higher is better
- **LPIPS** (Learned Perceptual Image Patch Similarity) - Lower is better

### Comparison Modes
- **Single Image Comparison** - Upload a pair of images for assessment
- **Multi-Image Comparison** - Batch upload multiple images, system auto-sorts by name and pairs them for comparison

### Report Export
- **Summary Report** - Image preview + average metrics
- **Detailed Report** - Contains detailed data for all comparison pairs
- **Data Table** - CSV format with averages and standard deviations

## Tech Stack

- **Backend**: Python Flask
- **Frontend**: HTML5 + JavaScript
- **Image Quality Metrics**:
- **Chart Generation**: html2canvas

# Quick Start

## Install Dependencies

```bash
pip install -r requirements.txt
```

## Run

Double-click `start.bat` to run, or manually execute:

```bash
python app.py
```

Then open http://localhost:5000 in your browser

## Project Structure

### Project Structure

```text
├── app.py              # Flask backend application
├── requirements.txt    # Python dependencies
├── start.bat           # Windows startup script
├── README.md           # Project documentation
├── static/
│   └── style.css       # Stylesheet
├── templates/
│   └── index.html      # Frontend page
└── uploads/            # Temporary upload directory
```

## Usage

1. After starting the application, the page is divided into left and right areas
2. **Left**: Upload generated images
3. **Right**: Upload target images
4. Click "Start Assessment" to perform quality comparison
5. After assessment completes, click "Save Report" to export results

### Batch Upload
- Support for dragging folders
- System auto-sorts by name and pairs images (index positions correspond one-to-one)
- Multi-image mode exports: summary report, detailed report, CSV data table

## Dependencies

- Flask - Web framework
- PyTorch - Deep learning framework
- torchvision - Image processing
- OpenCV - Computer vision
- lpips - Perceptual similarity model
- Pillow - Python imaging library
