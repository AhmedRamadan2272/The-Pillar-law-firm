<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MangerOf_Projects.aspx.cs" Inherits="Amr_Groups.MangerOf_Projects" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-horizontal">
            <h2>Add Product</h2>
            <hr />
            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="الاسم بالعربيه "></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="txtPName" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtPName"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="الاسم الانجليزي"></asp:Label>
                <div class="col-md-3">
                    <asp:TextBox ID="TxtName_En" CssClass="form-control" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="هذا الحقل واجب لايمكن ان يكون خالي" ControlToValidate="txtPName"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="نــوع المشروع"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlType" CssClass="form-control" runat="server">
                        <asp:ListItem Selected="True" Value="-1">أختر</asp:ListItem>
                        <asp:ListItem Value="1">مشاريع لاحقه</asp:ListItem>
                        <asp:ListItem Value="2">مشاريع سابقه</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" CssClass="text-danger" runat="server" ErrorMessage="هذا الحقل واجب لايمكن ان يكون خالي" ControlToValidate="ddlType" InitialValue="0"></asp:RequiredFieldValidator>
                </div>
            </div>
             <div class="form-group">
                <asp:Label ID="Label3" runat="server" CssClass="col-md-2 control-label" Text="الصوره الرئيـــسيه"></asp:Label>
                <div class="col-md-3">
                    <asp:FileUpload ID="FileUploadMAster" accept=".gif  ,.png  ,.jpeg, .jpg*" multiple="false" CssClass="form-control" runat="server" OnDataBinding="FileUploadMAster_DataBinding" />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="يجب اختيار صوره " ControlToValidate="FileUploadMAster"></asp:RequiredFieldValidator>
                </div>
            </div>
            <div class="form-group">
                <asp:Label ID="Label6" runat="server" CssClass="col-md-2 control-label" Text="الوصف"></asp:Label>
                <div class="col-md-3">
                      <script type="text/javascript" src="js/nicEdit-latest.js" ></script> <script type="text/javascript">
                                                                                               //<![CDATA[
                                                                                               bkLib.onDomLoaded(function () { nicEditors.allTextAreas() });
                                                                                               //]]>
  </script>

                    <textarea id="TextArea1" runat="server" cols="20"  
 name="S1" rows="2" style="width:800px;" ></textarea></div>
            </div>

                </div>
            </div>
            <div class="form-group">
                <div class="col-md-2">
                    
                    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="False" ForeColor="#FF3300" Text="امتداد الصوره خطأ" Visible="False"></asp:Label>
                    
                </div>
                <div class="col-md-6">
                    <asp:Button ID="btnAdd" runat="server" Text="حفظ" CssClass="btn btn-default" OnClick="btnAdd_Click"  Height="42px" Width="116px"   />
                </div>
            </div>
                
        </div>
    </div>
</asp:Content>
