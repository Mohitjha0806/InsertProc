using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

     
        protected void ddl_Country_SelectedIndexChanged(object sender, EventArgs e)
        {
            ddl_State.Items.Clear();

            if (ddl_Country.SelectedIndex == 0)
            {
                ddl_State.Items.Clear();
            }
            else if (ddl_Country.SelectedIndex == 1)
            {
                ddl_City.Items.Clear();
                ddl_State.Items.Insert(0, new ListItem("Select", "Select"));
                ddl_State.Items.Insert(1, new ListItem("Madhya Pradesh", "Madhya Pradesh"));
                ddl_State.Items.Insert(2, new ListItem("Uttar Pradesh", "Uttar Pradesh"));

            }

        }

        protected void ddl_State_TextChanged(object sender, EventArgs e)
        {
            ddl_City.Items.Clear();

            if (ddl_State.SelectedValue == "Select")
            {
                ddl_City.Items.Clear();
            }
            else if (ddl_State.SelectedValue == "Madhya Pradesh")
            {
                ddl_City.Items.Insert(0, new ListItem("Select", "Select"));
                ddl_City.Items.Insert(1, new ListItem("Bhopal", "Bhopal"));
                ddl_City.Items.Insert(2, new ListItem("Indore", "Indore"));
                ddl_City.Items.Insert(3, new ListItem("Gwalour", "Gwalour"));
                ddl_City.Items.Insert(4, new ListItem("Jabalpur", "Jabalpur"));
                ddl_City.Items.Insert(5, new ListItem("Ujjain", "Ujjain"));
            }
            else if (ddl_State.SelectedValue == "Uttar Pradesh")
            {
                ddl_City.Items.Insert(0, new ListItem("Select", "Select"));
                ddl_City.Items.Insert(1, new ListItem("Lakhnow", "Lakhnow"));
                ddl_City.Items.Insert(2, new ListItem("Kanpur", "Kanpur"));
                ddl_City.Items.Insert(3, new ListItem("Jhasi", "Jhasi"));
                ddl_City.Items.Insert(4, new ListItem("Kashi", "Kashi"));
                ddl_City.Items.Insert(5, new ListItem("Ayodhya", "Ayodhya"));
            }
        }

        protected void btn_Submit_Click(object sender, EventArgs e)
        {
            {
               

                string connectionString = ConfigurationManager.ConnectionStrings["insertProc"].ConnectionString;

                using (SqlConnection conn = new SqlConnection(connectionString))
                {
                    //conn.Open();
                    using (SqlCommand cmd = new SqlCommand("insertAll", conn))
                    {
                        DataSet ds = new DataSet();
                        

                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@FIRST_NAME", txt_FirstName.Text);
                        cmd.Parameters.AddWithValue("@LAST_NAME", txt_LastName.Text);
                        cmd.Parameters.AddWithValue("@EMAIL", txt_Email.Text);
                        cmd.Parameters.AddWithValue("@MOBILE_NUMBER", txt_Mobile.Text);
                        cmd.Parameters.AddWithValue("@USER_NAME", txt_UserNmae.Text);
                        cmd.Parameters.AddWithValue("@PASSWORD", txt_Pass.Text);
                        cmd.Parameters.AddWithValue("@DATE_OF_BIRTH", txt_DOB.Text);
                        cmd.Parameters.AddWithValue("@TIME", txt_Time.Text);
                        cmd.Parameters.AddWithValue("@AGE", txt_Age.Text);
                        cmd.Parameters.AddWithValue("@GENDER", rbl_Gender.SelectedValue);
                        cmd.Parameters.AddWithValue("@EDUCATION", cbl_Education.SelectedValue);
                        cmd.Parameters.AddWithValue("@COUNTRY", ddl_Country.SelectedValue);
                        cmd.Parameters.AddWithValue("@STATE", ddl_State.SelectedValue);
                        cmd.Parameters.AddWithValue("@CITY", ddl_City.SelectedValue);
                        cmd.Parameters.AddWithValue("@ADDRESS", txt_Address.Text);

                        SqlDataAdapter sda = new SqlDataAdapter(cmd);
                        sda.Fill(ds);

                        //conn.Close();
                    }
                }
            }
        }

        protected void gb_UserDetail_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }
    }
}
