<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpPositionDefault.aspx.cs" Inherits="emplyee_EmpDepartmentDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
								<TD align="center" style="font-family: arial; font-size: medium; font-weight: 700; background-color: #3399FF;">
						<asp:Image id="Image3" runat="server" ImageUrl="~/pictures\position.jpg"></asp:Image></TD>
							</tr>
        <tr>
								<TD align="center" style="font-family: arial; font-size: medium; font-weight: 700; background-color: #3399FF;">
						<asp:Label id="lblMessage" runat="server" ForeColor="Red" Visible="False"></asp:Label></TD>
							</tr>
        <tr>
								<TD align="center" style="font-family: arial; font-size: medium; font-weight: 700; background-color: #3399FF;">
									<asp:Label id="lblDepartments" runat="server" Font-Bold="True">Current Existing Departments Detail</asp:Label></TD>
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
								<TD align="center" style="font-family: arial; font-size: medium; height: 30px; background-color: #3399FF;"><strong>Add New Grade Details Over Here</strong></TD>
							</tr>
        <tr>
            <td style="height: 70px">
									<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="0" align="center">
										<TR>
											<TD style="WIDTH: 151px; font-family: arial; font-size: 12px;">Grade</TD>
											<TD>
												<asp:TextBox id="txtEmpPositionID" runat="server" Width="138px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 151px"></TD>
											<TD>
												<asp:RequiredFieldValidator id="rfvEmpPosition" runat="server" ControlToValidate="txtEmpPositionID" Display="Dynamic"
													ErrorMessage="Enter Grade"></asp:RequiredFieldValidator></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 151px; font-family: arial; font-size: 12px;">Description</TD>
											<TD>
												<asp:TextBox id="txtEmpDescription" runat="server" Width="138px" TextMode="MultiLine"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 151px; font-family: arial; font-size: 12px;">Poistion </TD>
											<TD>
												<asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="PositionDescription" DataValueField="PositionID" Height="16px" Width="139px">
                                                </asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [PositionID], [PositionDescription] FROM [Des]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD style="WIDTH: 151px; font-family: arial; font-size: 12px;">Salary</TD>
											<TD>
												<asp:TextBox id="txtEmpSalary" runat="server" Width="138px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 151px"></TD>
											<TD>
												<asp:RequiredFieldValidator id="rfvEmpSalary" runat="server" ControlToValidate="txtEmpSalary" Display="Dynamic"
													ErrorMessage="Enter Salary"></asp:RequiredFieldValidator></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 151px; font-family: arial; font-size: 12px;">Allowance Type</TD>
											<TD>
												<asp:TextBox id="txtEmpAllowanceType" runat="server" Width="138px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 151px"></TD>
											<TD>
												<asp:RequiredFieldValidator id="rfvEmpAllowance" runat="server" ControlToValidate="txtEmpAllowanceType" Display="Dynamic"
													ErrorMessage="Enter Allowance Type"></asp:RequiredFieldValidator></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 151px; font-family: arial; font-size: 12px;">Allowance Amount</TD>
											<TD>
												<asp:TextBox id="txtEmpAllowanceAmount" runat="server" Width="138px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 151px; HEIGHT: 24px"></TD>
											<TD style="HEIGHT: 24px">
												<asp:RequiredFieldValidator id="rfvEmpAmount" runat="server" ControlToValidate="txtEmpAllowanceAmount" Display="Dynamic"
													ErrorMessage="Enter Allowance Amount"></asp:RequiredFieldValidator></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 151px; HEIGHT: 24px; font-family: arial; font-size: 12px;">Total Vacations</TD>
											<TD style="HEIGHT: 24px">
												<asp:TextBox id="txtEmpPositionVacation" runat="server" Width="138px"></asp:TextBox></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="2">
												<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Save" OnClick="btnSubmit_Click1"></asp:Button>
                                                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Update" />
                                                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click1" Text="delete" />
                                            </TD>
										</TR>
									</TABLE>
								</td>
        </tr>
        <tr>
            <td>
						</td>
        </tr>
    </table>
</asp:Content>

