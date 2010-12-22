<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Page Language="vb" AutoEventWireup="false" Codebehind="Contact.aspx.vb" Inherits="TellSafevb.Contact1"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>TellSafe - Contact Us</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="../styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TellSafe:LayoutTop ID="ctlLayoutTop" Runat="Server" />
			<asp:Panel ID="pnlContactUs" Visible="True" Runat="server">
				<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
					<TR>
						<TD style="PADDING-RIGHT: 100px; PADDING-LEFT: 30px; PADDING-TOP: 20px">
							<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD><SPAN class="adH1">Contact TellSafe</SPAN><BR>
										<BR>
										Please tell us what you think about our web site, company, products, or 
										services. If you provide us with your contact information, we will be able to 
										reach you in case we have any questions.</TD>
								</TR>
								<TR>
									<TD>&nbsp;</TD>
								</TR>
								<TR>
									<TD>
										<TABLE cellSpacing="0" cellPadding="0" border="0">
											<TR>
												<TD width="100">&nbsp;</TD>
												<TD align="middle">You may also contact us directly at:
													<BR>
													<BR>
													TellSafe, LLC
													<BR>
													245 Park Ave - 39th Floor
													<BR>
													New York, NY 10167-3999
													<BR>
													1-800-475-4358
													<BR>
													<A href="mailto:info@tellsafe.com">info@tellsafe.com</A>
												</TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
								<TR>
									<TD>&nbsp;</TD>
								</TR>
								<TR>
									<TD>&nbsp;</TD>
								</TR>
								<TR>
									<TD style="PADDING-LEFT: 50px">
										<TABLE cellSpacing="2" cellPadding="2" border="0">
											<TR>
												<TD colSpan="2"><B>Comments or Questions:</B></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD><TEXTAREA name="Comments" rows="6" cols="40"></TEXTAREA></TD>
											</TR>
											<TR>
												<TD colSpan="2">&nbsp;</TD>
											</TR>
											<TR>
												<TD colSpan="2"><B>Contact Information:</B></TD>
											</TR>
											<TR>
												<TD align="right">Name:</TD>
												<TD>
													<INPUT style="WIDTH: 250px" type="text" maxLength="100" name="Visitor" LENGTH="100"></TD>
											</TR>
											<TR>
												<TD align="right">Company:</TD>
												<TD>
													<INPUT style="WIDTH: 250px" type="text" maxLength="100" name="Company" LENGTH="100"></TD>
											</TR>
											<TR>
												<TD align="right">Telephone:</TD>
												<TD>
													<INPUT style="WIDTH: 130px" type="text" maxLength="20" name="Phone" LENGTH="20"></TD>
											</TR>
											<TR>
												<TD align="right">FAX:</TD>
												<TD>
													<INPUT style="WIDTH: 130px" type="text" maxLength="20" name="Fax" LENGTH="20"></TD>
											</TR>
											<TR>
												<TD align="right">Email</TD>
												<TD>
													<INPUT style="WIDTH: 250px" type="text" maxLength="150" name="Email" LENGTH="150"></TD>
											</TR>
											<TR>
												<TD colSpan="2">&nbsp;</TD>
											</TR>
											<TR>
												<TD></TD>
												<TD>
													<asp:Button id="btnSubmit" runat="server" Text="Submit Feedback"></asp:Button></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
			</asp:Panel>
			<asp:Panel ID="pnlThankYou" Visible="False" Runat="server">
				<TABLE height="300" cellSpacing="0" cellPadding="0" width="100%" border="0">
					<TR>
						<TD style="PADDING-RIGHT: 100px; PADDING-LEFT: 30px; PADDING-TOP: 20px">
							<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD vAlign="top"><SPAN class="adH1">Thank You!</SPAN>
										<BR>
										<BR>
										Your message has been delivered. Thank you for taking the time to send us your 
										comments.
										<BR>
										<BR>
										Your feedback is very valuable and contributes to the success of our products. 
										Thank you for taking the time to share your comments with us.
										<BR>
										<BR>
										Sincerely,
										<BR>
										The TellSafe Team
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
					<TR>
						<TD height="100%">&nbsp;</TD>
					</TR>
				</TABLE>
			</asp:Panel>
			<TellSafe:LayoutBottom ID="ctlLayoutBottom" Runat="Server" />
		</form>
	</body>
</HTML>
