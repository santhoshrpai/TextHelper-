<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>EZReader</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script>
    $(function () {
        $("#result").bind('mouseup', function (e) {
            var selection;

            if (window.getSelection) {
                selection = window.getSelection();
            } else if (document.selection) {
                selection = document.selection.createRange();
            }

            selection.toString() !== '' && alert('"' + selection.toString() + '" was selected at ' + e.pageX + '/' + e.pageY);
        });
    });
    </script>
</head>
<body style="font-family:Tahoma;text-align:center">
    <form id="form1" runat="server">
    <div>    
        <asp:FileUpload ID="FileUpload1" runat="server" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
    </div>
    <table align="center">
        <tr>
            <td>
     <!-- This div displays the content of the document -->
    <div id="result" runat="server" style="text-align:left;border-color:black;border-style:outset;border-width:thin;height:680px;width:680px;vertical-align:central;visibility:hidden">
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
