<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes"/>

    <xsl:template match="/">
        <div class="feedback-summary-container">
            <h2>TravelSite Feedback Summary</h2>
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Rating</th>
                        <th>Category</th>
                        <th>Comment</th>
                    </tr>
                </thead>
                <tbody>
                    <xsl:for-each select="feedbacks/feedback">
                        <tr>
                            <td><xsl:value-of select="name"/></td>
                            <td><xsl:value-of select="email"/></td>
                            <td><xsl:value-of select="rating"/></td>
                            <td><xsl:value-of select="category"/></td>
                            <td><xsl:value-of select="comment"/></td>
                        </tr>
                    </xsl:for-each>
                </tbody>
            </table>
        </div>
    </xsl:template>
</xsl:stylesheet>