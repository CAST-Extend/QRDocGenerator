<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>QRs</h2>

    <xsl:variable name="lowercase" select="'abcdefghijklmnopqrstuvwxyz'" />
    <xsl:variable name="uppercase" select="'ABCDEFGHIJKLMNOPQRSTUVWXYZ'" />  
  
    <ul style="list-style-type:none;">
       <xsl:for-each select="//*/metric[@section='name']">
         <li>
            <xsl:element name="a">
               <xsl:attribute name="href">
                  <xsl:value-of select='concat("#", @id)'/>
               </xsl:attribute>
               <xsl:value-of select="concat(current()/@id, ': ', current()/@originalName)"/>
               
            </xsl:element>
         </li>

         <!-- <a href="concat('#','{@id}')"><xsl:value-of select="concat(current()/@id, ': ', current()/@originalName)"/></a> </li> -->
       </xsl:for-each>
    </ul>

    
    <xsl:for-each select="//*/metric[@section='name']">
    <h3><xsl:value-of select="concat(current()/@id, ': ', current()/@originalName)"/>
      <a name="{@id}"></a>
    </h3>
         
         <xsl:for-each select="//*/metric[@id=current()/@id]">
            <xsl:if test="@section!='name'">
               <p style="margin-left: 40px">
                  <strong>
                  <xsl:value-of select="concat(translate(substring(@section, 1, 1), $lowercase, $uppercase), substring(@section, 2), ': ')"/>
                  </strong>
                  <xsl:if test="@section!='sample' and @section!='remediationSample'">
                    <xsl:value-of select="english"/><br/><br/>
                  </xsl:if>
               </p>
               <xsl:if test="@section='sample' or @section='remediationSample'">
                 <pre style="background-color:#CDCDCD;width:1000;margin-left: 40px;">
                   <xsl:value-of select="english"/><br/>
                 </pre>
               </xsl:if>
            </xsl:if>
         </xsl:for-each>
         
    </xsl:for-each>
    
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>