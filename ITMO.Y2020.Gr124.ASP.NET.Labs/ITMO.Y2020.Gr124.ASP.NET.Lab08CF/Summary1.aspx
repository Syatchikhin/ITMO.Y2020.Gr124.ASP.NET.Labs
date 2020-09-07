<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Summary1.aspx.cs" Inherits="ITMO.Y2020.Gr124.ASP.NET.Lab08CF.Summary1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div> 
    <h2>Приглашения</h2> 
 
    <h3>Выступающие с докладом: </h3> 
    <table> 
        <thead> 
            <tr> 
                <th>Имя</th> 
                <th>E-mail</th> 
                <th>Телефон</th> 
                <th>Дата регистрации</th>
            </tr> 
        </thead> 
        <tbody> 
                
            <% var yesData = ITMO.Y2020.Gr124.ASP.NET.Lab08CF.ResponseRepository.GetRepository().GetAllResponses()
                .Where(r => r.WillAttend.Value);
                foreach (var rsvp in yesData) 
                {
                   string htmlString = String.Format("<tr><td>{0}</td><td>{1}</td><td>{2}</td><td>{3}</td>",
                   rsvp.Name, rsvp.Email, rsvp.Phone, rsvp.Rdata);
                   Response.Write(htmlString);
                }
               
             %> 
        
        </tbody> 
    </table> 
 
    </div> 

</asp:Content>
