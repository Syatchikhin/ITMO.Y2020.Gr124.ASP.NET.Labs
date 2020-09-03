<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="ITMO.Y2020.Gr124.ASP.NET.Lab03.Reg" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <link rel="stylesheet" href="css/Styles.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div> 
                <h1>Приглашаем на семинар</h1> 
                <p></p>    
                </div> 
                <div> 
                    <label>Ваше имя:</label><asp:TextBox ID="name" 
                    runat="server"></asp:TextBox> 
                </div> 
                <div> 
                    <label>Ваш email:</label><asp:TextBox ID="email" 
                    runat="server"></asp:TextBox> 
                </div> 
                <div> 
                    <label>Ваш телефон:</label><asp:TextBox ID="phone" 
                    runat="server"></asp:TextBox> 
                </div> 
                <div> 
                    <label>Вы будете делать доклад?</label> 
                    <asp:CheckBox ID="CheckBoxYN" runat="server" /> 
                </div> 
            <div> 
                <button type="submit">Отправить ответ на приглашение RSVP</button> 
            </div> 
            <div>
                 <br/>
                    <a href ="Summary.aspx">Перейти на страницу Summary</a>
                
             </div>
        </div>
    </form>
</body>
</html>
