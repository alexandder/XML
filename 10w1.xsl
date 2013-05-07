<?xml version="1.0" encoding="iso8859-2" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
  <xsl:output method="html"/>

  <xsl:template match="/">
    <html>
      <body>
         <!-- Wybieranie elementów pozycja -->
        <xsl:apply-templates select="//grupaPracownikow"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="grupaPracownikow">
   <ul>
   <xsl:for-each select="pracownik">
    <li>imie:<xsl:value-of select="imie"/> nazwisko:<xsl:value-of select="nazwisko"/></li>
   </xsl:for-each>
   </ul>
  </xsl:template>

</xsl:stylesheet>
