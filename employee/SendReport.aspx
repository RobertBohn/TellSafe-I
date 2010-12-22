<%@ Page Language="vb" AutoEventWireup="false" validateRequest="false" Codebehind="SendReport.aspx.vb" Inherits="TellSafevb.SendReport"%>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="PhoneNumber" Src="../controls/PhoneNumber.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>TellSafe - Employee Area</title>
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
					<TD VALIGN="top" WIDTH="50%">
						<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px">
									<SPAN CLASS="txtH1">Employee Information</SPAN></TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px">
									There are several ways to submit an anonymous report to Compliant™:</TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px"><TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0">
										<TR>
											<TD VALIGN="top">•&nbsp;</TD>
											<TD>You can enter a report on the website.</TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px"><TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0">
										<TR>
											<TD VALIGN="top">•&nbsp;</TD>
											<TD>
												You can call
												<TellSafe:PhoneNumber ID="ctlPhoneNumber" Runat="Server" />. An operator will 
												assist you in submitting a report.
											</TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px"><TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0">
										<TR>
											<TD VALIGN="top">•&nbsp;</TD>
											<TD>You can send a printed report by courier or U.S. Postal Service to our 
												processing center at:</TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:50px;PADDING-TOP:10px">TellSafe, LLC<br>
									1817 Vaccaro Place<br>
									Henderson, NV 89074</TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px">Please remember 
									that when you send a printed report you don't receive a confirmation number. In 
									that case, you can use the mail date for your reference instead.</TD>
							</TR>
							<TR>
								<TD STYLE="PADDING-RIGHT:10px;PADDING-LEFT:10px;PADDING-TOP:10px"><A HREF="..\employee\empFAQ.aspx">Click 
										here</A> if you have questions about our website security, privacy, or your 
									rights.</TD>
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
						<asp:Panel ID="pnlChooseCompany" Runat="server">
							<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 10px"><SPAN class="txtH1">Welcome</SPAN></TD>
								</TR>
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 10px">To submit an 
										anonymous report, please choose your company from the drop down list.</TD>
								</TR>
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 20px" align="middle">
										<asp:DropDownList id="ddlCompany" runat="Server" Width="230px" AutoPostBack="True"></asp:DropDownList></TD>
								</TR>
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px">
										<asp:Panel id="pnlSelectCompany" Runat="server" Visible="True">
											<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
												<TR>
													<TD style="PADDING-TOP: 20px">As a Compliant™ subscriber, your company's name 
														should appear in the drop down list.</TD>
												</TR>
												<TR>
													<TD style="PADDING-TOP: 10px">If you don't see your company's name and you think it 
														should appear, please contact us anonymously at <A href="mailto:info@tellsafe.com">info@tellsafe.com</A>.</TD>
												</TR>
											</TABLE>
										</asp:Panel>
										<asp:Panel id="pnlVerifyCompany" Runat="server" Visible="False">
											<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
												<TR>
													<TD style="PADDING-LEFT: 30px; PADDING-TOP: 2px">
														<asp:Literal id="lblCompanyInfo" Runat="server"></asp:Literal></TD>
												</TR>
												<TR>
													<TD style="PADDING-TOP: 20px">Verify your company information and click the 
														Continue button.</TD>
												</TR>
												<TR>
													<TD style="PADDING-TOP: 20px" align="middle">&nbsp;
														<asp:Button id="btnVerifyCompany" runat="server" Text="Continue..."></asp:Button></TD>
												</TR>
											</TABLE>
										</asp:Panel></TD>
								</TR>
							</TABLE>
						</asp:Panel>
						<asp:Panel ID="pnlSendMessage" Visible="False" Runat="server">
							<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 10px"><SPAN class="txtH1">Enter 
											Your Report</SPAN></TD>
								</TR>
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 10px">Type your 
										report into the text box below.</TD>
								</TR>
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 10px">In order to 
										remain anonymous, do not include any personal information in your message.</TD>
								</TR>
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 10px">Be as 
										specific as possible. Include dates and times whenever you can.</TD>
								</TR>
								<TR>
									<TD id="Wait" style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 10px"></TD>
								</TR>
								<TR>
									<TD style="PADDING-TOP: 20px" align="middle">
										<asp:TextBox id="txtMessage" runat="server" TextMode="MultiLine" Rows="8" Columns="42" EnableViewState="False">(type your report here)</asp:TextBox>
										<asp:RequiredFieldValidator id="rfvMessage" runat="server" ErrorMessage="Please enter your message in the text area below." Display="None" ControlToValidate="txtMessage" InitialValue="(type your report here)"></asp:RequiredFieldValidator>
										<asp:ValidationSummary id="ValidationSummary1" runat="server" DisplayMode="List" ShowSummary="False" ShowMessageBox="True"></asp:ValidationSummary></TD>
								</TR>
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 5px; PADDING-TOP: 10px" align="middle">&nbsp;
										<asp:Button id="btnCancel" runat="server" Text="Cancel" CausesValidation="False"></asp:Button>&nbsp;&nbsp;
										<asp:Button id="btnSubmit" runat="server" Text="Submit"></asp:Button></TD>
								</TR>
							</TABLE>
						</asp:Panel>
						<asp:Panel ID="pnlThankYou" Visible="False" Runat="server">
							<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 10px"><SPAN class="txtH1">Thank 
											You</SPAN></TD>
								</TR>
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 10px">Your report 
										has been submitted. The members of your company's Audit Comittee will receive 
										an email informing them that they have an anonymous message.</TD>
								</TR>
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 10px">If you need 
										to refer to this report in a future submission, use this confirmation number:</TD>
								</TR>
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 30px; PADDING-TOP: 15px"><B>Confirmation 
											Number:
											<asp:Label id="lblConfirmation" runat="server">Label</asp:Label></B></TD>
								</TR>
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 10px; PADDING-TOP: 15px">Please click 
										the Finished button to return to the TellSafe home page.</TD>
								</TR>
								<TR>
									<TD style="PADDING-RIGHT: 10px; PADDING-LEFT: 100px; PADDING-TOP: 15px">
										<asp:Button id="btnFinished" runat="server" Text="Finished"></asp:Button></TD>
								</TR>
							</TABLE>
						</asp:Panel>
					</TD>
				</TR>
			</TABLE>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>
