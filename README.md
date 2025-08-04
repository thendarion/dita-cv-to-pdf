# DITA CV to PDF [![Build Status](https://github.com/thendarion/dita-cv-to-pdf/actions/workflows/gradle.yml/badge.svg)](https://github.com/thendarion/dita-cv-to-pdf/actions/workflows/gradle.yml)

🛠️ This project is a work in progress.

# Overview

I created a custom [DITA-OT](https://www.dita-ot.org/) plugin that enables writing the following in DITA format:
* CV
* Cover letter
 
and then rendering them in PDF.  

# Implementation

  - builds on the existing DITA-OT `pdf2` transformation
  - custom XSL templates define both layout and structure
  - XSpec tests validate key XSL behavior

# Using the project

## Customizing the content
Create your own CV and Cover Letter content to render.

- Add your own DITA content by creating `cv_content.dita` and `cover_letter_content.dita` in [`src/main/content`](src/main/content) and use conref push to replace the placeholders in the template files.

## Building the PDFs
Use Gradle to download DITA-OT, install this plugin, and render the PDFs.

```bash
./gradlew runDitaProject
```
>Note:
> `runDitaProjectCV` and `runDitaProjectCoverLetter` renders only the CV or the cover letter respectively, if you only want one of them.

>Note: on Windows, use `gradlew.bat`; on Linux, use `./gradlew`.

## Testing the XSL templates
Run the XSpec test suite.
```bash
./gradlew runXSpec
```

## Assembling the plugin into a ZIP file
Create a distributable `.zip` of the plugin.
```bash
./gradlew packagePlugin
```


# Troubleshooting
**Error:** the plugin doesn't install properly and the output does not have the custom formatting.

**Solution:** run all the build steps again.
```bash
./gradlew runDitaProject --rerun-tasks
```

# Reporting bugs
If you run into any weirdness, feel free to [open an issue](https://github.com/thendarion/dita-cv-to-pdf/issues).