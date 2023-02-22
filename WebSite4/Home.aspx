<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<!DOCTYPE html>

<HTML>
	<HEAD>
		<title>Home</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="styles.css" rel="stylesheet" type="text/css">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
        <link href="styles.css" rel="stylesheet" />
	

		<form id="Form1" method="post" runat="server">
			<script language="javascript">
			    function validateLength(oSrc, args) {
			        args.IsValid = args.Value.length == 6
			    }
			</script>
			<DIV align="center">
				<TABLE id="Table6" style="Z-INDEX: 104; LEFT: 0px; WIDTH: 1124px; POSITION: absolute; TOP: 0px; HEIGHT: 608px"
					cellSpacing="0" cellPadding="0" width="1124" border="0" align="center">
					<TR>
						<TD colSpan="6">
							<asp:Image id="Image1" runat="server" ImageUrl="~\pictures\bannerfinal.jpg" Width="100%"></asp:Image></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 945px; HEIGHT: 13px" colSpan="4"><STRONG><FONT color="#ffffff">
									<asp:Image id="Image2" runat="server" ImageUrl="~/pictures\main title.JPG"></asp:Image></FONT></STRONG></TD>
						<TD style="HEIGHT: 13px"></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 298px"><STRONG>
								<asp:HyperLink id="hlRegister" runat="server" NavigateUrl="AppLogin.aspx" Font-Italic="True" Font-Bold="True"
									ForeColor="Black">Register as an Applicant</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;
								<asp:HyperLink id="HlAdvJobs" runat="server" ForeColor="Black" Font-Bold="True" Font-Italic="True"
									NavigateUrl="AppAvailabeJob.aspx">Availabe Jobs</asp:HyperLink></STRONG></TD>
						<TD style="WIDTH: 145px"></TD>
						<TD><asp:HyperLink id="HyperLink1" runat="server" ForeColor="Black" Font-Bold="True" Font-Italic="True"
									NavigateUrl="~/EMPLOYEEVIEW\EMPLogin.aspx" style="font-size: large">Employee Login</asp:HyperLink></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 298px" rowSpan="1" align="center">
							<DIV id="DIV1" style="WIDTH: 351px; HEIGHT: 271px" align="justify" runat="server"><FONT face="Century Gothic" color="#000066" size="2">Applicants! 
									Welcome to COMSATS, Vehari job portal. COMSATS provide best job opportunity 
									in Engineering, IT and Managament fields. As we are one of the growing 
									Institutes, we provide excellent job opportunities to fresh and experienced 
									personalities.
									<BR>
									<BR>
									<HR DESIGNTIMEDRAGDROP="344">
									<BR>
									You can post your personal information over here, by creating login with us. 
									Click the <STRONG><FONT color="#ff0000">Register as an Applicant</FONT></STRONG>
									link to submit your particulars. </FONT>
							</DIV>
						</TD>
						<TD style="WIDTH: 145px" align="center" vAlign="middle">
							<asp:Image id="Image3" runat="server" ImageUrl="~\pictures\title picture.jpg" ImageAlign="Middle" Width="313px"></asp:Image></TD>
						<TD align="center">
							<asp:Panel id="Panel1" runat="server" HorizontalAlign="Center">
								<asp:Image id="Image5" runat="server" ImageUrl="~\pictures\small top.JPG" Width="305px"></asp:Image>

								<asp:Panel id="plAppLogin" runat="server" HorizontalAlign="Center" BorderStyle="Double" Height="188px"
									Width="289px">
									<P align="center">
										<TABLE id="Table2" style="HEIGHT: 173px" cellSpacing="1" cellPadding="1" border="0">
											<TR>
												<TD colSpan="2">
													<asp:Label id="lblMessage" runat="server" ForeColor="Red"></asp:Label></TD>
											</TR>
											<TR align="center">
												<TD style="HEIGHT: 9px" align="left">User Name</TD>
												<TD style="HEIGHT: 9px" align="left">
													<asp:TextBox id="txtAppID" runat="server" Width="138px"></asp:TextBox></TD>
											</TR>
											<TR align="center">
												<TD style="HEIGHT: 1px" align="center" colSpan="2">
													<asp:RequiredFieldValidator id="rfvAppID" runat="server" ErrorMessage="Enter Applicant ID" Display="Dynamic"
														ControlToValidate="txtAppID"></asp:RequiredFieldValidator></TD>
											</TR>
											<TR>
											    <td style="HEIGHT: 16px">
                                                    Password</td>
											    <td style="HEIGHT: 16px">&nbsp;</input><asp:TextBox ID="TextBox1" runat="server" Width="134px" TextMode="Password"></asp:TextBox>
                                                </td>
											</TR>
											<TR>
												<TD style="HEIGHT: 21px" align="center" colspan="2">
                                                    <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Enter Password"></asp:RequiredFieldValidator>
                                                </TD>
											</TR>
											<TR>
												<TD colSpan="2">
													<p align="center">
                                                        <asp:CustomValidator ID="cvAppPossward" runat="server" ClientValidationFunction="validateLength" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="Password should be 6 characters"></asp:CustomValidator>
                                                    </p>
                                                </TD>
											</TR>
										    <tr>
                                                <td colspan="2">
                                                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700" Text="Login" />
                                                </td>
                                            </tr>
										</TABLE>
									</P>
									<P>
										<asp:Button id="btnLogin" runat="server" Font-Bold="True" Width="93px" Text="Login" OnClick="btnLogin_Click"></asp:Button></P>
								</asp:Panel>
								<asp:Image id="Image6" runat="server" ImageUrl="~\pictures\small bottom.jpg" Height="51px"
									Width="310px"></asp:Image>
							</asp:Panel></TD>
					</TR>
					<TR>
						<TD align="center" colSpan="6">
							<P><SPAN lang="EN-GB" style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"></SPAN></P>
						</TD>
					</TR>
				</TABLE>
			</DIV>
		</form>
	</body>
</HTML>