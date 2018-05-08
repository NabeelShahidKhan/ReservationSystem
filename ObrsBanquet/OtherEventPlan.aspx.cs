using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ObrsBanquet
{
    public partial class OtherEventPlan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Skip_Click(object sender, EventArgs e)
        {
            Response.Redirect("Next.aspx");
        }
    }
}