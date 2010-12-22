<%@ Page Language="vb" AutoEventWireup="false" Codebehind="mngReview.aspx.vb" Inherits="TellSafevb.mngReview"%>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="Logout" Src="../controls/Logout.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>Tellsafe - Administration</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="../styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form2" method="post" runat="server">
			<TellSafe:LayoutTop ID="ctlLayoutTop" Runat="Server" />
			<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%" HEIGHT="300">
				<TR>
					<TD VALIGN="top" STYLE="PADDING-RIGHT:30px;PADDING-LEFT:40px;PADDING-TOP:30px">
						<TABLE BORDER="1" CELLSPACING="0" CELLPADDING="5" WIDTH="100%">
							<TR>
								<TD>
									<TABLE BORDER="0" CELLSPACING="4" CELLPADDING="0" WIDTH="100%">
										<TR>
											<TD><asp:HyperLink id="hyperlink1" runat="server" Font-Bold="True" NavigateUrl="~/client/mng.aspx">Administration</asp:HyperLink>&gt; 
												Review Messages</B></TD>
											<TD ALIGN="right">&nbsp;
												<TellSafe:Logout ID="ctlLogout" Runat="Server" /></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD>
									<asp:Literal ID="litMessages" Runat="server"></asp:Literal>
								</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
				<TR>
					<TD HEIGHT="100%">&nbsp;</TD>
				</TR>
			</TABLE>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>
