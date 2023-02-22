<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="AppInformationUpdate.aspx.cs" Inherits="AppInformationUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td><asp:Image id="Image1" runat="server" ImageUrl="~\pictures\per_Information_modify.bmp"></asp:Image></td>
        </tr>
        <tr>
            <td class="heading" align="center"><asp:Label id="lblAppIfo" runat="server" Font-Bold="True">Your Personal Information</asp:Label></td>
        </tr>
        <tr>
            <TD >
									<TABLE id="Table3" style="WIDTH: 853px; HEIGHT: 46px" cellSpacing="1" cellPadding="1"
							align="center" border="0">
							<TR>
								<TD align="center">
									<asp:Label id="lblEmpFName" runat="server" Font-Bold="True">First Name</asp:Label></TD>
								<TD align="center" style="WIDTH: 69px">
									<asp:Label id="lblEmpMName" runat="server" Font-Bold="True">Middle Name</asp:Label></TD>
								<TD align="center">
									<asp:Label id="lblEmpLName" runat="server" Font-Bold="True">Last Name</asp:Label></TD>
								<TD align="center">
									<asp:Label id="lblEmpHobbies" runat="server" Font-Bold="True">Hobbies</asp:Label></TD>
								<TD align="center">
									<asp:Label id="lblEmpInterest" runat="server" Font-Bold="True">Interest</asp:Label></TD>
								<TD align="center">
									<asp:Label id="lblEmpResPhone" runat="server" Font-Bold="True">Res. Phone</asp:Label></TD>
								<TD align="center">
									<asp:Label id="lblEmpCPhone" runat="server" Font-Bold="True">Cell Phone</asp:Label></TD>
								<TD align="center">
									<asp:Label id="lblEmpDOB" runat="server" Font-Bold="True">D.O.B.</asp:Label></TD>
								<TD align="center">
									<asp:Label id="lblEmpNIC" runat="server" Font-Bold="True">N.I.C.</asp:Label></TD>
								<TD align="center">
									<asp:Label id="lblEmpEmail" runat="server" Font-Bold="True" Width="44px">E-mail</asp:Label></TD>
							</TR>
						</TABLE></TD>
            <TR>
				
					<TD align="center" colSpan="2">
						<P>&nbsp;</P>
						<asp:DataGrid id="dbgMyGrid" runat="server" ForeColor="#000099" BackColor="#FFCC66" HorizontalAlign="Center"
							ShowHeader="False" Width="852px">
							<HeaderStyle Font-Bold="True" HorizontalAlign="Center" ForeColor="#FF99FF" BackColor="#009999"></HeaderStyle>
						</asp:DataGrid></TD>
				</TR>
            <TR>
					
					<TD align="center" colSpan="2">
						<asp:Label id="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></TD>
				</TR>
            <tr>
							<td align="center"><TABLE id="Table2" style="WIDTH: 378px; HEIGHT: 383px" cellSpacing="1" cellPadding="1"
								width="378" border="0">
								<TR>
									<TD style="WIDTH: 142px">First Name</TD>
									<TD>
										<P>
											<asp:TextBox id="txtFName" runat="server"></asp:TextBox></P>
									</TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RequiredFieldValidator id="rfvAppFName" runat="server" ErrorMessage="Enter First Name" Display="Dynamic"
											ControlToValidate="txtFName"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px">Middle Name</TD>
									<TD>
										<P>
											<asp:TextBox id="txtMName" runat="server"></asp:TextBox></P>
									</TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px">Last Name</TD>
									<TD>
										<asp:TextBox id="txtLName" runat="server"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RequiredFieldValidator id="rfvAppLName" runat="server" ErrorMessage="Enter Last Name" Display="Dynamic"
											ControlToValidate="txtLName"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px; HEIGHT: 39px">Hobbies</TD>
									<TD style="HEIGHT: 39px">
										<asp:TextBox id="txtHobbies" runat="server"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RequiredFieldValidator id="rfvAppHobbies" runat="server" ErrorMessage="Enter Your Hobbies" Display="Dynamic"
											ControlToValidate="txtHobbies"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px">Interest</TD>
									<TD>
										<asp:TextBox id="txtInterest" runat="server"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RequiredFieldValidator id="rfvAppInterest" runat="server" ErrorMessage="Enter Your Interest" Display="Dynamic"
											ControlToValidate="txtInterest"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px">Res. Phone</TD>
									<TD>
										<asp:TextBox id="txtResPhone" runat="server"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RequiredFieldValidator id="rfvAppResPhone" runat="server" ErrorMessage="Enter Your Res. Phone" Display="Dynamic"
											ControlToValidate="txtResPhone"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RegularExpressionValidator id="revAppPhone" runat="server" ControlToValidate="txtResPhone" Display="Dynamic"
											ErrorMessage="Enter Correct Phone Number(091-2261196)" ValidationExpression="\d{3}-\d{7}"></asp:RegularExpressionValidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px">Cell Phone</TD>
									<TD>
										<asp:TextBox id="txtCellPhone" runat="server"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RequiredFieldValidator id="rfvAppCellPhone" runat="server" ErrorMessage="Enter Your Cell Phone" Display="Dynamic"
											ControlToValidate="txtCellPhone"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RegularExpressionValidator id="revAppCellPhone" runat="server" ControlToValidate="txtCellPhone" Display="Dynamic"
											ErrorMessage="Enter Correct Cell Number (i.e 0300-5991055)" ValidationExpression="\d{4}-\d{7}"></asp:RegularExpressionValidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px">Date of Birth</TD>
									<TD>
										<P>
											<asp:TextBox id="txtDOB" runat="server"></asp:TextBox></P>
									</TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RequiredFieldValidator id="rfvAppDOB" runat="server" ErrorMessage="Enter Your DOB" Display="Dynamic" ControlToValidate="txtDOB"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RegularExpressionValidator id="revAppDOB" runat="server" ControlToValidate="txtDOB" Display="Dynamic" ErrorMessage="Enter Correct Date Format(i.e mm/dd/yyyy)"
											ValidationExpression="\d{2}/\d{2}/\d{4}"></asp:RegularExpressionValidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px">NIC</TD>
									<TD>
										<P>
											<asp:TextBox id="txtNIC" runat="server"></asp:TextBox></P>
									</TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RequiredFieldValidator id="rfvAppNIC" runat="server" ErrorMessage="Enter Your NIC #" Display="Dynamic"
											ControlToValidate="txtNIC"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RegularExpressionValidator id="revAppNIC" runat="server" ControlToValidate="txtNIC" Display="Dynamic" ErrorMessage="Enter Correct NIC Number (i.e 17101-8221605-5)"
											ValidationExpression="\d{6}-\d{6}-\d{1}"></asp:RegularExpressionValidator></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px">Email ID</TD>
									<TD>
										<asp:TextBox id="txtEmail" runat="server"></asp:TextBox></TD>
								</TR>
								<TR>
									<TD style="WIDTH: 142px"></TD>
									<TD>
										<asp:RegularExpressionValidator id="revAppEmailID" runat="server" ErrorMessage="Email ID should be like 'abc@mail.com'"
											Display="Dynamic" ControlToValidate="txtEmail" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
										<asp:RequiredFieldValidator id="rfvAppEmailID" runat="server" ErrorMessage="Enter Your Email ID" Display="Dynamic"
											ControlToValidate="txtEmail"></asp:RequiredFieldValidator></TD>
								</TR>
								<TR>
									<TD align="center" colSpan="2">
										<asp:Button id="btnUpdate" runat="server" Font-Bold="True" Text="UPDATE" OnClick="btnUpdate_Click"></asp:Button></TD>
								</TR>
							</TABLE>
               </td>
                
        </tr>
    </table>
</asp:Content>

