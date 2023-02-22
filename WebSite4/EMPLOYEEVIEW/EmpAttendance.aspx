<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEEVIEW/emp.master" AutoEventWireup="true" CodeFile="EmpAttendance.aspx.cs" Inherits="EMPLOYEEVIEW_EmpAttendance" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
						<asp:Image id="Image2" runat="server" ImageUrl="~/pictures\attendance12.jpg"></asp:Image></td>
    </tr>
    <tr>
								<TD align="center" style="font-family: arial; font-size: medium; background-color: #0099FF;"><strong>Mark Your Attendance</strong></TD>
							</tr>
    <tr>
        <td>
									<TABLE id="Table2" style="WIDTH: 420px; HEIGHT: 306px" cellSpacing="1" cellPadding="1"
										width="420" border="0" align="center">
										<TR>
											<TD style="WIDTH: 146px; font-family: arial; font-size: 12px;">Date</TD>
											<TD>
												<asp:label id="lblEmpDate" runat="server"></asp:label></TD>
											<TD></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 146px; font-family: arial; font-size: 12px;">Time In</TD>
											<TD>
												<asp:label id="lblEmpTimeIn" runat="server"></asp:label></TD>
											<TD align="center">
												<asp:button id="btnTimeIn" runat="server" Width="81px" Font-Bold="True" Text="Time In" OnClick="btnTimeIn_Click"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 146px; HEIGHT: 28px; font-family: arial; font-size: 12px;">Time Out</TD>
											<TD style="HEIGHT: 28px">
												<asp:label id="lblEmpTimeOut" runat="server"></asp:label></TD>
											<TD style="HEIGHT: 28px" align="center">
												<asp:button id="btnTimeOut" runat="server" Width="81px" Font-Bold="True" Text="Time Out" Visible="False" OnClick="btnTimeOut_Click"></asp:button></TD>
										</TR>
										<TR>
											<TD style="WIDTH: 146px; font-family: arial; font-size: 12px;" align="left">Total Working Hours</TD>
											<TD align="left" colSpan="2">
												<asp:DataGrid id="dbgMyGrid" runat="server" ShowHeader="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="191px">
                                                    <AlternatingItemStyle BackColor="White" />
                                                    <EditItemStyle BackColor="#2461BF" />
                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <ItemStyle BackColor="#EFF3FB" />
                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                </asp:DataGrid></TD>
										</TR>
									</TABLE>
								</td>
    </tr>
    <tr>
        <td>
						<asp:Label id="lbltrack" runat="server" Font-Bold="True" Visible="False"></asp:Label>
						<asp:TextBox id="test" runat="server"></asp:TextBox>
						<asp:Label id="Label1" runat="server" Visible="False"></asp:Label>
						<asp:Label id="Label2" runat="server" Visible="False" ForeColor="Red"></asp:Label>
						<asp:Label id="Label3" runat="server" Visible="False">172.20.</asp:Label>
						<asp:Label id="Label4" runat="server" Font-Bold="True" Visible="False"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<asp:Label id="lblmessage" runat="server" Font-Bold="True"></asp:Label>
						<asp:Label id="Label5" runat="server"></asp:Label>
					</td>
    </tr>
    <tr>
        <td>
						<asp:Image id="Image3" runat="server" ImageUrl="~/pictures\botton1 copy.jpg"></asp:Image></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>

