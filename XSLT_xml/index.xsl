<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0 " xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
        <style>
        *{
            font-family:sans-serif;
        }
        thead{
            background-color:blue;
            color:white;
        }
        tbody{
            background-color:white;
            color:royalblue;
        }
        img{
            height:150px;
        }
        </style>
            <body>
                <table border="1">

                    <thead>
                        <tr>
                            <th>Track-id</th>
                            <th>Name</th>
                            <th>Weight</th>
                            <th>Price</th>
                            <th>Brand</th>
                            <th>Condition</th>
                            <th>Date_of_mfg</th>
                            <th>Mfg-country</th>
                            <th>Picture</th>
                        </tr>
                    </thead>

                    <tbody>

                    <xsl:for-each select="Walmart/Product">
                     <tr>
                            <td><xsl:value-of select="track-id"/></td>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="weight"/></td>
                            <td><xsl:value-of select="price"/></td>
                            <td><xsl:value-of select="brand"/></td>
                            <td><xsl:value-of select="condition"/></td>
                            <td><xsl:value-of select="date_of_mfg"/></td>
                            <td><xsl:value-of select="mfg-country"/></td>
                            <td><img src="images/{picture}"/></td>
                        </tr>
                    </xsl:for-each>
            
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>