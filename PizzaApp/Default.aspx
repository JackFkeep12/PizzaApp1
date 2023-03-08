<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PizzaApp.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Aramark's Pizza"></asp:Label>
        <p style="margin-left: 840px">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Staff Login" />
        </p>
        <p>
            Our Pizza&#39;s</p>
        <p>
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/index1.jpg" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image2" runat="server" ImageUrl="~/Images/index.jpg" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Margherita.jfif" />
&nbsp;&nbsp;&nbsp;
            <asp:Image ID="Image4" runat="server" ImageUrl="~/Images/Pepperoni.jfif" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="OrderNowBtn" runat="server" OnClick="OrderNowBtn_Click" Text="Order Now!" />
        </p>
    </form>
</body>
</html>
