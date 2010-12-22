<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Sitemap.aspx.vb" Inherits="TellSafevb.Sitemap"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>TellSafe - Sitemap</title>
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
					<TD STYLE="PADDING-RIGHT:50px;PADDING-LEFT:30px;PADDING-TOP:20px" VALIGN="top">
						<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
							<TR>
								<TD>
									<SPAN CLASS="adH1">TellSafe's Sitemap</SPAN>
									<br>
									<br>
									<br>
									<a href="..\main\TellSafe.aspx">Home Page</a>
									<br>
									<br>
									<a href="..\main\Subscribe.aspx">Subscribe to Compliant™</a>
									<br>
									<br>
									<a href="..\client\login.aspx">Compliant™ member sign in</a>
									<br>
									<br>
									<a href="..\employee\SendReport.aspx">Send an anonymous report</a>
									<br>
									<br>
									<a href="..\main\MoreInfo.aspx">Learn more about TellSafe and Compliant™</a>
									<br>
									<br>
									<a href="..\main\RFI.aspx">Request additional information</a>
									<br>
									<br>
									<a href="..\main\Contact.aspx">Contact us</a>
									<br>
									<br>
									<a href="..\main\About.aspx">About us</a>
									<br>
									<br>
									<a href="..\main\Questions.aspx">Management frequently asked questions</a>
									<br>
									<br>
									<a href="..\employee\empFAQ.aspx">Employee's frequently asked questions</a>
									<br>
									<br>
									<a href="..\main\SarbanesOxley.aspx">Learn more about Sarbanes-Oxley</a>
									<br>
									<br>
									<a href="..\main\Security.aspx">Security Statement</a>
									<br>
									<br>
									<a href="..\main\Privacy.aspx">Privacy Policy</a>
								</TD>
							</TR>
							<TR>
								<TD HEIGHT="100%">&nbsp;</TD>
							</TR>
						</TABLE>
					</TD>
				</TR>
			</TABLE>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>
