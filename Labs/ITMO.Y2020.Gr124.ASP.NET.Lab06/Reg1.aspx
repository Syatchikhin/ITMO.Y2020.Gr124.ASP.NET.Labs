<%@ Page Title="" UnobtrusiveValidationMode="None" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Reg1.aspx.cs" Inherits="ITMO.Y2020.Gr124.ASP.NET.Lab06.Reg1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div> 
                <h1>Приглашаем на семинар</h1> 
                <p></p>    
                </div> 
                <div> 
                    <label>Ваше имя:</label><asp:TextBox ID="name" runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="name"
                        ErrorMessage="Заполните  поле  имени" 
                        ForeColor="#CC0000">
                        Не оставляйте поле пустым
                    </asp:RequiredFieldValidator>
                </div> 
                <div> 
                    <label>Ваш email:</label><asp:TextBox ID="email" 
                    runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="email"
                        ErrorMessage="Заполните  поле  ввода e-mail" 
                        ForeColor="#CC0000">
                        Не оставляйте поле пустым
                    </asp:RequiredFieldValidator>
                     <asp:RegularExpressionValidator ID="mailerror" runat="server" ControlToValidate="email" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"  
                        ErrorMessage="E-mail имеет неверный формат"  Display="Dynamic" 
                        >
                         Адрес введен неверно!!!
                     </asp:RegularExpressionValidator>
                </div> 
                <div> 
                    <label>Ваш телефон:</label><asp:TextBox ID="phone" 
                    runat="server"></asp:TextBox> 
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                        ControlToValidate="phone"
                        ErrorMessage="Заполните  поле  ввода телефона" 
                        ForeColor="#CC0000">
                        Не оставляйте поле пустым
                    </asp:RequiredFieldValidator>
                    <asp:ValidationSummary ID="validationSummary" runat="server" 
                    ShowModelStateErrors="true" />
                </div> 
                <div> 
                    <label>Вы будете делать доклад?</label> 
                    <asp:CheckBox ID="CheckBoxYN" runat="server" /> 
                </div> 
            <div> 
                <button type="submit">Отправить ответ на приглашение RSVP</button> 
            </div> 


</asp:Content>
