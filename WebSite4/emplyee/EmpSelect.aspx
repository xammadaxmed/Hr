<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpSelect.aspx.cs" Inherits="emplyee_EmpSelect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center; background-color: #0099FF"><strong>Select Employee</strong></td>
    </tr>
    <tr>
        <td style="text-align: center">
												<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="23px" Width="160px" DataSourceID="SqlDataSource1" DataTextField="DeptName" DataValueField="DeptID" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                                                </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [DeptID], [DeptName] FROM [Dep]"></asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td style="text-align: center">
												<asp:DropDownList id="ddlEmployeeID" runat="server" Width="160px" class="menu"></asp:DropDownList></td>
    </tr>
    <tr>
        <td style="text-align: center">
												<asp:Button id="btnSelect" runat="server" Text="Select Employee" Font-Bold="True" OnClick="btnSelect_Click"></asp:Button></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
									<TD style="HEIGHT: 16px; font-family: arial; font-size: medium; background-color: #3399FF;" align="center"><strong>Selected Employee Details</strong></TD>
								</tr>
    <tr>
        <td>
										<TABLE id="Table4" height="100%" cellSpacing="0" cellPadding="0" width="100%" border="0">
											<TR>
												<TD style="WIDTH: 468px; HEIGHT: 16px" align="center"><STRONG>
														<asp:Label id="lblEmpID" runat="server" Visible="False" class="menu" Width="288px">Employee ID</asp:Label>
													</STRONG>
												</TD>
												<TD style="HEIGHT: 16px" align="left">
													<asp:Label id="lblMessage" runat="server"></asp:Label></TD>
											</TR>
											<TR>
												<TD align="center" style="WIDTH: 468px"><STRONG>
														<asp:Label id="lblEmpName" runat="server" Visible="False" class="menu" Width="249px">Employee Name</asp:Label></STRONG></TD>
												<TD align="left">
													<asp:Label id="EmpName" runat="server"></asp:Label></TD>
											</TR>
											<TR>
												<TD align="center" style="WIDTH: 468px"></TD>
												<TD align="center"></TD>
											</TR>
											<TR>
												<TD align="center" colspan="2">
							<asp:Label id="EmpFName" runat="server" Visible="False"></asp:Label>
							<asp:Label id="EmpMName" runat="server" Visible="False"></asp:Label>
							<asp:Label id="EmpLName" runat="server" Visible="False"></asp:Label></TD>
											</TR>
										</TABLE>
									</td>
    </tr>
</table>
</asp:Content>

