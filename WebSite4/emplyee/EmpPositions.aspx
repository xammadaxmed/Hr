<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpPositions.aspx.cs" Inherits="emplyee_EmpPositions" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
						<asp:Image id="Image2" runat="server" ImageUrl="~/pictures\employee position.jpg"></asp:Image></td>
    </tr>
    <tr>
					<TD align="center" style="font-family: arial; font-size: 12px; background-color: #0099FF;">
						<asp:Label id="lblMessage" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label></TD>
				</tr>
    <tr>
								<TD align="center" style="font-family: arial; font-size: 12px; font-weight: 700; background-color: #0099FF;">Set Employee Department and Grade Over Here</TD>
							</tr>
    <tr>
        <td style="text-align: center">
									<TABLE id="Table2" cellSpacing="1" cellPadding="1" width="300" border="0" align="center">
										<TR>
											<TD style="WIDTH: 118px; HEIGHT: 24px; font-family: arial; font-size: 12px;">Department ID</TD>
											<TD style="HEIGHT: 24px">
												<asp:DropDownList id="ddlEmpDeptID" runat="server" Width="138px" DataSourceID="SqlDataSource1" DataTextField="DeptName" DataValueField="DeptID"></asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [DeptID], [DeptName] FROM [Dep]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD style="WIDTH: 118px; font-family: arial; font-size: 12px;">Employee ID</TD>
											<TD>
												<asp:DropDownList id="ddlEmpID" runat="server" Width="138px" DataSourceID="SqlDataSource2" DataTextField="EmpFName" DataValueField="EmpID"></asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [EmpID], [EmpFName] FROM [EmpData]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD style="WIDTH: 118px; HEIGHT: 22px; font-family: arial; font-size: 12px;">Grade</TD>
											<TD style="HEIGHT: 22px">
												<asp:DropDownList id="ddlPositionID" runat="server" Width="138px" DataSourceID="SqlDataSource5" DataTextField="Grade" DataValueField="ID"></asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [ID], [Grade] FROM [Position]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD style="WIDTH: 118px; font-family: arial; font-size: 12px;" align="left">Designation</TD>
											<TD style="WIDTH: 118px" align="left">
												<asp:DropDownList id="ddlEmpDesignation" runat="server" Width="138px" DataSourceID="SqlDataSource4" DataTextField="PositionDescription" DataValueField="PositionID"></asp:DropDownList>
                                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:HRM1ConnectionString %>" SelectCommand="SELECT [PositionID], [PositionDescription] FROM [Des]"></asp:SqlDataSource>
                                            </TD>
										</TR>
										<TR>
											<TD style="WIDTH: 118px" align="right"></TD>
											<TD style="WIDTH: 118px" align="center">
												<asp:Button id="btnSubmit" runat="server" Font-Bold="True" Text="Submit" OnClick="btnSubmit_Click"></asp:Button></TD>
										</TR>
									</TABLE>
								</td>
    </tr>
    <tr>
        <td>
						<asp:Image id="Image3" runat="server" ImageUrl="~/pictures\botton1 copy.jpg"></asp:Image></td>
    </tr>
</table>
</asp:Content>

