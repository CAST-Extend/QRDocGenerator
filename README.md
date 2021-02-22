Use your favourite way to do xslt transformation.

Simplest:
* Take doc.xsl 
* Add following code to your SPECDocumentation.xml (assuming you copied doc.xsl to same directory):

```<?xml-stylesheet type="text/xsl" href="doc.xsl"?>```

* Open SPECDocumentation.xml in IE
* It should be rendered as html
* If you want to save as html, while saving make sure you choose "Webpage, HTML only (*.htm, *html)"
* Convert saved html to pdf

Notes: 
#. Chrome does not seem to be able to do transformation or rejects it for security reasons
#. If you print using "Microsoft Print To PDF", links are not preserved




