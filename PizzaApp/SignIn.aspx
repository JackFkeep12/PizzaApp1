<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="PizzaApp.SignIn" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Manager Login"></asp:Label>
        </div>
        <p>
            &nbsp;</p>
        <p>
            Username
        </p>
        <p>
            &nbsp;</p>
        <asp:TextBox ID="UsernameTxt" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Password<br />
        <br />
        <br />
        <asp:TextBox ID="PasswordTxt" runat="server"></asp:TextBox>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="SignInBtn" runat="server" OnClick="SignInBtn_Click" Text="Sign In" />
        </p>
    </form>
</body>
</html>
