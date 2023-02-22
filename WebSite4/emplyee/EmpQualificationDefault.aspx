<%@ Page Title="" Language="C#" MasterPageFile="~/emplyee/empadmin.master" AutoEventWireup="true" CodeFile="EmpQualificationDefault.aspx.cs" Inherits="emplyee_EmpQualificationDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <TABLE id="Table2" cellSpacing="0" cellPadding="0" width="499" border="0" style="BORDER-RIGHT: #c0c0c0 1px solid; BORDER-TOP: #c0c0c0 1px solid; BORDER-LEFT: #c0c0c0 1px solid; WIDTH: 499px; BORDER-BOTTOM: #c0c0c0 1px solid; HEIGHT: 62px">
    <TR>
        <TD align="center" colSpan="2" style="font-family: arial; font-size: medium; font-weight: 700; background-color: #0099FF;">Possible Operations For Employee 
									Qualification</TD>
    </TR>
    <TR>
        <TD align="center"></TD>
        <TD align="center">
            <asp:HyperLink id="hlAddQualification" runat="server" NavigateUrl="EmpQualification.aspx">Add Qualification</asp:HyperLink>
        </TD>
    </TR>
    <TR>
        <TD align="center"></TD>
        <TD align="center">
            <P>
                <asp:HyperLink id="hlModifyQualification" runat="server" NavigateUrl="EmpQualificationUpdate.aspx">Modify Qualification</asp:HyperLink>
            </P>
        </TD>
    </TR>
</TABLE>
</asp:Content>

