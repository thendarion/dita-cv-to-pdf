# cv.to.pdf [WIP] [![Build Status](https://github.com/thendarion/dita-cv-to-pdf/actions/workflows/gradle.yml/badge.svg)](https://github.com/thendarion/dita-cv-to-pdf/actions/workflows/gradle.yml)

This project contains a custom [DITA-OT](https://www.dita-ot.org/) plugin that enables writing CV and Cover Letter source files in DITA format.  
🛠️ It is a work in progress.

# Project overview
to make it easy to maintain and extend custom PDF output from DITA content, we use the following setup:

- **Build system:**  
  Gradle orchestrates setup, testing, PDF rendering, and plugin packaging

- **DITA-OT customization:**
  - builds on the existing `pdf2` transform
  - custom XSL templates define both layout and structure
  - XSpec tests in `src/test` validate key XSL behavior

# Using the project

## Building the PDFs
to build the CV and Cover Letter PDFs with DITA-OT, run
```bash
./gradlew runDitaProject
```
note: to run only one of them, use `runDitaProjectCV` or `runDitaProjectCoverLetter` instead

## Testing the XSL templates
to run the XSpec test suite, run
```bash
./gradlew runXSpec
```

## Assembling the plugin into a ZIP file
to create a distributable `.zip` of the plugin, run
```bash
./gradlew packagePlugin
```

## Customizing the content
to create your own CV and Cover Letter:
1. go to [`src/main/content`](src/main/content)
1. add your own DITA content by one of two methods:
    * edit the templates directly
    * add `cv_content.dita` and `cover_letter_content.dita` and use conref push (recommended)
1. build the PDFs

# Reporting bugs
if you run into any weirdness, feel free to [open an issue](https://github.com/thendarion/dita-cv-to-pdf/issues).