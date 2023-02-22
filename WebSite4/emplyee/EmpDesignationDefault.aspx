<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpDesignationDefault.aspx.cs" Inherits="emplyee_EmpDepartmentDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
								<TD align="center" style="font-family: arial; font-size: medium; font-weight: 700; background-color: #3399FF;">
						<asp:Image id="Image1" runat="server" ImageUrl="~/pictures\designation.jpg"></asp:Image></TD>
							</tr>
        <tr>
								<TD align="center" style="font-family: arial; font-size: medium; font-weight: 700; background-color: #3399FF;">
						<asp:Label id="lblMessage" runat="server" ForeColor="Red" Visible="False"></asp:Label></TD>
							</tr>
        <tr>
								<TD align="center" style="font-family: arial; font-size: medium; font-weight: 700; background-color: #3399FF;">
									<asp:Label id="lblDepartments" runat="server" Font-Bold="True">Current Existing Designation Detail</asp:Label></TD>
							</tr>
        <tr>
            <td style="text-align: center">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="785px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
        <tr>
								<TD align="center" style="font-family: arial; font-size: medium; height: 30px;"><strong><span style="background-color: #3399FF">Add New Designation Details</span></strong></TD>
							</tr>
        <tr>
            <td style="height: 70px">
									<TABLE id="Table2" cellSpacing="1" cellPadding="1" border="0" align="center" style="width: 357px">
										<TR>
											<TD style="font-family: arial; font-size: 12px;"><strong>Designation </strong><b>Name</b></TD>
											<TD style="text-align: center">
												<asp:TextBox id="txtDeptName" runat="server" Width="138px" style="font-weight: bold"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="2">
												<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Save" OnClick="btnSubmit_Click"></asp:Button>
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700" Text="Update" />
                                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: 700" Text="Delete" />
                                            </TD>
										</TR>
									</TABLE>
								</td>
        </tr>
        <tr>
            <td>
						<asp:Image id="Image2" runat="server" ImageUrl="~/pictures\botton1 copy.jpg"></asp:Image></td>
        </tr>
    </table>
</asp:Content>

