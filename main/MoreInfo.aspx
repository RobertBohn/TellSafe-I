<%@ Page Language="vb" AutoEventWireup="false" Codebehind="MoreInfo.aspx.vb" Inherits="TellSafevb.MoreInfo"%>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>TellSafe - Learn More</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="../styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TellSafe:LayoutTop ID="ctlLayoutTop" Runat="Server" />
			<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%" HEIGHT="330">
				<TR>
					<TD VALIGN="top" WIDTH="63%">
						<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px"><SPAN CLASS="txtH1">TellSafe 
										and Compliant™</SPAN></TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:15px"><B>TellSafe</B> is 
									an independent company building web solutions for HR departments.</TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px"><B>Compliant™</B> 
									is a 24-hour service that ensures your company's full compliance with Section 
									301 of the Sarbanes-Oxley Act.</TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px">Public companies 
									that fail to comply with Sarbanes-Oxley risk the possibility of de-listing, 
									while their officers risk fines and imprisonment.</TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px"><A HREF="..\main\SarbanesOxley.aspx">Click 
										here</A> to learn more about Sarbanes-Oxley.</TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:15px">Compliant™ gives 
									employees a number of ways to send anonymous reports to their company's Audit 
									Committee. By providing employees with an avenue for reporting, you will be 
									complying with one of the key sections of Sarbanes-Oxley.</TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px">As a subscriber, 
									your company will receive materials to inform your employees about their rights 
									under the new law.</TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:15px"><SPAN CLASS="txtH1"><FONT COLOR="#000000">Ready 
											to Subscribe?</FONT></SPAN></TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px"><A HREF="..\main\Subscribe.aspx">Click 
										here</A> or call 1-800-475-4358.</TD>
							</TR>
						</TABLE>
					</TD>
					<TD VALIGN="top" WIDTH="2">
						<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" HEIGHT="100%">
							<TR>
								<TD><IMG SRC="images/null.gif" BORDER="0" WIDTH="1" HEIGHT="1" VSPACE="5"></TD>
							</TR>
							<TR>
								<TD BGCOLOR="#999999" HEIGHT="100%"><IMG SRC="images/null.gif" BORDER="0" WIDTH="1" HEIGHT="1"></TD>
							</TR>
						</TABLE>
					</TD>
					<TD VALIGN="top">
						<FORM NAME="empForm" ACTION="SendReport.asp" METHOD="post">
							<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
								<TR>
									<TD STYLE="PADDING-RIGHT:5px;PADDING-LEFT:10px;PADDING-TOP:10px"><SPAN CLASS="txtH1">Compliant™ 
											Provides:</SPAN></TD>
								</TR>
								<TR>
									<TD STYLE="PADDING-RIGHT:5px;PADDING-LEFT:10px;PADDING-TOP:13px"><TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0">
											<TR>
												<TD VALIGN="top">•&nbsp;</TD>
												<TD>Anonymous access for employees 24 hours a day, 7 days a week, 365 days a year.</TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD STYLE="PADDING-RIGHT:5px;PADDING-LEFT:10px;PADDING-TOP:10px"><TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0">
											<TR>
												<TD VALIGN="top">•&nbsp;</TD>
												<TD>Complaints forwarded to your designated representatives.</TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD STYLE="PADDING-RIGHT:5px;PADDING-LEFT:10px;PADDING-TOP:10px"><TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0">
											<TR>
												<TD VALIGN="top">•&nbsp;</TD>
												<TD>Employee materials.</TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD STYLE="PADDING-RIGHT:5px;PADDING-LEFT:10px;PADDING-TOP:10px"><TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0">
											<TR>
												<TD VALIGN="top">•&nbsp;</TD>
												<TD>Reports for your management team.</TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD STYLE="PADDING-RIGHT:5px;PADDING-LEFT:10px;PADDING-TOP:20px"><A HREF="..\main\rfi.aspx">Click 
											here</A> to request samples of employee handouts, informational posters, 
										subscriber agreement, and sample management reports.</TD>
								</TR>
							</TABLE>
						</FORM>
					</TD>
				</TR>
			</TABLE>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>
