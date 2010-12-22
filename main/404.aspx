<%@ Page Language="vb" AutoEventWireup="false" Codebehind="404.aspx.vb" Inherits="TellSafevb._404"%>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>TellSafe - Page Not Found</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="../styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TellSafe:LayoutTop ID="ctlLayoutTop" Runat="Server" />
			<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
				<TR>
					<TD VALIGN="top" STYLE="PADDING-RIGHT:50px;PADDING-LEFT:40px;PADDING-TOP:20px"><SPAN CLASS="txtH1">The 
							page you requested cannot be found.</SPAN></TD>
				</TR>
				<TR>
					<TD VALIGN="top" STYLE="PADDING-RIGHT:50px;PADDING-LEFT:40px;PADDING-TOP:20px">The 
						page you are looking for might have been removed, had its name changed, or is 
						temporarily unavailable.</TD>
				</TR>
				<TR>
					<TD VALIGN="top" STYLE="PADDING-RIGHT:50px;PADDING-LEFT:40px;PADDING-TOP:20px">Please 
						try the following:</TD>
				</TR>
				<TR>
					<TD VALIGN="top" STYLE="PADDING-RIGHT:50px;PADDING-LEFT:40px;PADDING-TOP:10px">
						<TABLE BORDER="0" CELLSPACING="5" CELLPADDING="0">
							<TR>
								<TD VALIGN="top">•</TD>
								<TD>If you typed the page address in the address bar, make sure that it is spelled 
									correctly.</TD>
							</TR>
							<TR>
								<TD VALIGN="top">•</TD>
								<TD>Visit our <A HREF="../main/SiteMap.aspx">Sitemap</A> and look for links to the 
									information you want.</TD>
							</TR>
							<TR>
								<TD VALIGN="top">•</TD>
								<TD>Click the Back button to try another link.</TD>
							</TR>
							<TR>
								<TD VALIGN="top">•</TD>
								<TD>Use the navigation menu on the left to find the link you are looking for.</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD VALIGN="top" STYLE="PADDING-RIGHT:50px;PADDING-LEFT:40px;PADDING-TOP:70px">&nbsp;</TD>
				</TR>
			</TABLE>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>
