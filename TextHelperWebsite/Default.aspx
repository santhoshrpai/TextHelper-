<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EZReader</title>
</head>
<body style="font-family:Tahoma;text-align:center">
    <form id="form1" runat="server">
    <table align="center">
        <tr>
            <td>
     <!-- This div displays the content of the document -->
    <div id="result" runat="server" style="text-align:center;border-color:black;border-style:outset;border-width:thin;height:680px;vertical-align:central">
    </div> <br />
    <asp:Panel runat="server" ID="pnlShowPage" Visible="false" HorizontalAlign="Center">
    <asp:Button ID="btnFirst" runat="server" Text="<<- First" OnClick="btnFirst_Click" /> &nbsp;
    <asp:Button ID="btnPrev" runat="server" Text="<- Prev" OnClick="btnPrev_Click" /> &nbsp;
    <asp:Label ID="lblShow" runat="server" Text="Showing page "></asp:Label>
    <asp:Label ID="lblCurrentPage" runat="server" Text=""></asp:Label>
    <asp:Label ID="lblOf" runat="server" Text=" of "></asp:Label>
    <asp:Label ID="lblTotalPages" runat="server" Text=""></asp:Label> &nbsp;
    <asp:Button ID="btnNext" runat="server" Text="Next ->" OnClick="btnNext_Click" /> &nbsp;
    <asp:Button ID="btnLast" runat="server" Text="Last -->" OnClick="btnLast_Click" />
    </asp:Panel>
    
    </td>
    </tr>
    </table>
        </form>
</body>
</html>
