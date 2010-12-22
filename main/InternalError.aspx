<%@ Page Language="vb" AutoEventWireup="false" Codebehind="InternalError.aspx.vb" Inherits="TellSafevb.InternalError"%>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>TellSafe - Internal Error</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="../styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TellSafe:LayoutTop ID="ctlLayoutTop" Runat="Server" />
			<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%" HEIGHT="300">
				<TR>
					<TD VALIGN="top" STYLE="PADDING-RIGHT:100px;PADDING-LEFT:40px;PADDING-TOP:20px">
						<SPAN CLASS="txtH1">An Internal Error Was Encountered.</SPAN>
						<br>
						<br>
						<br>
						Due to a technical problem, we are unable to process your request at this time.
						<br>
						<br>
						We are aware of the problem and it will be fixed as soon as possible. We 
						apologize for any inconvenience.
					</TD>
				</TR>
			</TABLE>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>
