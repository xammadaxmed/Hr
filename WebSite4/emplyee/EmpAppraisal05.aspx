<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpAppraisal05.aspx.cs" Inherits="emplyee_EmpAppraisal05" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
						<asp:Image id="Image1" runat="server" ImageUrl="~/pictures\appraisal form remarks by recotr.jpg"></asp:Image></td>
    </tr>
    <tr>
					<TD style="HEIGHT: 2px; font-family: arial; font-size: 12px;" align="center">
						<asp:Label id="lblMessage" runat="server" ForeColor="Red" Font-Bold="True"></asp:Label></TD>
				</tr>
    <tr>
					<TD align="center" style="HEIGHT: 2px; font-family: arial; font-size: 12px; background-color: #0099FF;"><STRONG>Action by 
							Contract Review Committee/Rector</STRONG></TD>
				</tr>
    <tr>
        <td style="text-align: center">
						<asp:Label id="lblEmpDate" runat="server" Visible="False"></asp:Label>
						</td>
    </tr>
    <tr>
								<TD align="center" style="font-family: arial; font-size: 12px; background-color: #0099FF;">Add Remarks Over Here</TD>
							</tr>
    <tr>
        <td>
									<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="0" style="WIDTH: 496px; HEIGHT: 128px" align="center">
										<TR>
											<TD align="center">
												<asp:TextBox id="txtEmpJustification" runat="server" Width="374px" Height="119px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD align="center"><STRONG>
													<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Submit" OnClick="btnSubmit_Click"></asp:Button></STRONG></TD>
										</TR>
									</TABLE>
								</td>
    </tr>
    <tr>
        <td>
						<asp:HyperLink id="HlStep6" runat="server" Font-Bold="True" NavigateUrl="EmpAppraisal05.aspx" ImageUrl="~/pictures\step6button.jpg">STEP : 6</asp:HyperLink></td>
    </tr>
</table>
</asp:Content>

