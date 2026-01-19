<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">

<html>
<head>
    <title>Premium Shawl Summary - Tudung Kamu</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f6f6f6;
            padding: 30px;
        }

        h1 {
            text-align: center;
            color: #333;
        }

        table {
            width: 80%;
            margin: auto;
            border-collapse: collapse;
            background: white;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: center;
        }

        th {
            background-color: #000;
            color: white;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        .brand {
            text-align: center;
            margin-bottom: 20px;
            font-size: 18px;
        }
    </style>
</head>

<body>

    <h1>Premium Shawl Collection Summary</h1>

    <div class="brand">
        Brand: <b><xsl:value-of select="premiumShawlStore/brand"/></b><br/>
        Collection: <b><xsl:value-of select="premiumShawlStore/collection"/></b>
    </div>

    <table>
        <tr>
            <th>No</th>
            <th>Product Name</th>
            <th>Material</th>
            <th>Price (RM)</th>
        </tr>

        <xsl:for-each select="premiumShawlStore/product">
            <tr>
                <td><xsl:number/></td>
                <td><xsl:value-of select="name"/></td>
                <td><xsl:value-of select="material"/></td>
                <td><xsl:value-of select="price"/></td>
            </tr>
        </xsl:for-each>

    </table>

</body>
</html>

</xsl:template>
</xsl:stylesheet>
