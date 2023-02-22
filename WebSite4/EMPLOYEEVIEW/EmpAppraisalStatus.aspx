<%@ Page Title="" Language="C#" MasterPageFile="~/EMPLOYEEVIEW/emp.master" AutoEventWireup="true" CodeFile="EmpAppraisalStatus.aspx.cs" Inherits="EMPLOYEEVIEW_EmpAppraisalStatus" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
        <tr>
            <td>
						<TABLE id="Table2" style="WIDTH: 601px; HEIGHT: 61px" cellSpacing="0" cellPadding="0"
							border="0" align="center">
							<TR>
								<TD align="center" colSpan="2" style="font-family: arial; font-size: medium; background-color: #3399FF;"><strong>Appraisal Form Status</strong></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 120px" align="left">
									<b>
									<asp:Label id="lblMessage1" runat="server">Supervisor Remarks</asp:Label></b></TD>
								<TD style="width: 414px; text-align: center">
									<asp:Label id="lblMessage1Status" runat="server" CssClass="menu" Width="382px" Font-Bold="True" style="font-weight: bold"></asp:Label></TD>
							</TR>
							<TR>
								<TD style="WIDTH: 120px" align="left">
									<b>
									<asp:Label id="lblMessage2" runat="server">Rector/Committe</asp:Label></b></TD>
								<TD style="width: 414px; text-align: center">
									<asp:Label id="lblMessage2Status" runat="server" CssClass="td" Width="392px" Font-Bold="True"></asp:Label></TD>
							</TR>
						</TABLE>
					</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

