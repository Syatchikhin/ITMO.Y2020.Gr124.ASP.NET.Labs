<%@ Page MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Start.aspx.cs" Inherits="ITMO.Y2020.Gr124.ASP.NET.Lab08CF.Start" %>

<asp:Content ID="MainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server"> 
    <div> 
        <div class="rek"> 
            <h1>Приглашение на семинар
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
            </h1>
            <p class="debugtext">(from start.aspx lab08)</p>
            <h3 >Уважаемый преподаватель !!!</h3>
            <p>Вы приглашены на наш семинар по ASP.NET</p> 
            <p>Подтвердите свое согласие, пройдя регистрацию</p> 
        </div> 
        <div class="info"> 
            Семинар состоится 1 сентября 2020 года в 18.30 
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <%  DateTime dataseminar = new DateTime(2021,1,1,7,30,0); 
                         DateTime dnow = DateTime.Now; 
                         int rd = (dataseminar - dnow).Days; 
                         int rm = (dataseminar - dnow).Minutes; 
                         int rsec = (dataseminar - dnow).Seconds;
                        %>
                     <h3>До  семинара  осталось  
                         <%=rd.ToString()%>  дн.,  
                         <%=rm.ToString()%>  мин. и 
                         <%=rsec.ToString()%> с.
                     </h3>
                    <asp:Timer ID="Timer1" Interval="1000" runat="server">
                    </asp:Timer>
                </ContentTemplate>
                
            </asp:UpdatePanel>
        </div> 
    </div> 
</asp:Content>

     

