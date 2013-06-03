<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/menu">
    <html>
      <head>
      </head>
      <body>
  <div style="width: 200px; height:50px; background-color:#1a32a6; margin-left:400px; border-radius:10px;">
	<h2 style="text-align:center; font:20pt;"><b>MENU</b></h2>
	</div>
	<br/>
	<xsl:for-each select="pizza">
	  <xsl:sort select="nazwa" />
	  <xsl:choose>
	    <xsl:when test="@rodzaj='weg'">
	      <div style="background-color: #009b00; width:500px; margin-left:250px; border-radius:10px;">
		<h4 style="margin-left:20px; font-family: Courier; font-size:20pt;">Nazwa: <xsl:value-of select="nazwa"/></h4>
		<h4 style="margin-left:20px;">
		  <xsl:if test="@promocja='t'">
		    promocja!
		  </xsl:if>
		  Cena: <xsl:value-of select="cena"/>
		</h4>
		<h3 style="text-align:center; color:#eedd82;">Składniki</h3>
		<ul>
		  <xsl:for-each select="skladniki/skladnik">
		    <li><xsl:value-of select="current()"/></li><br/>
		  </xsl:for-each>
		</ul>
	      </div>
	    </xsl:when>
	    <xsl:when test="@rodzaj='nor'">
	      <div style="background-color: #8e2323; width:500px; margin-left:250px; border-radius:10px;">
		<h4 style="margin-left:20px; font-family: Courier; font-size:20pt;">Nazwa: <xsl:value-of select="nazwa"/></h4>
		<h4 style="margin-left:20px;">
		<xsl:if test="@promocja='t'">
		  promocja!
		</xsl:if>
		Cena: <xsl:value-of select="cena"/>
		</h4>
		<h3 style="text-align:center; color:#ffc125;">Składniki</h3>
		<ul>
		  <xsl:for-each select="skladniki/skladnik">
		    <li><xsl:value-of select="current()"/></li><br/>
		  </xsl:for-each>
		</ul>
	      </div>
	    </xsl:when>
	  </xsl:choose>
	</xsl:for-each>
      </body>
    </html>
  </xsl:template>


</xsl:stylesheet>
