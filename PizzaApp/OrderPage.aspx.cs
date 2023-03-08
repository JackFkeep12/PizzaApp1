using Microsoft.Ajax.Utilities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Schema;

namespace PizzaApp
{
    public partial class OrderPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OrderBtn_Click(object sender, EventArgs e)
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

        float total = 0;

        protected void Topping1Txt_TextChanged(object sender, EventArgs e)
        {
           
        }
        
        protected void SizeTxt_TextChanged(object sender, EventArgs e)
        {
          
        }
       
    }
}