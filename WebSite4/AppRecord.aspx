<%@ Page Title="" Language="C#" MasterPageFile="~/adminmaster.master" AutoEventWireup="true" CodeFile="AppRecord.aspx.cs" Inherits="AppRecord" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="auto-style2">
        <tr>
            <td><asp:image id="Image3" runat="server" ImageUrl="~/pictures\Applicant_record.jpg" Width="100%"></asp:image></td>
        </tr>
        <tr>
            <td style="text-align: center; font-size: large; background-color: #3333FF"><strong>Search Applicant</strong></td>
        </tr>
        <tr>
            <td><DIV align="center"><asp:panel id="plApplicant" runat="server" Width="184px" BorderStyle="Groove">
															<CENTER><B>Applicant ID:</B>
																<asp:TextBox id="txtAppID" runat="server"></asp:TextBox></CENTER>
															<CENTER>&nbsp;</CENTER>
															<asp:button id="btnSubmit" onclick="SelectApplicant" runat="server" Font-Bold="True" Text="Search"></asp:button>
															<P></P>
														</asp:panel></DIV></td>
        </tr>
        <tr>
            <td><P align="center" style="font-size: medium; background-color: #0033CC"><strong>Desired Applicant Record</strong></P></td>
        </tr>
        <tr>
            <td><DIV align="center"><asp:datagrid id="dbgMyGrid" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Width="370px">
                <AlternatingItemStyle BackColor="White" />
                <EditItemStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                </asp:datagrid></DIV></td>
        </tr>
    </table>
</asp:Content>

