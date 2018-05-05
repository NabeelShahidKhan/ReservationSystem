using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace ObrsBanquet
{
    public partial class Calander : System.Web.UI.Page
    {

        DataSet DataSetReserved = new DataSet();
        char eventTime;

        protected void Page_Load(object sender, EventArgs e)

        {
            // if (!IsPostBack)
            // {
            //   selectedDate = EventCalander.TodaysDate;
            chackTime();
            //}

            getDatesfromDB();

            //DataSetReserved.Clear();

            //    LabelSelectedDate.Text = EventCalander.TodaysDate.ToShortDateString();
            //   }else {
            //     selectedDate = EventCalander.SelectedDate;
            //      getDatesfromDB();

            // }

        }

        /*
        private void chackSelectedDate()
        {
            var date = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.SelectedDayStyle.BackColor = System.Drawing.Color.Aqua;
            LabelSelectedDate.Text = date;
            if (Calendar1.SelectedDate.Day.Equals(3))
            {
                LabelSelectedDate.Text = "Alrady Reserved";
            }
        }
        */
        private void getDatesfromDB()
        {
            using (SqlConnection con = new SqlConnection("Data Source =.; Initial Catalog = BRsystemDb; Integrated Security = True"))
            {
                con.Open();
                SqlDataAdapter adapter = new SqlDataAdapter("Select Date,Lock From ReservationEvents where Time='" + eventTime + "'", con);
                adapter.Fill(DataSetReserved);
            }

        }

        //calande.SelectedDate.Day;
        //calande.SelectedDate.DayOfWeek;
        //calande.SelectedDate.Month;
        //calande.SelectedDate.Year;

        //protected void Calendar_SelectionChanged(object sender, EventArgs e)
        //{
        //    selectedDate = EventCalander.SelectedDate;
        //    LabelSelectedDate.Text = selectedDate.Date.ToString();
        //}

        protected void UpdateCalander(object sender, DayRenderEventArgs e)
        {
            DateTime nextDate;
            if (DataSetReserved != null)
            {
                foreach (DataRow dr in DataSetReserved.Tables[0].Rows)
                {

                    nextDate = (DateTime)dr["Date"];

                    if ((Boolean)dr["Lock"])
                    {
                        if (nextDate == e.Day.Date && !e.Day.IsOtherMonth)
                        {
                            e.Day.IsSelectable = false;
                            e.Cell.Text = "Reserved";
                            e.Cell.Font.Bold = true;
                            e.Cell.ForeColor = System.Drawing.Color.White;
                            e.Cell.BackColor = System.Drawing.Color.DarkGray;
                        }
                    }
                }
            }
            // else {
            //       eventTime = 'n';
            //     getDatesfromDB();
            // }

            if (e.Day.IsOtherMonth)
            {
                e.Cell.Text = string.Empty;
                e.Day.IsSelectable = false;
                e.Cell.BorderStyle = BorderStyle.None;
                // e.Cell.Text = "";
            }

        }

        protected void SelectDateButton(object sender, EventArgs e)
        {
            if (EventCalander.SelectedDate.ToShortDateString() != null)
            {
                Session["SelectedDate"] = EventCalander.SelectedDate.ToShortDateString();
                Session["SelectedEventTime"] = eventTime;



                //        int x = sendToDataBase();
                //      if (x == 1)
                InfoLabel.Text = "You Select : " + EventCalander.SelectedDate.ToShortDateString() + " " + eventTimeDropdown.SelectedValue.ToString();

                StartReservationButton.Enabled = false;

                NextButton.Enabled = true;
            }
            else
            {
                InfoLabel.Text = "Select Avilable Dates";
                InfoLabel.CssClass = "text-danger";
            }

        }


        protected void EventTiming(object sender, EventArgs e)
        {
            chackTime();
        }

        void chackTime()
        {
            if (eventTimeDropdown.SelectedIndex == 0)
            {
                eventTime = 'a';
            }
            else if (eventTimeDropdown.SelectedIndex == 1)
            {
                eventTime = 'n';
            }
        }

        protected void GoNext(object sender, EventArgs e)
        {
            Response.Redirect("InformationForm.aspx");
        }
    }
}