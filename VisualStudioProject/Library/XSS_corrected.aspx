<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="XSS_corrected.aspx.cs" Inherits="Library.XSS_corrected" ValidateRequest ="false"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <table class="tableStandard">
        <tr>
            <td class="auto-style1">

                <h2>Faille XSS corrigée :</h2>
                <p  style="margin-left: 10px; width: 800px; margin-top: 10px; height: 100px;">
                    Essayez pour voir!
                </p>
                <br />
                <br />
                <br />&emsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> <asp:Button ID="Button1" runat="server" Text="Envoyer" />
                <br />
                &emsp;
                <%:result%>

            </td>
        </tr>
    </table>
</asp:Content>
