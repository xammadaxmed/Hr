<%@ Page Title="" Language="C#"  AutoEventWireup="true" MasterPageFile="~/Masterpage.master" CodeFile="AppAvailabeJobs.aspx.cs" Inherits="App" %>

<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table style="width: 100%">
      <tr> <TD style="WIDTH: 274px; HEIGHT: 29px" colSpan="3"><asp:image id="Image1" runat="server" ImageUrl="~\pictures\available_jobs.jpg"></asp:image></TD>  </tr>
        
          <tr>
            <td>
                <TABLE id="Table2" style="BORDER-RIGHT: #c0c0c0 1px solid; BORDER-TOP: #c0c0c0 1px solid; BORDER-LEFT: #c0c0c0 1px solid; BORDER-BOTTOM: #c0c0c0 1px solid"
							cellSpacing="1" cellPadding="1" width="100%" align="center" border="0">
							<TR class="heading">
								<TD align="center" bgColor="#0099cc"><STRONG><FONT>List of Available Jobs</FONT></STRONG></TD>
							</TR>
							<TR>
								<TD align="center">
									<TABLE id="Table3" style="WIDTH: 751px; HEIGHT: 46px" cellSpacing="1" cellPadding="1"
										border="0">
										<TR>
											<TD align="center" style="width: 134px"><STRONG><asp:label id="lblJobID" runat="server" BackColor="Transparent">Job ID</asp:label></STRONG></TD>
											<TD align="center"><STRONG><asp:label id="lblJobTitle" runat="server" BackColor="Transparent">Job Title</asp:label></STRONG></TD>
											<TD style="WIDTH: 305px" align="center"><STRONG><asp:label id="lblDescription" runat="server" BackColor="Transparent">Description</asp:label></STRONG></TD>
											<TD align="center"><STRONG><asp:label id="lblVacancies" runat="server" BackColor="Transparent">Vacancies</asp:label></STRONG></TD>
											<TD align="center"><STRONG><asp:label id="lblLastDate" runat="server" BackColor="Transparent">Last Date</asp:label></STRONG></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD align="center"><asp:datagrid id="dbgMyGrid" runat="server" Width="809px"
										ShowHeader="False" CellPadding="4" ForeColor="#333333" GridLines="None">
                                    <AlternatingItemStyle BackColor="White" />
                                    <EditItemStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <ItemStyle BackColor="#EFF3FB" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                                    </asp:datagrid></TD>
							</TR>
						</TABLE>
            </td>
        </tr>
    </table>
</asp:Content>


