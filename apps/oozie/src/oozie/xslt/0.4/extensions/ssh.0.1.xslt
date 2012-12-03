<?xml version="1.0"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:import href="../fields/capture_output.xslt"/>
<xsl:import href="../fields/command.xslt"/>
<xsl:import href="../fields/host.xslt"/>
<xsl:import href="../fields/params.xslt"/>
<xsl:import href="../fields/user.xslt"/>

<xsl:template match="ssh:ssh" xmlns:ssh="uri:oozie:ssh-action:0.1">

  <object model="oozie.ssh" pk="0">

    <xsl:call-template name="capture_output"/>
    <xsl:call-template name="command"/>
    <xsl:call-template name="host"/>
    <xsl:call-template name="params"/>
    <xsl:call-template name="user"/>

  </object>

</xsl:template>

<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
</xsl:stylesheet>