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

    public partial class Baraat : System.Web.UI.Page
    {
        Int32 floorPlanId;
        string entrance;
        string stage;
        string sitting;
       
        SqlConnectionStringBuilder conStringBuilber;
        SqlConnection con;
        SqlCommand cmd;
        string insertElements = "INSERT INTO[dbo].[FloorPlans]([Stage],[Entrance],[Sitting] VALUES(@Stage,@Entrance,@Sitting);" +
                                           "Select CAST(IDENT_CURRENT('FloorPlans') as int);";
        string updateElements = "UPDATE[dbo].[ElementsInclude] SET[floorPlanId] = @floorPlanId WHERE [ElementsInclude].id = @ElementsIncludeId";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Session["newReservationId"].Equals(null))
            {
                //    newReservationId = 1;
                //ElementsIncludeId = (Int32)Session["newUserElementIncludeId"];
            }
            else
            {
                Response.Redirect("InformationForm.aspx");
            }
        }

        protected void Skip_Click(object sender, EventArgs e)
        {
            Response.Redirect("Next.aspx");
        }
        
          private int updateIncludeElement()
        {
            ConnectDB();
            try
            {
                cmd.CommandText = updateElements;
                cmd.Parameters.AddWithValue("@floorPlanId", floorPlanId);
                cmd.Parameters.AddWithValue("@ElementsIncludeId", ElementsIncludeId);
                cmd.CommandType = CommandType.Text;

                con.Open();
                
                return cmd.ExecuteNonQuery();
            }
            catch (Exception e)
            {
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
        private int sendDataToDataBase()
        {
            ConnectDB();
            try
            {
                cmd.CommandText = insertElements;
                cmd.Parameters.AddWithValue("@Stage", stage);
                cmd.Parameters.AddWithValue("@Entrance", entrance);
                cmd.Parameters.AddWithValue("@Sitting",sitting);
                cmd.CommandType = CommandType.Text;

                con.Open();

                
                floorPlanId = (Int32) cmd.ExecuteScalar();
                return floorPlanId;
            }
            catch (Exception e)
            {
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

        protected void Submit_Click1(object sender, EventArgs e)
        {

            if (E1.Checked)
                entrance = "Barrat : Full of Yellow Artifical Flowers with the through of lights from the bottom.Poles are decorated with red curtains";
            else
            if (E2.Checked)
                entrance = "Barrat :  Full of Real Flowers(gainda)";
            else
            if (E3.Checked)
                entrance = "Barrat :   Yellow and white net curtains with led lights";


            if (S1.Checked)
                stage = "Barrat : Yellow net curtains with bokay of beautiful flowers on them,and Jhula for groom and bride";
            else
            if (S2.Checked)
                stage = "Barrat :  Background decorated with rings of flowers,Sofa and two side Chairs";
            else
            if (S3.Checked)
                stage = "Barrat : Jhula with chairs each side and umbrealla stands along with chairs side and umbrealla stands along with chairs";


            if (ST1.Checked)
                sitting = "Barrat : Rectangle multi-color table with ecralic chairs(10 per table)";
            else
            if (ST2.Checked)
                sitting = "Barrat :  Rectangle tables decorated with rings of flowers,Sofa and Chairs";
            else
            if (ST3.Checked)
                sitting = "Barrat : Ecralic chairs with round multi-color tables";

            if (sendDataToDataBase() > 0)
            {
                if (updateIncludeElement() > 0)
                {
                    InfoLable.Text = "Successfully Submited..";
                    Response.Redirect("Next.aspx");

                }
              
            }
            Response.Redirect("Next.aspx");
        }
    }

}