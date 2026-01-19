<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Instant Hijab Summary | Tudung Kamu</title>

    <style>
        body {
            font-family: Poppins, Arial, sans-serif;
            background: #f8f6f3;
            padding: 40px;
        }

        h1 {
            text-align: center;
            color: #7A1F2B;
            margin-bottom: 30px;
        }

        table {
            width: 95%;
            margin: auto;
            border-collapse: collapse;
            background: white;
            border-radius: 10px;
            overflow: hidden;
            box-shadow: 0 6px 18px rgba(0,0,0,0.08);
        }

        th, td {
            padding: 12px;
            border-bottom: 1px solid #eee;
            text-align: center;
        }

        th {
            background: #7A1F2B;
            color: white;
        }

        tr:hover {
            background: #f3e3cf;
        }

        .price {
            font-weight: bold;
            color: #A68A69;
        }
    </style>
</head>

<body>

<h1>Instant Hijab Collection Summary</h1>

<table>
<tr>
    <th>No</th>
    <th>Product</th>
    <th>Material</th>
    <th>Style</th>
    <th>Colour</th>
    <th>Price (RM)</th>
    <th>Description</th>
</tr>

<xsl:for-each select="products/product">
<tr>
    <td><xsl:value-of select="id"/></td>
    <td><xsl:value-of select="name"/></td>
    <td><xsl:value-of select="material"/></td>
    <td><xsl:value-of select="style"/></td>
    <td><xsl:value-of select="colour"/></td>
    <td class="price"><xsl:value-of select="price"/></td>
    <td><xsl:value-of select="description"/></td>
</tr>
</xsl:for-each>

</table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>
