<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="ITMO.Y2020.Gr124.ASP.NET.Lab08NEW.Reg" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1>Приглашаем на семинар</h1>
        <p></p>
    </div>
    
        <div>
            <label>Ваше имя:</label><asp:TextBox ID="name" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                ControlToValidate="name"
                ErrorMessage="Заполните поле имени"
                ForeColor="#CC0000">Не оставляйте поле пустым</asp:RequiredFieldValidator>
        </div>
    <div>
        <label>Ваш email:</label><asp:TextBox ID="email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
            ControlToValidate="email" 
            ErrorMessage="Заполните поле адреса" 
            ForeColor="Red">Не оставляйте поле пустым
          </asp:RequiredFieldValidator>
                       <asp:RegularExpressionValidator ID="mailerror" runat="server" ControlToValidate="email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  
                        ErrorMessage="E-mail имеет неверный формат"  Display="Dynamic" 
                        >
                         Адрес введен неверно!!!
                     </asp:RegularExpressionValidator>
    </div>

    <div>
        <label>Ваш телефон:</label><asp:TextBox ID="phone" runat="server"></asp:TextBox> 
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
            ControlToValidate="phone" 
            ErrorMessage="Заполните поле ввода телефона" 
            ForeColor="Red">Не оставляйте поле пустым</asp:RequiredFieldValidator>
    </div>
    <div id="doklad">
        <label>Вы будете делать доклад?</label>
        <asp:CheckBox ID="CheckBoxYN" runat="server" />

        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

    </div>
    <div ID="report"> 
        <div><label> Введите название доклада:</label><asp:TextBox ID="TextBoxTitle" runat="server" Width="350px"></asp:TextBox> </div>
        <div><label> Введите аннотацию доклада:</label><asp:TextBox ID="TextBoxTextAnnot" runat="server" Width="350px"></asp:TextBox> </div>
        <div><label> Введите название доклада:</label><asp:TextBox ID="TextBoxTitle2" runat="server" Width="350px"></asp:TextBox> </div>
        <div><label> Введите аннотацию доклада:</label><asp:TextBox ID="TextBoxTextAnnot2" runat="server" Width="350px"></asp:TextBox> </div>
    </div>
    <div id="button_submit">
        <button type="submit">Отправить ответ на приглашение RSVP</button>
    </div>
</asp:Content>