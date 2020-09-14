﻿<%@ Page MasterPageFile="~/Site.master" Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="ITMO.Y2020.Gr124.ASP.NET.Lab08NEW.Summary" %>
<%@ Import Namespace="ITMO.Y2020.Gr124.ASP.NET.Lab08NEW" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" 
runat="server"> 

    <div> 
    <h2>Приглашения</h2> 
 
    <h3>Выступающие с докладом: </h3> 
    <table> 
        <thead> 
            <tr> 
                <th>Имя</th> 
                <th>Email</th> 
                <th>Телефон</th>
                <th>Дата регистрации</th>
            </tr> 
        </thead> 
        
                 <tbody> 
            <% var yesData = ResponseRepository.GetRepository().GetAllResponses() 
                    .Where(r => r.WillAttend.Value); 
                foreach (var rsvp in yesData) { 
                    string htmlString = String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td>", 
                        rsvp.Name, rsvp.Email, rsvp.Phone, rsvp.Rdata); 
                    Response.Write(htmlString); 
                } %> 
         
                     <%--//этого не было--%>
        </tbody> 
    </table> 
 
        <h3>Участники без доклада: </h3> 
            <table> 
                <thead> <tr> <th>Имя</th> <th>Email</th> <th>Телефон</th> </tr> </thead>
                <tbody> <%= GetNoShowHtml()%> </tbody> </table>


    </div> 
   </asp:Content>
