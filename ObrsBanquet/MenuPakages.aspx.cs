using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ObrsBanquet
{
    public partial class MenuPakages : System.Web.UI.Page
    {
        private int MenuID;
        private string insertMenu = "INSERT INTO[dbo].[ElementsInclude]([reservationId],[menuId]) VALUES(@ReservationId,@menuID);"+
                                     "Select CAST(IDENT_CURRENT('ElementsInclude') as int);";

        SqlConnection con;
        SqlCommand cmd;
        SqlConnectionStringBuilder conStringBuilber;
        Int32 newReservationId;
        private int newUserElementIncludeId;

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void menuButton_Click(object sender, EventArgs e)
        {
            Button button = (Button)sender;
            string buttonId = button.ID;

            if (buttonId == "menuOne")
            {
                MenuID = 1;
                InfoLable.Text = "You Select Menu NO: 1. Click Next to Continue..";
            }
            else if (buttonId == "menuTwo")
            {
                MenuID = 2;
                InfoLable.Text = "You Select Menu NO: 2. Click Next to Continue..";
            }
            else if (buttonId == "menuThree")
            {
                MenuID = 3;
                InfoLable.Text = "You Select Menu NO: 3. Click Next to Continue..";
            }
            else if (buttonId == "menuFour")
            {
                MenuID = 4;
                InfoLable.Text = "You Select Menu NO: 4. Click Next to Continue..";
            }
            else if (buttonId == "menuFive")
            {
                MenuID = 5;
                InfoLable.Text = "You Select Menu NO: 5. Click Next to Continue..";
            }
            else if (buttonId == "menuSix")
            {
                MenuID = 6;
                InfoLable.Text = "You Select Menu NO: 6. Click Next to Continue..";
            }

            GoNext.Visible = true;  
          }

        protected void Skip_Click(object sender, EventArgs e)
        {
            Response.Redirect("FloorPlan.aspx");
        }

        protected void GoNext_Click(object sender, EventArgs e)
        {

           if(sendMenuToDataBase() > 0) {
                Session["newUserElementIncludeId"] = newUserElementIncludeId;
           }
            Response.Redirect("FloorPlan.aspx");
        }




        void ConnectDB()
        {

            conStringBuilber = new SqlConnectionStringBuilder();

            conStringBuilber.DataSource = "NABEELKHAN-PC";
            conStringBuilber.InitialCatalog = "BRsystemDb";
            conStringBuilber.Encrypt = true;
            conStringBuilber.TrustServerCertificate = true;
            conStringBuilber.ConnectTimeout = 30;
            conStringBuilber.AsynchronousProcessing = true;
            conStringBuilber.MultipleActiveResultSets = true;
            conStringBuilber.IntegratedSecurity = true;

            con = new SqlConnection(conStringBuilber.ToString());
            cmd = con.CreateCommand();


        }
        private int sendMenuToDataBase()
        { 
            ConnectDB();
            try
            {

                cmd.CommandText = insertMenu;
                cmd.Parameters.AddWithValue("@ReservationId", newReservationId);
                cmd.Parameters.AddWithValue("@menuID", MenuID);
                cmd.CommandType = CommandType.Text;

                con.Open();

                newUserElementIncludeId = (Int32)cmd.ExecuteScalar();
                Session["newUserElementIncludeId"]  = newUserElementIncludeId;
               
                return newUserElementIncludeId;
            }
            catch (Exception e)
            {
                InfoLable.Text = e.Message.ToString();
                return 0;
            }
            finally
            {
                if (con != null)
                {
                    con.Close();
                }
            }

        }

        protected void CustomiseMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("CustomizeMenu.aspx");
        }
    }

}
