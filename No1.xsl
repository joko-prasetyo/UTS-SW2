<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <body>
    <head>
        <style>
            table {
                border-collapse: collapse;
                text-align: center;
            }
            body {
                font-family: arial;
            }
            h2 {
                text-align: center;
            }
            td:hover {
                background-color: limegreen;
                transition: 200ms ease-in-out;
            }
            td {
                cursor: pointer;
            }
        </style>
    </head>
        <h2>Daftar Sekolah</h2>
                <table border="1">
                    <tr bgcolor="red">
                        <th>Kepala Sekolah</th>
                        <th>Jumlah Siswa</th>
                        <th>Uang Sekolah</th>
                        <th>Uang Pembangunan</th>
                        <th>Alamat</th>
                        <th>Akreditasi</th>
                        <th>Jenis Sekolah</th>
                        <th>Jam Aktif</th>
                        <th>Jumlah Karyawan</th>
                    </tr>
                    <xsl:for-each select="Yayasan/Sekolah">
                    <tr>
                        <td><xsl:value-of select="Kepala_Sekolah"/></td>
                        <td><xsl:value-of select="Jumlah_Siswa"/></td>
                        <td><xsl:value-of select="Uang_Sekolah"/></td>
                        <td><xsl:value-of select="Uang_Pembangunan"/></td>
                        <td><xsl:value-of select="Alamat"/></td>
                        <td><xsl:value-of select="Akreditasi"/></td>
                        <td><xsl:value-of select="Jenis_Sekolah"/></td>
                        <td><xsl:value-of select="Jam_Aktif"/></td>
                        <td><xsl:value-of select="Jumlah_Karyawan"/></td>
                    </tr>
                </xsl:for-each>
            </table>
    </body>
</html>
</xsl:template>
</xsl:stylesheet>