# cv.to.pdf [WIP]

in this project I build a custom DITA-OT plugin to enable writing CV and Cover Letter sources in DITA format. it is a work in progress

# Overview

* the Maven POM governs the project 
  * downloads and install dependencies
  * runs tests and render PDFs
  * packages the plugin as ZIP
* in DITA-OT 
  * a new plugin renders custom FO for PDF rendering
  * XSL templates with some XSpec tests add custom functionality

# Using the plugin

## Building the PDFs
if you just want to build the PDFs with DITA-OT
* run `mvn compile`

## Testing the XSL templates
if you want to modify/add to the custom XSL and XSpec in the plugin and want to make use of the built-in executor in the POM
* run `mvn test`

## Assembling the plugin into a ZIP file
if you want to distribute the plugin in some way
* run `mvn package`

## Customizing the content
if you want to insert your own content, you can do it by modifying the source DITA
1. go to [src/main/content](src/main/content)
1. use the templates to write your own CV and Cover Letter

# Reporting bugs
please open an issue if you find anything weird