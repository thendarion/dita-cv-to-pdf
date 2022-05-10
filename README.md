# linkedin.to.pdf exercise for fun

the purpose of this project is to have fun with DITA-OT. DITA has no specialisation for writing CVs, so we use some tricks

# basic idea

* Maven drives the process
* XSLT transforms the CV to DITA
* DITA-OT renders the PDF

# implementation idea

* in the POM we just download and install stuff
* in DITA-OT, a custom plugin preprocesses the CV and renders it to FO

# architectural decisions

* the DITA-OT plugin works on its own too, Maven is only there to help with the dependencies
* Maven packages the DITA-OT plugin for further use/release in GitHub

# cli example

    mvn compile -Dlinkedin.page= -Dlinkedin.user.name=

(will prompt you for your password)