<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="PizzaApp.OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Customise Your Order"></asp:Label>
            <br />
            <br />
            Size<br />
            <br />
            Small(+£5.00)&nbsp;&nbsp; Medium(+£8.00)&nbsp;&nbsp;&nbsp; Large(+£10.00)<br />
            <br />
        </div>
        <asp:TextBox ID="SizeTxt" runat="server" OnTextChanged="SizeTxt_TextChanged"></asp:TextBox>
        <br />
        <br />
        <br />
        Crust<br />
        <br />
        Deep Pan(+£2.00)&nbsp;&nbsp; Thin Crust(+£0.00)
        <br />
        <br />
        <asp:TextBox ID="CrustTxt" runat="server"></asp:TextBox>
        <br />
        <br />
        <br />
        Toppings<br />
        <br />
        Pepperoni(+£1.25)&nbsp;&nbsp;&nbsp;&nbsp; Ham(+£1.00)<br />
        <br />
        Pineapple(+£0.75)&nbsp;&nbsp;&nbsp;&nbsp; Green Peppers(+£0.50)
        <br />
        <br />
        Mushrooms(+£0.50)&nbsp;&nbsp;&nbsp; Anchovies(+£0.75)
        <br />
        <br />
        <asp:TextBox ID="Topping1Txt" runat="server" OnTextChanged="Topping1Txt_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="Topping2Txt" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="OrderBtn" runat="server" OnClick="OrderBtn_Click" Text="Order" />
        <br />
        <br />
        <br />
        <asp:GridView ID="GrdOrders" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderId" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="OrderId" HeaderText="OrderId" InsertVisible="False" ReadOnly="True" SortExpression="OrderId" />
                <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                <asp:BoundField DataField="Crust" HeaderText="Crust" SortExpression="Crust" />
                <asp:BoundField DataField="Topping1" HeaderText="Topping1" SortExpression="Topping1" />
                <asp:BoundField DataField="Topping2" HeaderText="Topping2" SortExpression="Topping2" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Orders]"></asp:SqlDataSource>
        <br />
        <br />
    </form>
</body>
</html>
