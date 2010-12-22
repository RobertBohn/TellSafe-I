<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Security.aspx.vb" Inherits="TellSafevb.Security1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>TellSafe - Security</title>
		<meta content="Microsoft Visual Studio.NET 7.0" name="GENERATOR">
		<meta content="Visual Basic 7.0" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="../styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TellSafe:LayoutTop ID="ctlLayoutTop" Runat="Server" />
			<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
				<TR>
					<TD STYLE="PADDING-RIGHT:40px;PADDING-LEFT:40px;PADDING-TOP:20px">
						<SPAN CLASS="txtP"><SPAN CLASS="txtH2">Security</SPAN><br>
							<br>
							Compliant™ is TellSafe's confidential and secure web-based reporting service 
							developed to ensure that information will be reported to Audit Committees as 
							mandated by the Sarbanes-Oxley Act of 2002.<br>
							<br>
							TellSafe is committed to protecting the confidentiality and anonymity of those 
							who use Compliant™.<br>
							<A HREF="JavaScript:popUpVeriSign();"><IMG SRC="../images/verisign2.gif" BORDER="0" WIDTH="113" HEIGHT="59" HSPACE="180" VSPACE="10" ALT="VeriSign - Click to Verify"></A><br>
							Our reporting system is protected by the latest encryption technology. We 
							believe that most employees will send their information from a secure location. 
							But our system provides for complete encryption and protection of reports 
							placed from anywhere.<br>
							<br>
							These reports are never faxed or emailed, and are only available to those with 
							a unique user name and password issued from our secure server. Once a report is 
							placed on our server, it is never shared with anyone except those established 
							by the Subscriber.<br>
							<br>
							Compliant™ administrators have no access to the identity of an employee who 
							makes an anonymous report. All reports are encrypted and only accessible to a 
							Subscriber's designated contacts. </SPAN>
					</TD>
				</TR>
			</TABLE>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>
