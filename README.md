# cv.to.pdf exercise for fun

the purpose of this project is to have fun with DITA-OT. DITA has no specialisation for writing CVs, so we improvise

# basic idea

* Maven drives the process
* DITA-OT renders the PDF

# implementation idea

* in the POM we just download and install dependencies
* in DITA-OT, a custom plugin renders it to FO
