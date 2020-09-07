<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="ITMO.Y2020.Gr124.ASP.NET.Lab04.Summary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Участники семинара</title>
     <link rel="stylesheet" href="css/Styles.css" />
</head>
<body>
     <form id="form1" runat="server"> 
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
                
            <% var yesData = ITMO.Y2020.Gr124.ASP.NET.Lab04.ResponseRepository.GetRepository().GetAllResponses()
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
    <div>
         <br/>
        <br/>
         <a href="Reg.aspx">Вернуться на страницу регистрации</a>
        <br/>
        <br/>
            <a href="Start.aspx">Перейти на страницу Start</a>
    </div>
    </form> 
</body>
</html>
