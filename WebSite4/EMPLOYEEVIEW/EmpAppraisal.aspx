<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEEVIEW/emp.master" AutoEventWireup="true" CodeFile="EmpAppraisal.aspx.cs" Inherits="EMPLOYEEVIEW_EmpAppraisal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <table class="auto-style2">
    <tr>
        <td>
						<asp:Image id="Image2" runat="server" ImageUrl="~/pictures\appraisal.jpg" Width="952px"></asp:Image></td>
    </tr>
    <tr>
        <td>
						<asp:Label CssClass="heading" Font-Bold="True" ForeColor="Red" id="lblMessage" runat="server"
							Visible="False" style="text-align: center"></asp:Label></td>
    </tr>
    <tr>
        <td>
						<TABLE id="Table3" cellSpacing="0" cellPadding="0" width="935" align="center" border="0"
							style="BORDER-RIGHT:#c0c0c0 1px solid; BORDER-TOP:#c0c0c0 1px solid; BORDER-LEFT:#c0c0c0 1px solid; WIDTH:935px; BORDER-BOTTOM:#c0c0c0 1px solid; HEIGHT:340px">
							<TR>
								<TD align="center" style="font-family: arial; font-size: 12px;">Fill Appraisal Form</TD>
							</TR>
							<TR>
								<TD align="center">
									<TABLE id="Table2" style="WIDTH: 748px; HEIGHT: 245px" cellSpacing="1" cellPadding="1"
										rules="all" width="748" border="0">
										<TR>
											<TD style="HEIGHT: 19px; font-family: arial; font-size: 12px;">Employee Name</TD>
											<TD style="WIDTH: 164px; HEIGHT: 19px"><STRONG>
													<asp:label id="lblEmpFName" runat="server" ForeColor="DarkOrange" Width="48px"></asp:label>&nbsp;
													<asp:label id="lblEmpMName" runat="server" ForeColor="DarkOrange" Width="43px"></asp:label>&nbsp;
													<asp:label id="lblEmpLName" runat="server" ForeColor="DarkOrange" Width="42px"></asp:label></STRONG></TD>
											<TD style="HEIGHT: 19px; font-family: arial; font-size: 12px;">Position</TD>
											<TD style="HEIGHT: 19px"><STRONG>
													<asp:Label id="lblEmpPosition" runat="server" ForeColor="DarkOrange"></asp:Label></STRONG></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 12px; font-family: arial; font-size: 12px;">Department / Section</TD>
											<TD style="WIDTH: 164px; HEIGHT: 12px"><STRONG>
													<asp:Label id="lblEmpDepartment" runat="server" ForeColor="DarkOrange"></asp:Label></STRONG></TD>
											<TD style="HEIGHT: 12px; font-family: arial; font-size: 12px;">Supervisor</TD>
											<TD style="HEIGHT: 12px"><STRONG>
													<asp:textbox id="txtEmpSupervisor" runat="server" Width="138px"></asp:textbox></STRONG></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 6px; font-family: arial; font-size: 12px;">Date Of Appointed To Position</TD>
											<TD style="WIDTH: 164px; HEIGHT: 6px"><STRONG>
													<asp:label id="lblEmpPositionStartDate" runat="server" ForeColor="DarkOrange" Width="138px"></asp:label></STRONG></TD>
											<TD style="HEIGHT: 6px; font-family: arial; font-size: 12px;">Date Of Expiry Of Current Contract</TD>
											<TD style="HEIGHT: 6px"><STRONG>
													<asp:label id="lblEmpExpDate" runat="server" ForeColor="DarkOrange" Width="138px"></asp:label></STRONG></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 2px; font-family: arial; font-size: 12px;">Period Of Appraisal</TD>
											<TD style="WIDTH: 164px; HEIGHT: 2px">&nbsp;</TD>
											<TD style="HEIGHT: 2px">&nbsp;</TD>
											<TD style="HEIGHT: 2px">&nbsp;</TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 9px; font-family: arial; font-size: 12px;" colSpan="4">Major Duties and Responsibilites 
												Of The Position For The Review Period</TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 7px" align="center" colSpan="4">
												<asp:dropdownlist id="ddlExtraDuties" runat="server" Width="138px"></asp:dropdownlist></TD>
										</TR>
										<TR>
											<TD style="HEIGHT: 71px"></TD>
											<TD style="HEIGHT: 71px" align="center" colSpan="2">
												<asp:datagrid id="DataGrid1" runat="server" ShowHeader="False" CellPadding="4" ForeColor="#333333" GridLines="None" Width="210px">
                                                    <AlternatingItemStyle BackColor="White" />
                                                    <EditItemStyle BackColor="#2461BF" />
                                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                                    <ItemStyle BackColor="#EFF3FB" />
                                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                                </asp:datagrid></TD>
											<TD style="HEIGHT: 71px"></TD>
										</TR>
										<TR>
											<TD align="center" colSpan="4">
												<asp:button id="btnSubmit" runat="server" Font-Bold="True" Text="Save" OnClick="btnSubmit_Click"></asp:button></TD>
										</TR>
									</TABLE>
									<asp:Label id="lblTodayDate" runat="server" Visible="False"></asp:Label></TD>
							</TR>
						</TABLE>
						</td>
    </tr>
    <tr>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>
						<asp:Image id="Image3" runat="server" ImageUrl="~/pictures\botton1 copy.jpg"></asp:Image></td>
    </tr>
</table>
</asp:Content>

