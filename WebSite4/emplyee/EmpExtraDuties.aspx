<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpExtraDuties.aspx.cs" Inherits="emplyee_EmpExtraDuties" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
						<asp:Image id="Image2" runat="server" ImageUrl="~/pictures\extra duties.jpg"></asp:Image></td>
    </tr>
    <tr>
					<TD align="center" style="HEIGHT: 13px; font-family: arial; font-size: 12px; background-color: #00CCFF;">
						<asp:Label id="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></TD>
				</tr>
    <tr>
								<TD style="WIDTH: 1054px; background-color: #00CCFF;" align="center" width="1054"><STRONG>Employee 
										Current Designation and Extra Duties</STRONG></TD>
							</tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="397px">
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
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
						<TABLE id="Table3" cellSpacing="0" cellPadding="0" width="100%" align="center" border="0"
							style="BORDER-RIGHT:#c0c0c0 1px solid; BORDER-TOP:#c0c0c0 1px solid; BORDER-LEFT:#c0c0c0 1px solid; BORDER-BOTTOM:#c0c0c0 1px solid">
							<TR>
								<TD align="center" style="font-family: arial; font-size: 12px; background-color: #00CCFF;">Enter Extra Duties</TD>
							</TR>
							<TR>
								<TD align="center">
									<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="0">
										<TR>
											<TD style="font-family: arial; font-size: 12px;">Employee Name</TD>
											<TD>
												<asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="EmpFName" DataValueField="EmpID">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [EmpID], [EmpFName] FROM [EmpData]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD style="font-family: arial; font-size: 12px;">Extra Duties</TD>
											<TD>
												<asp:TextBox id="txtExtraDuties" runat="server" Width="138px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="2">
												<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Save" OnClick="btnSubmit_Click"></asp:Button>
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="font-weight: 700" Text="Update" />
                                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" style="font-weight: 700" Text="Dlete" />
                                            </TD>
										</TR>
									</TABLE>
									<asp:Label id="lblDate" runat="server"></asp:Label>
								</TD>
							</TR>
						</TABLE>
					</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

