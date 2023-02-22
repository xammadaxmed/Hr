<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpPositionOwnDefault.aspx.cs" Inherits="emplyee_EmpPositionOwnDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
						<TABLE id="Table2" cellSpacing="0" cellPadding="0" border="0" style="border: 1px solid #c0c0c0; width: 900px;" align="center">
							<TR>
								<TD align="center" colSpan="2" style="font-family: arial; font-size: 12px; background-color: #0099FF;"><strong>Possible Operations For Employee 
									Position</strong></TD>
							</TR>
							<TR>
								<TD align="center"></TD>
								<TD align="center">
									<asp:HyperLink id="hlAddEmpPosition" runat="server" NavigateUrl="EmpPositions.aspx">Add Employee Position</asp:HyperLink></TD>
							</TR>
							<TR>
								<TD align="center"></TD>
								<TD align="center">
									<P>
										<asp:HyperLink id="hlModifyEmpPosition" runat="server" NavigateUrl="EmpPositionDefault.aspx">Modify Employee Position</asp:HyperLink></P>
								</TD>
							</TR>
						</TABLE>
					</td>
    </tr>
</table>
</asp:Content>

