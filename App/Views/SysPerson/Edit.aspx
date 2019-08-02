﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Edit.Master" Inherits="System.Web.Mvc.ViewPage<Langben.DAL.SysPerson>" %>

<%@ Import Namespace="Common" %>
<%@ Import Namespace="Models" %>
<%@ Import Namespace="Langben.App.Models" %>
<asp:Content ID="Content4" ContentPlaceHolderID="CurentPlace" runat="server">
    修改 人员
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <fieldset>
        <legend>
            <input class="a2 f2" type="submit" value="修改" />
            <input class="a2 f2" type="button" onclick="BackList('SysPerson')" value="返回" />
        </legend>
        <div class="bigdiv">
            <%: Html.HiddenFor(model => model.Id ) %>
            <div class="editor-label">
                <span style="margin: 2px 0 0 50px;">*</span>
                <%: Html.LabelFor(model => model.Name) %>：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Name) %>
                <%: Html.ValidationMessageFor(model => model.Name) %>
            </div>
            <div class="editor-label">
                <span  style="margin: 2px 0 0 60px;">*</span>
                <%: Html.LabelFor(model => model.MyName) %>：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.MyName) %>
                <%: Html.ValidationMessageFor(model => model.MyName) %>
            </div>
            <div class="editor-label">
               <span style="margin: 2px 0 0 60px;">*</span>
                <%: Html.LabelFor(model => model.Password) %>：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Password) %>
                <%: Html.ValidationMessageFor(model => model.Password) %>
            </div>
            <div class="editor-label">
                <span style="margin: 2px 0 0 46px;">*</span><%: Html.LabelFor(model => model.SurePassword) %>：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.SurePassword) %>
                <%: Html.ValidationMessageFor(model => model.SurePassword) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Sex) %>：
            </div>
            <div class="editor-field">
                <%=Html.DropDownListFor(model => model.Sex,Models.SysFieldModels.GetSysField("SysPerson","Sex"),"请选择")%>
            </div>
            <div class="editor-label">
                <a class="anUnderLine" onclick="showModalOnly('SysDepartmentId','../../SysDepartment');">
                    <%: Html.LabelFor(model => model.SysDepartmentId) %>： </a>：
            </div>
            <div class="editor-field">
                <div id="checkSysDepartmentId">
                    <%  if (Model != null)
                        {
                            if (null != Model.SysDepartmentId)
                            {%>
                    <table id="<%: Model.SysDepartmentId %>" class="deleteStyle">
                        <tr>
                            <td>
                                <img alt="删除" title="点击删除" onclick="deleteTable('<%: Model.SysDepartmentId %>','SysDepartmentId');"
                                    src="../../../Images/deleteimge.png" />
                            </td>
                            <td>
                                <%: Model.SysDepartment.Name%>
                            </td>
                        </tr>
                    </table>
                    <%}
                        }%>
                </div>
                <%: Html.HiddenFor(model => model.SysDepartmentId)%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Position) %>：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Position) %>
                <%: Html.ValidationMessageFor(model => model.Position) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.MobilePhoneNumber) %>：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.MobilePhoneNumber) %>
                <%: Html.ValidationMessageFor(model => model.MobilePhoneNumber) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.PhoneNumber) %>：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.PhoneNumber) %>
                <%: Html.ValidationMessageFor(model => model.PhoneNumber) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Province) %>：
            </div>
            <div class="editor-field">
                <%=Html.DropDownListFor(model => model.Province,Models.SysFieldModels.GetSysField("SysPerson","Province"),"请选择")%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.City) %>：
            </div>
            <div class="editor-field">
                <%=Html.DropDownListFor(model => model.City,Models.SysFieldModels.GetSysField("SysPerson","City",Model.Province),"请选择")%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Village) %>：
            </div>
            <div class="editor-field">
                <%=Html.DropDownListFor(model => model.Village,Models.SysFieldModels.GetSysField("SysPerson","Village",Model.City),"请选择")%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Address) %>：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Address) %>
                <%: Html.ValidationMessageFor(model => model.Address) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.EmailAddress) %>：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.EmailAddress) %>
                <%: Html.ValidationMessageFor(model => model.EmailAddress) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Remark) %>：
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Remark) %>
                <%: Html.ValidationMessageFor(model => model.Remark) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(model => model.State) %>：
            </div>
            <div class="editor-field">
                <%: Html.RadioButtonListFor(model => model.State,Models.SysFieldModels.GetSysField("SysPerson","State"),false) %>
            </div>
            <%: Html.HiddenFor(model => model.CreateTime ) %><%: Html.HiddenFor(model => model.CreatePerson ) %><%: Html.HiddenFor(model => model.Version ) %>
            <div class="editor-label">
                <a class="anUnderLine" onclick="showModalMany('SysRoleId','../../SysRole');">
                    <%: Html.LabelFor(model => model.SysRoleId) %>： </a>
            </div>
            <div class="editor-field">
                <div id="checkSysRoleId">
                    <% string ids23 = string.Empty;
                       if (Model != null)
                       {
                           foreach (var item23 in Model.SysRole)
                           {
                               string item231 = string.Empty;
                               item231 += item23.Id + "&" + item23.Name;
                               if (ids23.Length > 0)
                               {
                                   ids23 += "^" + item231;
                               }
                               else
                               {
                                   ids23 += item231;
                               }
                    %>
                    <table id="<%: item231 %>" class="deleteStyle">
                        <tr>
                            <td>
                                <img alt="删除" title="点击删除" onclick="deleteTable('<%: item231 %>','SysRoleId');" src="../../../Images/deleteimge.png" />
                            </td>
                            <td>
                                <%: item23.Name %>
                            </td>
                        </tr>
                    </table>
                    <%}
                       }%>
                    <input type="hidden" value="<%= ids23 %>" name="SysRoleIdOld" id="SysRoleIdOld" />
                    <input type="hidden" value="<%= ids23 %>" name="SysRoleId" id="SysRoleId" />
                </div>
            </div>
        </div>
    </fieldset>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="HeadContent" runat="server">
    <script type="text/javascript">

        $(function () {


            $("#Province").change(function () { getCity("#City"); });


            $("#City").change(function () { getVillage("#Village"); });


        });

        function getCity(City) {
            $(City).empty();
            $("<option></option>")
                    .val("")
                    .text("请选择")
                    .appendTo($(City));
            bindDropDownList(City, "#Province");
            $(City).change();
        }

        function getVillage(Village) {
            $(Village).empty();
            $("<option></option>")
                    .val("")
                    .text("请选择")
                    .appendTo($(Village));
            bindDropDownList(Village, "#City");
            $(Village).change();
        }
      

    </script>
</asp:Content>
