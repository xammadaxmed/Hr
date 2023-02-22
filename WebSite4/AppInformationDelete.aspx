<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true" CodeFile="AppInformationDelete.aspx.cs" Inherits="AppInformationDelete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" style="width: 100%">
        <tr>
            <td>
								<asp:Image id="Image1" runat="server" ImageUrl="~\pictures\per_Information_delete.jpg"></asp:Image></td>
        </tr>
        <tr>
            <td class="heading"><P align="center">
								<asp:label id="lblAppTitle" runat="server" Font-Bold="True" Font-Size="Larger">Delete Your Record Over Here</asp:label></P></td>
        </tr>
        <tr>
            <td ><P align="center">
								<asp:DataGrid id="dbgMyGrid" Width="392px" Height="184px"  OnDeleteCommand="dbgMyGrid_Delete" DataKeyField="AppID"
									Runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="dbgMyGrid_SelectedIndexChanged">
									<AlternatingItemStyle BackColor="White" />
									<Columns>
										<asp:ButtonColumn Text="Delete Record" CommandName="Delete" />
									</Columns>
								    <EditItemStyle BackColor="#2461BF" />
                                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                                    <ItemStyle BackColor="#EFF3FB" />
                                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                                    <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
								</asp:DataGrid></P></td>
        </tr>
    </table>
</asp:Content>

