<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.master" AutoEventWireup="true"  %>

<script runat="server">

    protected void btnUpload_Click(object sender, EventArgs e)
    {

        string path = "";
        string fileName = "";
        if (FileUpload1.PostedFile != null)
        {

             try
            {

                path = Server.MapPath("pictures");
                fileName = FileUpload1.FileName;
                path = path + "\\" + fileName;
                FileUpload1.SaveAs(path);
                 string st="insert into AppCV (AppID,AppCV) Values ('" + Session["id"] + "','" + fileName + "')";

                dbconnect.add(st);



                
                this.lblMessage.Text = "Yours CV has been uploaded! please click ok to go to the Main page.";
                this.lblMessage.Visible = true;
                this.btnOk.Visible = true;
            }

            catch (Exception excep)
            {
                this.lblMessage.Text = "Error while Uploading CV! please click ok to try again.";
                this.lblMessage.Visible = true;
                this.btnOk.Visible = true;
            }

        }
    }
</script>







<asp:Content ID="Content1" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table style="width: 100%">
        <tr>
           <TD style="HEIGHT: 28px" colSpan="3" align="left">
						<asp:Image id="Image3" runat="server" ImageUrl="~\pictures\uplaod_cv.jpg"></asp:Image></TD>
        </tr>
        <tr>
            <TD align="center" colSpan="3">
						<P class="heading">Upload Your CV Over Here</P>
						<asp:Panel id="plUpload" runat="server" HorizontalAlign="Center" Width="368px" Height="152px"
							BorderStyle="Solid">
							<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
							<P>File Name </P>

								<asp:Button id="btnUpload" runat="server" Font-Bold="True" Text="Upload" OnClick="btnUpload_Click"  ></asp:Button>
                                &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                            
						</asp:Panel>
					</TD>
				</TR>
				<TR>
					<TD height="19" align="center" style="WIDTH: 264px" class="sidebar"></TD>
					<TD align="center" style="WIDTH: 933px" colSpan="2">
						<asp:Label id="lblMessage" runat="server" Font-Bold="True" Visible="False">Label</asp:Label></TD>
				</TR>
				<TR>
					<TD height="26" align="center" style="WIDTH: 264px" class="sidebar"></TD>
					<TD align="center" style="WIDTH: 933px" colSpan="2">
						<asp:Button id="btnOk" runat="server" Font-Bold="True" Text="OK" Visible="False"></asp:Button></TD>
				</TR>
        </tr>
    </table>
</asp:Content>




