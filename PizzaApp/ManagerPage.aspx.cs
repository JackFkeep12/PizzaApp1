using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PizzaApp
{
    public partial class ManagerPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddOrderBtn_Click(object sender, EventArgs e)
        {
            PizzaDatabaseEntities db = new PizzaDatabaseEntities();
            var dbOrders = db.Orders;
            var newOrder = new Order();

            newOrder.Size = SizeTxt.Text.ToString();
            newOrder.Crust = CrustTxt.Text.ToString();
            newOrder.Topping1 = Topping1Txt.Text.ToString();
            newOrder.Topping2 = Topping2Txt.Text.ToString();
            dbOrders.Add(newOrder);

            GrdOrders.DataBind();
            db.SaveChanges();
        }

        protected void DeleteOrderBtn_Click(object sender, EventArgs e)
        {
            PizzaDatabaseEntities db = new PizzaDatabaseEntities();

            var order = db.Orders.Find(GrdOrders.SelectedValue);
            db.Entry(order).State = System.Data.Entity.EntityState.Deleted; 
            db.SaveChanges();
            GrdOrders.DataBind(); 
        }
    }
}