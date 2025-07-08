<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Output XML -->
  <xsl:output method="xml" indent="yes"/>

  <!-- Match root <employees> -->
  <xsl:template match="/employees">
    <payrollData>
      <!-- Loop through each <employee> -->
      <xsl:for-each select="employee">
        <staff>
          <staffId><xsl:value-of select="id"/></staffId>
          <fullName><xsl:value-of select="name"/></fullName>
          <role><xsl:value-of select="designation"/></role>
          <dept><xsl:value-of select="department"/></dept>
          <monthlySalary><xsl:value-of select="salary"/></monthlySalary>
        </staff>
      </xsl:for-each>
    </payrollData>
  </xsl:template>

</xsl:stylesheet>
