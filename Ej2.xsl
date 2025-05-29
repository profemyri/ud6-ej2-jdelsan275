<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <title>Catalog of Hobbies</title>
            </head>
            <body>
                <h1>Catalog of Hobbies</h1>
                <div class="hobby">
                <xsl:for-each> select="hobbies/hobby">
                    <h2><xsl:value-of select="name" /></h2>
                    <p><xsl:value-of select="description" /></p>
                    <p>Popularity: <xsl:value-of select="popularity" /></p>
                    <p>Difficulty: <xsl:value-of select="@difficulty" /></p>
                </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>