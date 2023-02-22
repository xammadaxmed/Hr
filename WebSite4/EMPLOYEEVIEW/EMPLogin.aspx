<%@ Page Language="C#" AutoEventWireup="true" CodeFile="EMPLogin.aspx.cs" Inherits="EMPLOYEEVIEW_EMPLogin" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >




<HTML>
	<HEAD>
		<title>EMPLogin</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<link href="styles.css" rel="stylesheet" type="text/css">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			
			<TABLE id="Table1" style="Z-INDEX: 104; LEFT: 0px; POSITION: absolute; TOP: 0px" cellSpacing="0"
				cellPadding="1" width="100%" border="0">
				<TR>
					<TD align="center">
						<asp:Image id="Image1" runat="server" ImageUrl="~/pictures\bannerfinal.jpg" Width="100%"></asp:Image></TD>
				</TR>
				<TR>
					<TD align="center" bgColor="#b0e0e6" class="heading" style="HEIGHT: 19px">
						<asp:Label id="lblTitle" runat="server" Font-Bold="True" Font-Size="X-Small" Font-Names="Arial"
							Width="366px">Welcome To Employee Portal</asp:Label></TD>
				</TR>
				<TR>
					<TD align="center" bgColor="powderblue">
						<asp:Panel id="PnlLogin" runat="server" HorizontalAlign="Left" Height="240px" Width="568px"
							BorderStyle="Double" BackColor="White">
							<P>
								<asp:Image id="ImgLogin" runat="server" ImageUrl="~/pictures\login_01.bmp"></asp:Image></P>
							<P align="center"><STRONG>User Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
									<asp:TextBox id="txtUserID" runat="server" Width="148px" style="margin-left: 13px"></asp:TextBox></STRONG></P>
							<STRONG>
							</STRONG><STRONG></STRONG>
							<P align="center"><STRONG>&nbsp;Passoword&nbsp;&nbsp;<INPUT id="txtEmpPassword" style="HEIGHT: 22px; width: 148px; margin-left: 47px;" type="password" maxLength="6" size="18"
										name="txtEmpPassword" runat="server"></STRONG></P>
							<STRONG>
								<P align="center">
									<asp:RequiredFieldValidator id="rfvPassword" runat="server" ErrorMessage="Enter Password" Display="Dynamic"
										ControlToValidate="txtEmpPassword"></asp:RequiredFieldValidator></P>
								<P align="center">
									<asp:CustomValidator id="cvPassword" runat="server" ErrorMessage="Password should be of 6 characters"
										Display="Dynamic" ControlToValidate="txtEmpPassword" ClientValidationFunction="validateLength"></asp:CustomValidator></P>
								<P align="center">
									<asp:Label id="lblMessage" runat="server" Font-Bold="True" Visible="False" ForeColor="Red"></asp:Label></P>
							</STRONG>
                            <P align="center">
									<asp:DropDownList ID="DropDownList1" runat="server" Height="24px" Width="104px">
                                        <asp:ListItem>Admin</asp:ListItem>
                                        <asp:ListItem>other</asp:ListItem>
                                    </asp:DropDownList>
									</P>
							<P align="center">
								<asp:Button id="btnLogin" runat="server" Width="83px" Font-Bold="True" Text="Login" OnClick="btnLogin_Click"></asp:Button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<asp:Button id="btnClear" runat="server" Width="78px" Font-Bold="True" Text="Clear" OnClick="btnClear_Click"></asp:Button></P>
						</asp:Panel></TD>
				</TR>
				<TR>
					<TD align="center" width="100%" background="/HRMSEMPLOYEE\pictures\banner3.jpg">
						<P><SPAN lang="EN-GB" style="FONT-SIZE: 12pt; FONT-FAMILY: 'Times New Roman'; mso-fareast-font-family: 'Times New Roman'; mso-ansi-language: EN-GB; mso-fareast-language: EN-US; mso-bidi-language: AR-SA"><STRONG>Copyright © CIIT,Vehari 2018. All rights are reserved.</STRONG></SPAN></P>
						<P>&nbsp;</P>
					</TD>
				</TR>
			</TABLE>
		</form>
	</body>
</HTML>

