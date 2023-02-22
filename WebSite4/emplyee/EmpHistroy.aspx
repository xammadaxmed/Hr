<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpHistroy.aspx.cs" Inherits="emplyee_EmpHistroy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
								<TD align="center" style="font-family: arial; font-size: medium; background-color: #0099FF;"><strong>Select Employee</strong></TD>
							</tr>
    <tr>
        <td><asp:label id="Label1" runat="server" style="text-align: center"></asp:label>
									<asp:Label id="lblMessage" runat="server" style="text-align: center"></asp:Label>
									</td>
    </tr>
    <tr>
        <td>
									<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="0" align="center">
										<TR>
											<TD style="HEIGHT: 4px; font-family: arial; font-size: 12px;">Department</TD>
											<TD style="HEIGHT: 4px"><asp:dropdownlist id="ddlEmpDepartment" runat="server" Width="138px" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="DeptName" DataValueField="DeptID" OnSelectedIndexChanged="ddlEmpDepartment_SelectedIndexChanged"></asp:dropdownlist>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [DeptID], [DeptName] FROM [Dep]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;">Employee ID</TD>
											<TD><asp:dropdownlist id="ddlEmployeeID" runat="server" Width="138px" AutoPostBack="True" OnSelectedIndexChanged="ddlEmployeeID_SelectedIndexChanged"></asp:dropdownlist></TD>
										</TR>
									</TABLE>
								</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
								<TD align="center" style="font-family: arial; font-size: medium; background-color: #0099FF;"><strong>Employee History</strong></TD>
							</tr>
    <tr>
        <td>
									&nbsp;</td>
    </tr>
    <tr>
        <td><asp:datagrid id="dbgMyGrid" runat="server" class="menu" Width="720px" Height="126px" CellPadding="4" ForeColor="#333333" GridLines="None">
            <AlternatingItemStyle BackColor="White" />
            <EditItemStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#EFF3FB" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:datagrid></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

