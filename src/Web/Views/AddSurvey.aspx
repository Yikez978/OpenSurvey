﻿<%@ Page Language="C#" Inherits="ResourceView<NewSurveyResource>" MasterPageFile="~/Views/Survey.Master" Title="Create Survey" %>

<asp:Content ContentPlaceHolderID="Content" ID="content" runat="server">
    <div>
        <h1>Let's build us a new survey:<%= Resource.Title %></h1>
        <% using(
            scope(Xhtml.Form<NewSurveyResource>().Method("post"))) 
            { 
               using(scope(p))
               {
               %>
        <input type="text" name="Name" value="<%= Resource.Name %>" />
        <input type="text" name="Title" value="<%= Resource.Title %>" />
        <textarea name="Description" rows="4" cols="20"><%= Resource.Description %></textarea>
        <input type="submit" value="Save" />
        <% } } %>

    </div>
</asp:Content>
