<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpContractDefault.aspx.cs" Inherits="emplyee_EmpContractDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <TABLE id="Table2" cellSpacing="0" cellPadding="0" width="499" border="0" style="border: 1px solid #c0c0c0; margin-top: 0px;">
    <TR>
        <TD align="center" colSpan="2" style="font-family: arial; font-size: medium; font-weight: 700; background-color: #3399FF;">Possible Operations For Employee 
									Contract Detail</TD>
    </TR>
    <TR>
        <TD align="center"></TD>
        <TD align="center">
            <asp:HyperLink id="hlAddEmpContract" runat="server" NavigateUrl="EmpContract.aspx">Add Employee Contract</asp:HyperLink>
        </TD>
    </TR>
    <TR>
        <TD align="center"></TD>
        <TD align="center">
            <P>
                <asp:HyperLink id="hlModifyEmpContract" runat="server" NavigateUrl="AppContractUpdate.aspx">Modify Employee Contract</asp:HyperLink>
            </P>
        </TD>
    </TR>
</TABLE>
</asp:Content>

