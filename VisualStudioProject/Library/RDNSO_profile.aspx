<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RDNSO_profile.aspx.cs" Inherits="Library.CSRF_file" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 88px;
        }
        .auto-style3 {
            height: 304px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <table class="tableStandard">
        <tr>
            <td class="auto-style1">

                <table border="1" class="auto-style1">
                    <tr>
                        <td class="auto-style2">Nom:</td>
                        <td>
                            <asp:Label ID="LbName" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Prénom</td>
                        <td>
                            <asp:Label ID="LbPrenom" runat="server"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style2">Statut:</td>
                        <td>
                            <asp:Label ID="LbStatut" runat="server"></asp:Label>
                        </td>
                    </tr>
                </table>
                <br />
                <table class="auto-style1">
                    <tr>
                        <td class="auto-style3">
                            <asp:Image ID="Image" runat="server" Height="300px" Width="400px" />
                        </td>
                    </tr>
                </table>

            </td>
        </tr>
    </table>


</asp:Content>
