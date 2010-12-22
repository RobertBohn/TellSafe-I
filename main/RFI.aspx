<%@ Page Language="vb" AutoEventWireup="false" Codebehind="RFI.aspx.vb" Inherits="TellSafevb.RFI"%>
<%@ Register TagPrefix="TellSafe" TagName="LayoutBottom" Src="../controls/LayoutBottom.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="LayoutTop" Src="../controls/LayoutTop.ascx" %>
<%@ Register TagPrefix="TellSafe" TagName="State" Src="../controls/State.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<title>TellSafe - Request More Information</title>
		<meta name="GENERATOR" content="Microsoft Visual Studio.NET 7.0">
		<meta name="CODE_LANGUAGE" content="Visual Basic 7.0">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="../styles.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<TellSafe:LayoutTop ID="ctlLayoutTop" Runat="Server" />
			<asp:Panel id="pnlRFI" Visible="True" Runat="server">
				<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
					<TR>
						<TD style="PADDING-RIGHT: 50px; PADDING-LEFT: 30px; PADDING-TOP: 20px">
							<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
								<TR>
									<TD><SPAN class="adH1">Compliant™ Request for Information</SPAN><BR>
										<BR>
										TellSafe welcomes your interest in Compliant™. You will receive, via email, 
										files containing pamphlets and posters suitable for distribution to your 
										employees. In addition, we will include a copy of our Subscription Agreement.</TD>
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
												<TD colSpan="2"><B>Contact Information:</B></TD>
											</TR>
											<TR>
												<TD align="right">Name:</TD>
												<TD>
													<INPUT style="WIDTH: 250px" type="text" maxLength="100" name="Visitor" LENGTH="100">
													<I>*Required</I></TD>
											</TR>
											<TR>
												<TD align="right">Title:</TD>
												<TD>
													<INPUT style="WIDTH: 250px" type="text" maxLength="100" name="Title" LENGTH="100">
													<I>*Required</I></TD>
											</TR>
											<TR>
												<TD align="right">Company:</TD>
												<TD>
													<INPUT style="WIDTH: 250px" type="text" maxLength="100" name="Company" LENGTH="100">
													<I>*Required</I></TD>
											</TR>
											<TR>
												<TD align="right">Email</TD>
												<TD>
													<INPUT style="WIDTH: 250px" type="text" maxLength="150" name="Email" LENGTH="150">
													<I>*Required</I></TD>
											</TR>
											<TR>
												<TD align="right">Telephone:</TD>
												<TD>
													<INPUT style="WIDTH: 130px" type="text" maxLength="20" name="Phone" LENGTH="20">
													<I>*Required</I></TD>
											</TR>
											<TR>
												<TD align="right">Address:</TD>
												<TD>
													<INPUT style="WIDTH: 250px" type="text" maxLength="100" name="Address" LENGTH="100"></TD>
											</TR>
											<TR>
												<TD align="right">City:</TD>
												<TD>
													<INPUT style="WIDTH: 150px" type="text" maxLength="100" name="City" LENGTH="100"></TD>
											</TR>
											<TR>
												<TD align="right">State:</TD>
												<TD>
													<TellSafe:State id="ctlState" Runat="Server"></TellSafe:State></TD>
											</TR>
											<TR>
												<TD align="right">Zip:</TD>
												<TD>
													<INPUT style="WIDTH: 100px" type="text" maxLength="100" name="Zip" LENGTH="100"></TD>
											</TR>
											<TR>
												<TD align="right">Country:</TD>
												<TD>
													<INPUT style="WIDTH: 150px" type="text" maxLength="100" name="Country" LENGTH="100"></TD>
											</TR>
											<TR>
												<TD colSpan="2">&nbsp;</TD>
											</TR>
											<TR>
												<TD colSpan="2"><B>Do you have specific comments or questions for us?</B></TD>
											</TR>
											<TR>
												<TD></TD>
												<TD><TEXTAREA name="Comments" rows="6" cols="40"></TEXTAREA></TD>
											</TR>
											<TR>
												<TD colSpan="2">&nbsp;</TD>
											</TR>
											<TR>
												<TD></TD>
												<TD>
													<asp:Button id="btnSubmit" runat="server" Text="Submit Request"></asp:Button></TD>
											</TR>
										</TABLE>
									</TD>
								</TR>
							</TABLE>
						</TD>
					</TR>
				</TABLE>
			</asp:Panel>
			<asp:Panel id="pnlThankYou" Visible="False" Runat="server">
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
