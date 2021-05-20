<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <style type="text/css">
                    body{
                    padding: 10px 30px;
                    }
                    table th{
                    background-color: #778899;
                    }
                    table td, table th{
                    border: 1px solid black;
                    }
                    ul{
                    margin: 5px;
                    padding-left: 10px;
                    list-style-type: none;
                    }
                    ol{
                    padding-left: 10px;
                    list-style-type: none;
                    }
                </style>
            </head>
            <body>
                <h4>Информация о сотрудниках</h4>
                <table>
                    <tr>
                        <th>Фамилия</th>
                        <th>Имя</th>
                        <th>Отчество</th>
                        <th>Адрес</th>
                        <th>Телефон</th>
                        <th>Должность</th>
                        <th>Подразделение</th>
                    </tr>
                    <xsl:for-each select="DATABASE/EMPLOYEE">
                        <tr>
                            <td>
                                <xsl:value-of select="SURNAME"/>
                            </td>
                            <td>
                                <xsl:value-of select="NAME"/>
                            </td>
                            <td>
                                <xsl:value-of select="PATRONYMIC"/>
                            </td>
                            <td>
                                <ul>
                                    <xsl:for-each select="ADDRESS">
                                         <li>
                                            <xsl:value-of select="INDEX"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="TYPESETTLEMENT"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="REGION"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="DISTRICT"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="NAMESETTLEMENT"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="SREET"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="NUMBERHOME"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="HOUSING"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="ROOM"/>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                            <td>
                                <ol>
                                    <xsl:for-each select="NUMBER">
                                        <li>
                                            <xsl:text>Дом. тф.: </xsl:text>
                                            <xsl:value-of select="HOME"/>
                                            <xsl:text> моб. тф.: </xsl:text>
                                            <xsl:value-of select="PHONE"/>
                                        </li>
                                    </xsl:for-each>
                                </ol>
                            </td>
                            <td>
                                <xsl:value-of select="POSITION"/>
                            </td>
                            <td>
                                <xsl:value-of select="SUBVISION"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
                <h4>Сортировка Фамилий по Алфавиту с фильтрацией по подразделению Маркетинг</h4>
                <table>
                    <tr>
                        <th>Фамилия</th>
                        <th>Имя</th>
                        <th>Отчество</th>
                        <th>Адрес</th>
                        <th>Телефон</th>
                        <th>Должность</th>
                        <th>Подразделение</th>
                    </tr>
                    <xsl:for-each select="DATABASE/EMPLOYEE[SUBVISION='Маркетинг']">
                        <xsl:sort select="SURNAME" order="ascending" />
                        <tr>
                            <td>
                                <xsl:value-of select="SURNAME"/>
                            </td>
                            <td>
                                <xsl:value-of select="NAME"/>
                            </td>
                            <td>
                                <xsl:value-of select="PATRONYMIC"/>
                            </td>
                            <td>
                                <ul>
                                    <xsl:for-each select="ADDRESS">
                                         <li>
                                            <xsl:value-of select="INDEX"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="TYPESETTLEMENT"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="REGION"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="DISTRICT"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="NAMESETTLEMENT"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="SREET"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="NUMBERHOME"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="HOUSING"/>
                                            <xsl:text> , </xsl:text>
                                            <xsl:value-of select="ROOM"/>
                                        </li>
                                    </xsl:for-each>
                                </ul>
                            </td>
                            <td>
                                <ol>
                                    <xsl:for-each select="NUMBER">
                                        <li>
                                            <xsl:text>Дом. тф.: </xsl:text>
                                            <xsl:value-of select="HOME"/>
                                            <xsl:text> моб. тф.: </xsl:text>
                                            <xsl:value-of select="PHONE"/>
                                        </li>
                                    </xsl:for-each>
                                </ol>
                            </td>
                            <td>
                                <xsl:value-of select="POSITION"/>
                            </td>
                            <td>
                                <xsl:value-of select="SUBVISION"/>
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>