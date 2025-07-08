<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <!-- Output as HTML -->
  <xsl:output method="html" indent="yes"/>

  <!-- Template for the root <attendanceReport> -->
  <xsl:template match="/attendanceReport">
    <html>
      <head>
        <title>Attendance Report</title>
        <style>
          body {
            font-family: Arial, sans-serif;
          }
          table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
          }
          th, td {
            border: 1px solid #333;
            padding: 8px 12px;
            text-align: center;
          }
          th {
            background-color: #4CAF50;
            color: white;
          }
          tr:nth-child(even) {
            background-color: #f2f2f2;
          }
          h2 {
            text-align: center;
          }
        </style>
      </head>
      <body>
        <h2>Employee Attendance Report</h2>
        <table>
          <tr>
            <th>Emp ID</th>
            <th>Name</th>
            <th>Date</th>
            <th>Check-In</th>
            <th>Check-Out</th>
            <th>Status</th>
          </tr>

          <!-- Loop through each <employee> -->
          <xsl:for-each select="employee">
            <tr>
              <td><xsl:value-of select="empId"/></td>
              <td><xsl:value-of select="name"/></td>
              <td><xsl:value-of select="date"/></td>
              <td><xsl:value-of select="checkIn"/></td>
              <td><xsl:value-of select="checkOut"/></td>
              <td>
                <xsl:value-of select="status"/>
              </td>
            </tr>
          </xsl:for-each>

        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
