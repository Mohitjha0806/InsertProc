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
        else if(ddl_State.SelectedValue == "Madhya Pradesh")
        {
            ddl_City.Items.Insert(0, new ListItem("Select", "Select"));
            ddl_City.Items.Insert(1, new ListItem("Bhopal", "Bhopal"));
            ddl_City.Items.Insert(2, new ListItem("Indore", "Indore"));
            ddl_City.Items.Insert(3, new ListItem("Gwalour", "Gwalour"));
            ddl_City.Items.Insert(4, new ListItem("Jabalpur", "Jabalpur"));
            ddl_City.Items.Insert(5, new ListItem("Ujjain", "Ujjain"));
        }
        else if( ddl_State.SelectedValue == "Uttar Pradesh")
        {
            ddl_City.Items.Insert(0, new ListItem("Select", "Select"));
            ddl_City.Items.Insert(1, new ListItem("Lakhnow", "Lakhnow"));
            ddl_City.Items.Insert(2, new ListItem("Kanpur", "Kanpur"));
            ddl_City.Items.Insert(3, new ListItem("Jhasi", "Jhasi"));
            ddl_City.Items.Insert(4, new ListItem("Kashi", "Kashi"));
            ddl_City.Items.Insert(5, new ListItem("Ayodhya", "Ayodhya"));
        }
    }
}
