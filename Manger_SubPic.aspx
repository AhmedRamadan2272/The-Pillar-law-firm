<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Manger_SubPic.aspx.cs" Inherits="Amr_Groups.Manger_SubPic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Product</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Name"></asp:Label>
                <div class="col-md-3">

                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
                        <Columns>
                            <asp:BoundField DataField="Arabic Name" HeaderText="Arabic Name" SortExpression="Arabic Name" />
                            <asp:BoundField DataField="English Name" HeaderText="English Name" SortExpression="English Name" />
                        </Columns>
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                        <RowStyle ForeColor="#000066" />
                        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#007DBB" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#00547E" />
                    </asp:GridView>
                   
 
                    <asp:SqlDataSource ID="Sql_Img" runat="server" ConnectionString="<%$ ConnectionStrings:AmrGroupsConnectionString %>" SelectCommand="SELECT  [Destionation] FROM [tblMasterPic] WHERE ([UID] = @UID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="UID" QueryStringField="ID"  DbType="Guid"/>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                   <table>
                       <thead> Sub Pic</thead>
                       <tr>
                            
                           <asp:Repeater ID="Repeater1" runat="server" DataSourceID="Sql_Img"> 
                                 <ItemTemplate>
                           <td>
                               <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("Destionation") %>'  Height="200px"/>

                           </td>
                                   </ItemTemplate>
        
                           </asp:Repeater>
                       </tr>

                   </table>
 
                    <asp:SqlDataSource ID="Sql_SubPic" runat="server" ConnectionString="<%$ ConnectionStrings:AmrGroupsConnectionString %>" SelectCommand="SELECT tblSubPic.Destionation, tblMasterPic.UID FROM tblMasterPic INNER JOIN tblSubPic ON tblMasterPic.IDPIC = tblSubPic.IDPIC WHERE (tblMasterPic.UID = @UID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="UID" QueryStringField="ID" DbType="Guid" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br />
                   <table>
                       <thead> Sub Pic</thead>
                       <tr>
                            
                           <asp:Repeater ID="Repeater2" runat="server" DataSourceID="Sql_SubPic"> 
                                 <ItemTemplate>
                           <td>
                               <asp:Image runat="server" ImageUrl='<%#Eval("Destionation") %>'  Height="100px"/>

                           </td>
                                   </ItemTemplate>
        
                           </asp:Repeater>
                       </tr>

                   </table>
 
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AmrGroupsConnectionString %>" SelectCommand="SELECT [Name-Ar] AS 'Arabic Name', [Name-En] AS 'English Name' FROM [tblMasterPic] WHERE ([UID] = @UID)">
                        <SelectParameters>
                            <asp:QueryStringParameter Name="UID" QueryStringField="ID"  DbType="Guid" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                
                </div>
            </div>
            <div class="form-group">
                <div class="col-md-3">
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label11" runat="server" CssClass="col-md-2 control-label" Text="Upload Image"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="fuImg01" CssClass="form-control" runat="server" accept="image/*" multiple="false" />
                 </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    <asp:Label ID="Label12" runat="server" Font-Bold="True" ForeColor="Red" Text="Wrong Extension" Visible="False"></asp:Label>
                </div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="حفظ" CssClass="btn btn-default" OnClick="btnAdd_Click1"  Height="42px" Width="116px"   />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
