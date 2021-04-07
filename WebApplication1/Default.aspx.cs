using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

namespace WebApplication1
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                string fileExtension = System.IO.Path.GetExtension(FileUpload1.FileName);

                if (fileExtension.ToLower() != ".jpg" && fileExtension.ToLower() != ".jpeg" )
                {
                    lblMessage.Text = "Only jpg or jpeg files allowed";
                    lblMessage.ForeColor = System.Drawing.Color.Red;
                }
                else
                {   
                    FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Uploads/") + FileUpload1.FileName);
                    lblMessage.Text = "File Uploaded";
                    lblMessage.ForeColor = System.Drawing.Color.Green;
                    DateTime date1 = DateTime.Now;
                    DataTable dt = new DataTable();
                    dt.Columns.Add("File", typeof(string));
                    dt.Columns.Add("Date", typeof(string));
                    dt.Columns.Add("Available", typeof(bool));

                    foreach (string strFile in Directory.GetFiles(Server.MapPath("~/Uploads/"))) 
                    {
                        FileInfo fi = new FileInfo(strFile);
                        dt.Rows.Add(fi.Name, date1, true);
                    };

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            else
            {
                lblMessage.Text = "Please select a file to upload!";
                lblMessage.ForeColor = System.Drawing.Color.Red;
              
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
                
        }
    }
}