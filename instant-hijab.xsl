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
            background-color: #f8f8f8;
            padding: 40px;
        }

        h1 {
            text-align: center;
            color: #48596B;
            margin-bottom: 30px;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 4px 10px rgba(0,0,0,0.08);
        }

        th, td {
            padding: 12px 15px;
            border-bottom: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #7A90A8;
            color: white;
            font-weight: 500;
        }

        tr:hover {
            background-color: #f1f4f8;
        }

        .price {
            font-weight: bold;
            color: #A68A69;
        }

        .footer {
            text-align: center;
            margin-top: 40px;
            color: #777;
            font-size: 14px;
        }
    </style>
</head>

<body>

    <h1>Instant Hijab Collection Summary</h1>

    <table>
        <tr>
            <th>No</th>
            <th>Product Name</th>
            <th>Material</th>
            <th>Type</th>
            <th>Colour</th>
            <th>Price (RM)</th>
            <th>Description</th>
        </tr>

        <xsl:for-each select="products/product">
        <tr>
            <td><xsl:value-of select="id"/></td>
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="material"/></td>
            <td><xsl:value-of select="type"/></td>
            <td><xsl:value-of select="colour"/></td>
            <td class="price"><xsl:value-of select="price"/></td>
            <td><xsl:value-of select="description"/></td>
        </tr>
        </xsl:for-each>

    </table>

    <div class="footer">
        © 2026 Tudung Kamu — Instant Hijab Summary
    </div>

</body>
</html>

</xsl:template>
</xsl:stylesheet>
