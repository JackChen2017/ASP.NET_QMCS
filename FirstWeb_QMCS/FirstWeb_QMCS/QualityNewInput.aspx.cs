using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWeb_QMCS
{
    public partial class QualityNewInput : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                // Specify the data source and field names for the Text 
                // and Value properties of the items (ListItem objects) 
                // in the DropDownList control.
                ListBox_Cause_classification.DataSource = CreateDataSource();
                ListBox_Cause_classification.DataTextField = "ColorTextField";
                ListBox_Cause_classification.DataValueField = "ColorValueField";

                // Bind the data to the control.
                ListBox_Cause_classification.DataBind();

                // Set the default selected item, if desired.
                ListBox_Cause_classification.SelectedIndex = 0;

            }

            Text_Starting_time.Text = DateTime.Now.ToLocalTime().ToString();
        }

        ICollection CreateDataSource()
        {

            // Create a table to store data for the DropDownList control.
            DataTable dt = new DataTable();

            // Define the columns of the table.
            dt.Columns.Add(new DataColumn("ColorTextField", typeof(String)));
            dt.Columns.Add(new DataColumn("ColorValueField", typeof(String)));

            // Populate the table with sample values.
            dt.Rows.Add(CreateRow("", "", dt));
            dt.Rows.Add(CreateRow("设计", "设计", dt));
            dt.Rows.Add(CreateRow("外协", "外协", dt));
            dt.Rows.Add(CreateRow("工艺", "工艺", dt));
            dt.Rows.Add(CreateRow("设备", "设备", dt));
            dt.Rows.Add(CreateRow("制造", "制造", dt));
            dt.Rows.Add(CreateRow("检测", "检测", dt));

            // Create a DataView from the DataTable to act as the data source
            // for the DropDownList control.
            DataView dv = new DataView(dt);
            return dv;

        }

        DataRow CreateRow(String Text, String Value, DataTable dt)
        {

            // Create a DataRow using the DataTable defined in the 
            // CreateDataSource method.
            DataRow dr = dt.NewRow();

            // This DataRow contains the ColorTextField and ColorValueField 
            // fields, as defined in the CreateDataSource method. Set the 
            // fields with the appropriate value. Remember that column 0 
            // is defined as ColorTextField, and column 1 is defined as 
            // ColorValueField.
            dr[0] = Text;
            dr[1] = Value;

            return dr;

        }

       


    }
}