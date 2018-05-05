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
    public partial class InformationForm : System.Web.UI.Page
    {
        string insertUser = "INSERT INTO [dbo].[User](Name,Address,Phone,Mobile,NIC,Email) VALUES(@Name,@Address,@Phone,@Mobile,@NIC,@Email);" +
                        "Select CAST(IDENT_CURRENT('User') as int);";


        string insertReservation = "INSERT INTO [dbo].[ReservationEvents]([EventName],[Time],[Date],[Lock],[EventType],[NoOfGuest],[UserId]) VALUES(@EventName,@Time,@Date,@Lock,@EventType, @NoOfGuest, @UserId);" +
                      "Select CAST(IDENT_CURRENT('ReservationEvents') as int);";

        DataSet DataSetReserved = new DataSet();
        DateTime eventDate;
        char eventTime;
        SqlConnection con;
        SqlCommand cmd;
        SqlConnectionStringBuilder conStringBuilber;
        Int32 newUserId = 0;
        Int32 newReservationId = 0;

        protected void Page_Load(object sender, EventArgs e)
        {

          /* For Testing
            dateLable.Text = DateTime.Now.ToString();
            //  eventDate = (DateTime) Session["SelectedDate"];
            eventDate = DateTime.Now.Date;
            eventTime = 'a';
            timeLable.Text = "12 to 5 PM";
            */
            if (Session["SelectedDate"] != null && Session["SelectedEventTime"] != null)
            {
                dateLable.Text = Session["SelectedDate"].ToString();
                //  eventDate = (DateTime) Session["SelectedDate"];
                eventDate = DateTime.Now;
                eventTime = 'a';
                timeLable.Text = "12 to 5 PM";

                if (Session["SelectedEventTime"].Equals('a'))
                {
                    timeLable.Text = "12 to 5 PM";
                    eventTime = 'a';
                }
                else
                {
                    timeLable.Text = "9 to 12 PM";
                    eventTime = 'n';
                }
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            if (
            !EventNameTextBox.Text.Equals("") &&
            !NoOfGuest.Text.Equals("") &&
            !EventTypeDropDown.Text.Equals("") &&
            !firstNameText.Text.Equals("") &&
            !lastNameText.Text.Equals("") &&
            !addressText.Text.Equals("") &&
            !CityText.Text.Equals("") &&
            !NICText.Text.Equals("") &&
            // !phoneNoText.Text.Equals("") &&
            !mobileNoText.Text.Equals("")
            //!EmailText.Text.Equals("")
            )
            {

                if (sendUserDataToDataBase() > 0)
                {
                    if (sendReservationToDataBase() > 0)
                    {
                        SubmitLabel.Visible = true;
                        SubmitLabel.Text = "Successfully Submited.."+"Your Reservation ID : " +newReservationId;
                        NextButton.Visible = true;
                        PreviousButton.Visible = false;
                        SubmitButton.Visible = false;
                    }
                }

            }
            else
            {
                InfoRequiredLable.Text = "All Information are Required (except phoneNo & Email)";
                InfoRequiredLable.ForeColor = System.Drawing.Color.Red;
                InfoRequiredLable.Font.Bold = true;
            }

        }

        protected void Previous_Click(object sender, EventArgs e)
        {
            Response.Redirect("Calander.aspx");
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
        private int sendUserDataToDataBase()
        {
            ConnectDB();
            try
            {

                cmd.CommandText = insertUser;
                cmd.Parameters.AddWithValue("@Name", firstNameText.Text + lastNameText.Text);
                cmd.Parameters.AddWithValue("@Address", addressText.Text + CityText.Text);
                cmd.Parameters.AddWithValue("@Phone", phoneNoText.Text);
                cmd.Parameters.AddWithValue("@Mobile", mobileNoText.Text);
                cmd.Parameters.AddWithValue("@NIC", NICText.Text);
                cmd.Parameters.AddWithValue("@Email", EmailText.Text);
                cmd.CommandType = CommandType.Text;

                con.Open();

                newUserId = (Int32)cmd.ExecuteScalar();
                return newUserId;
            }
            catch (Exception e)
            {
                InfoRequiredLable.Text = e.Message.ToString();
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

        private int sendReservationToDataBase()
        {
            try
            {
                cmd.CommandText = insertReservation;

                cmd.Parameters.AddWithValue("@EventName", EventNameTextBox.Text);
                cmd.Parameters.AddWithValue("@EventType", EventTypeDropDown.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@NoOfGuest", Convert.ToInt32(NoOfGuest.Text));
                cmd.Parameters.AddWithValue("@UserId", newUserId);
                cmd.Parameters.AddWithValue("@Lock", 0);
                cmd.Parameters.AddWithValue("@Time", eventTime);
                cmd.Parameters.AddWithValue("@Date", eventDate.Date.ToShortDateString());
                cmd.CommandType = CommandType.Text;

                con.Open();


                newReservationId = (Int32)cmd.ExecuteScalar();
                return newReservationId;
            }
            catch (Exception e)
            {
                InfoRequiredLable.Text = e.Message.ToString();
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

        protected void Next_Click(object sender, EventArgs e)
        {
            Session["newReservationId"] = newReservationId;
            Session["newUserId"] = newUserId;
            Response.Redirect("MenuPakages.aspx");
        }
    }
}

