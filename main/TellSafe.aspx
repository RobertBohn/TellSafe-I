<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="TellSafe.aspx.vb" Inherits="TellSafevb.TellSafe"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>TellSafe</title>
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
					<TD VALIGN="top" STYLE="PADDING-RIGHT:15px;PADDING-LEFT:35px;PADDING-TOP:12px">
						<SPAN CLASS="adP"><SPAN CLASS="adH2">Welcome to TellSafe</SPAN><BR>
							<SPAN STYLE="PADDING-LEFT:60px"></SPAN><SPAN CLASS="adH2">Home of Compliant™</SPAN><br>
							<br>
							<SPAN CLASS="adH1"><FONT COLOR="#000000">Your HR Department's Sarbanes-Oxley Solution</FONT></SPAN><br>
							<br>
							<br>
							<SPAN CLASS="adH1">It's Fast . . .</SPAN><br>
							After you submit your information to us, you can be compliant in as little as 
							24 hours.<BR>
							<BR>
							<SPAN CLASS="adH1">It's Easy . . .</SPAN><br>
							You have many company policies to worry about. Once you subscribe, we'll 
							provide all the services you need including educational materials for your 
							employees.<BR>
							<BR>
							<SPAN CLASS="adH1">It's Affordable . . .</SPAN><br>
							For only a few dollars a day, you can be sure that anyone in your company who 
							makes an anonymous report will be protected.<BR>
							<BR>
							<SPAN CLASS="adH1">It's the Law.</SPAN><br>
							When you purchase Compliant™, you take the guesswork out of following federal 
							regulations.</SPAN>
					</TD>
					<TD WIDTH="155" VALIGN="top"><asp:HyperLink id="imgPhone" runat="server" ImageUrl="~/images/phone.jpg" NavigateUrl="~/employee/SendReport.aspx" ToolTip="Click here to send an anonymous report" Width="155px" Height="312px" BorderStyle="None" BorderWidth="0px">HyperLink</asp:HyperLink></TD>
				</TR>
			</TABLE>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>
