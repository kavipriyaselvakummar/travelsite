<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">

        <html>

        <head>

            <title>TravelSite Feedback</title>

            <style>

                body {
                    font-family: Arial;
                    background-color: #f4f9ff;
                    padding: 30px;
                }

                h2 {
                    text-align: center;
                    color: #023e8a;
                }

                table {
                    width: 90%;
                    margin: auto;
                    border-collapse: collapse;
                    background: white;
                }

                th {
                    background-color: #0077b6;
                    color: white;
                    padding: 12px;
                }

                td {
                    padding: 10px;
                    border: 1px solid #ccc;
                    text-align: center;
                }

                tr:hover {
                    background-color: #eaf6ff;
                }

            </style>

        </head>

        <body>

            <h2>TravelSite Feedback Summary</h2>

            <table>

                <tr>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Rating</th>
                    <th>Category</th>
                    <th>Comment</th>
                </tr>

                <xsl:for-each select="feedbacks/feedback">

                    <tr>

                        <td>
                            <xsl:value-of select="name"/>
                        </td>

                        <td>
                            <xsl:value-of select="email"/>
                        </td>

                        <td>
                            <xsl:value-of select="rating"/>
                        </td>

                        <td>
                            <xsl:value-of select="category"/>
                        </td>

                        <td>
                            <xsl:value-of select="comment"/>
                        </td>

                    </tr>

                </xsl:for-each>

            </table>

        </body>

        </html>

    </xsl:template>

</xsl:stylesheet>