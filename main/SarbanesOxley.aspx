<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="SarbanesOxley.aspx.vb" Inherits="TellSafevb.SarbanesOxley"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>TellSafe - Sarbanes-Oxley</title>
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
					<TD STYLE="PADDING-RIGHT:45px;PADDING-LEFT:35px;PADDING-TOP:20px"><SPAN CLASS="txtH2">Sarbanes-Oxley 
							Act</SPAN><br>
						<br>
						In 2002, Congress responded to a rash of financial scandals at top U.S. 
						companies by passing the Sarbanes-Oxley Act. The idea behind this law is to 
						place an increased burden of responsibility on corporate officials, and to give 
						employees a method of reporting financial misconduct without fear of reprisal.<br>
						<br>
						Sarbanes-Oxley basically regulates publicly traded companies in four ways:</TD>
				</TR>
				<TR>
					<TD STYLE="PADDING-RIGHT:45px;PADDING-LEFT:35px;PADDING-TOP:10px"><SPAN CLASS="txtH1">1. 
							Independent Audits</SPAN></TD>
				</TR>
				<TR>
					<TD STYLE="PADDING-RIGHT:45px;PADDING-LEFT:55px;PADDING-TOP:10px">Your company’s 
						auditors are not allowed to hold any type of position in your company.</TD>
				</TR>
				<TR>
					<TD STYLE="PADDING-RIGHT:45px;PADDING-LEFT:35px;PADDING-TOP:20px"><SPAN CLASS="txtH1">2. 
							Corporate Code of Ethics</SPAN></TD>
				</TR>
				<TR>
					<TD STYLE="PADDING-RIGHT:45px;PADDING-LEFT:55px;PADDING-TOP:10px">Your company must 
						have a Code of Ethics that expressly states the responsibilities of its top 
						officials.</TD>
				</TR>
				<TR>
					<TD STYLE="PADDING-RIGHT:45px;PADDING-LEFT:35px;PADDING-TOP:20px"><SPAN CLASS="txtH1">3. 
							Complaint Notification</SPAN></TD>
				</TR>
				<TR>
					<TD STYLE="PADDING-RIGHT:45px;PADDING-LEFT:55px;PADDING-TOP:10px">Your company's 
						Audit Committe must establish a process to deal with complaints about financial 
						practices.</TD>
				</TR>
				<TR>
					<TD STYLE="PADDING-RIGHT:45px;PADDING-LEFT:35px;PADDING-TOP:20px"><SPAN CLASS="txtH1">4. 
							Whistleblower Protection</SPAN></TD>
				</TR>
				<TR>
					<TD STYLE="PADDING-RIGHT:45px;PADDING-LEFT:55px;PADDING-TOP:10px">You must provide 
						an independent service to employees so that they can make anonymous reports on 
						your financial practices. You must also be able to prove that no employee has 
						been discriminated against because of a financial report.</TD>
				</TR>
			</TABLE>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>
