<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpPositionOwnDefault.aspx.cs" Inherits="EmpPositionOwnDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style2">
    <tr>
        <td>
            <table id="Table2" align="center" border="0" cellpadding="0" cellspacing="0" style="BORDER-RIGHT:#c0c0c0 1px solid; BORDER-TOP:#c0c0c0 1px solid; BORDER-LEFT:#c0c0c0 1px solid; BORDER-BOTTOM:#c0c0c0 1px solid" width="499">
                <tr>
                    <td align="center" class="heading" colspan="2">Possible Operations For Employee Position</td>
                </tr>
                <tr>
                    <td align="center"></td>
                    <td align="center">
                        <asp:HyperLink ID="hlAddEmpPosition" runat="server" NavigateUrl="EmpPositions.aspx">Add Employee Position</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td align="center"></td>
                    <td align="center">
                        <p>
                            <asp:HyperLink ID="hlModifyEmpPosition" runat="server" NavigateUrl="EmpPositionsUpdate.aspx">Modify Employee Position</asp:HyperLink>
                        </p>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</asp:Content>

