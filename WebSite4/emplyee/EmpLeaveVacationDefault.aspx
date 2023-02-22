<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpLeaveVacationDefault.aspx.cs" Inherits="emplyee_EmpLeaveVacationDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
						<asp:Image id="Image1" runat="server" ImageUrl="~/pictures\leave vacation.jpg"></asp:Image></td>
    </tr>
    <tr>
					<TD style="HEIGHT: 8px; font-family: arial; font-size: 12px; background-color: #0099FF;" align="center">
						<asp:Label id="lblMessage" runat="server" ForeColor="#C00000" Font-Bold="True"></asp:Label></TD>
				</tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="524px">
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
								<TD align="center" style="font-size: medium; background-color: #0099FF"><strong>Add New Leave and Vacation ID and Name&nbsp;</strong></TD>
							</tr>
    <tr>
        <td>
									<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="0" align="center">
										<TR>
											<TD style="font-family: arial; font-size: 12px;">Leave/Vacation Name</TD>
											<TD>
												<asp:TextBox id="txtVacationName" runat="server" Width="138px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;">Total Holidays</TD>
											<TD>
												<asp:TextBox id="txtVacationDays" runat="server" Width="138px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="2">
												<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Submit" OnClick="btnSubmit_Click"></asp:Button>
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" />
                                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Delete" />
                                            </TD>
										</TR>
									</TABLE>
								</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

