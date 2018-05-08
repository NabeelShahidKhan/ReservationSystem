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
    public partial class CustomizeMenu : System.Web.UI.Page
    {

        private string insertCustumMenu = "INSERT INTO [dbo].[menus](MenuName) VALUES ('CustumMenu');" +
                                            "Select CAST(IDENT_CURRENT('menus') as int)";
        private int newMenuID = 0;

        protected void Page_Load(object sender, EventArgs e)
        {
            //SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=BRsystemDb;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework");
            //SqlCommand cmd = new SqlCommand("select Count(m.Menuid) from menus m", con);
            //cmd.ExecuteNonQuery();
            //SqlDataAdapter allMenu = new SqlDataAdapter("select * from menus m where m.Menuid in(1,2,3,4)", con);
            //DataTable AllDT = new DataTable();
            //allmenu.Fill(amDT);

            //SqlDataAdapter adapter = new SqlDataAdapter("select m.Menuid,f.FoodID,f.Name from menus m,food f,incudedfood i where m.Menuid = i.MenuID and f.id = i.FoodID", con);
            //SqlDataAdapter adapter = new SqlDataAdapter("select * from food", con);

            //DataTable data = new DataTable();

            //adapter.Fill(data);
            //menu.DataSource = data;
            //menu.DataBind();

        }
        


        private int insertFood()
        { 
            int i = 0;
            if (newMenuID > 0)
            {
                foreach (ListItem food in customMenu.Items)
                    if (food.Selected)
                        i = SendFoodToDB(food);
                
                foreach (ListItem food in CheckBoxList2.Items)
                    if (food.Selected)
                        i = SendFoodToDB(food);

                foreach (ListItem food in CheckBoxList3.Items)
                    if (food.Selected)
                        i = SendFoodToDB(food);

                foreach (ListItem food in CheckBoxList4.Items)
                    if (food.Selected)
                        i = SendFoodToDB(food);

                foreach (ListItem food in CheckBoxList5.Items)
                    if (food.Selected)
                        i = SendFoodToDB(food);
            }
            if (i>0)
                    return 1;
             return 0;
        }

        private int SendFoodToDB(ListItem food)
        {
            int i;
            using (SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=BRsystemDb;Integrated Security=True"))
            {
                con.Open();
                SqlCommand cmd2 = new SqlCommand("INSERT INTO incudedfood (MenuID,FoodID) VALUES(" + newMenuID + "," + food.Value + ");", con);
                i = cmd2.ExecuteNonQuery();
            }

            return i;
        }

        protected void Skip_Click(object sender, EventArgs e)
        {
            Response.Redirect("FloorPlan.aspx");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
           if(itemIsSelected()) 
           { 
                using (SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=BRsystemDb;Integrated Security=True"))
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand(insertCustumMenu, con);
                        newMenuID = (Int32)cmd.ExecuteScalar();
                    }

                        insertFood();
                        GoNext.Enabled = true;
                        Skip.Visible = false;
                        Submit.Enabled = false;
                        InfoLable.Text = "Successfully Submited..";
              }
              else 
              {
                InfoLable.Text = "Select any Food Item..or Skip to Next Page";
                }

        }

        protected void GoNext_Click(object sender, EventArgs e)
        {
            Response.Redirect("FloorPlan.aspx");
        }


        private bool itemIsSelected() {
            
        foreach (ListItem food in customMenu.Items)
                if (food.Selected)
                    return true;

            foreach (ListItem food in CheckBoxList2.Items)
                if (food.Selected)
                    return true;

            foreach (ListItem food in CheckBoxList3.Items)
                if (food.Selected)
                    return true;

            foreach (ListItem food in CheckBoxList4.Items)
                if (food.Selected)
                    return true;

            foreach (ListItem food in CheckBoxList5.Items)
                if (food.Selected)
                    return true;

            return false;
        }
    }
}