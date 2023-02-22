<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpAppraisal04.aspx.cs" Inherits="emplyee_EmpAppraisal04" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
						<asp:Image id="Image1" runat="server" ImageUrl="~/pictures\appraisal form remarks by supervisor.jpg"></asp:Image></td>
    </tr>
    <tr>
					<TD style="HEIGHT: 2px; font-family: arial; font-size: 12px; background-color: #0099FF;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:label id="lblMessage" runat="server" ForeColor="Red" Font-Bold="True"></asp:label></TD>
				</tr>
    <tr>
					<TD style="HEIGHT: 2px; font-family: arial; font-size: 12px; background-color: #0099FF;" align="center"><STRONG class="heading">Justification 
							for the honorarium/ additional increments/appointment to Higher Grade</STRONG></TD>
				</tr>
    <tr>
        <td style="text-align: center">
						<asp:label id="lblEmpDate" runat="server" Visible="False"></asp:label>
						</td>
    </tr>
    <tr>
								<TD align="center" style="font-family: arial; font-size: 12px;">Add Your Remarks Over Here</TD>
							</tr>
    <tr>
        <td>
									<TABLE id="Table2" style="WIDTH: 496px; HEIGHT: 128px" cellSpacing="1" cellPadding="1"
										width="496" border="0" align="center">
										<TR>
											<TD style="HEIGHT: 41px" align="center">
												<asp:textbox id="txtEmpJustification" runat="server" Width="374px" Height="119px" TextMode="MultiLine"></asp:textbox></TD>
										</TR>
										<TR>
											<TD align="center">
												<asp:button id="btnSubmit" runat="server" Font-Bold="True" Text="Submit" OnClick="btnSubmit_Click"></asp:button></TD>
										</TR>
									</TABLE>
								</td>
    </tr>
    <tr>
        <td><STRONG>
							<asp:HyperLink id="HlStep5" runat="server" NavigateUrl="EmpAppraisal05.aspx" ImageUrl="~/pictures\step5button.jpg">STEP : 5</asp:HyperLink></STRONG></td>
    </tr>
</table>
</asp:Content>

