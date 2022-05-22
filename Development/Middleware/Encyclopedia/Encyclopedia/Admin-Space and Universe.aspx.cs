using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Encyclopedia
{
    public partial class Admin_Space_and_Universe : System.Web.UI.Page
    {
        static string connstring = "datasource = 127.0.0.1; port=3306;username=root;password=123456;database=encyclopedia;";
        MySqlConnection connection = new MySqlConnection(connstring);
        MySqlCommand command;
        MySqlDataReader mdr;

        protected void Page_Load(object sender, EventArgs e)
        {
            var CatID = 0;
            CatID = int.Parse(Request.QueryString["CATID"]);
            connection.Open();
            string selectQuery = "SELECT article.Name FROM article WHERE article.ContentID IN (SELECT content.ContentID FROM content,category WHERE content.CategoryID=category.CategoryID AND category.CategoryID=" + CatID + ");";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            mdr.Read();
            middletitle.Text = mdr[0].ToString();
            mdr.Read();
            lasttitle.Text = mdr[0].ToString();
            mdr.Read();
            firsttitle.Text = mdr[0].ToString();
            mdr.Close();
        }
        protected void Birds_Click(object sender, EventArgs e)
        {
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'Birds and Parrots' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());
            }
            mdr.Close();
            Response.Redirect("Admin-Birds and Parrots.aspx?CATID=" + CatID);

        }

        protected void History_Click(object sender, EventArgs e)
        {
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'History' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                int CatID = int.Parse(mdr[0].ToString());
                Response.Redirect("Admin-History.aspx?CATID=" + CatID);

            }
            mdr.Close();
        }



        protected void Animals_Click(object sender, EventArgs e)
        {
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'Animal and Plants' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());
            }
            mdr.Close();
            Response.Redirect("Admin-Plants and Animals.aspx?CATID=" + CatID);
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin-Home.aspx");

        }

        protected void DeleteContent_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin-Delete.aspx");
        }

        protected void DeleteUser_Click(object sender, EventArgs e)
        {
            Response.Redirect("Admin-DeleteUser.aspx");
        }

        protected void logoutBtn_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Looged out successfully");
            Response.Redirect("Unregisterd-Home.aspx");

        }

        protected void ReadMoreBTn(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var ArtName = "";
            System.Web.UI.WebControls.Label lbl;
            System.Web.UI.WebControls.Button btn = sender as System.Web.UI.WebControls.Button;
            switch (btn.ID.ToString())
            {
                case "Card1":
                    lbl = (System.Web.UI.WebControls.Label)form1.FindControl("firsttitle");
                    ArtName = lbl.Text;
                    Response.Redirect("View Content.aspx?ArtName=" + ArtName + "&USERID=" + UserID);
                    break;

                case "Card2":
                    lbl = (System.Web.UI.WebControls.Label)form1.FindControl("middletitle");
                    ArtName = lbl.Text;
                    Response.Redirect("View Content.aspx?ArtName=" + ArtName + "&USERID=" + UserID);
                    break;

                case "Card3":
                    lbl = (System.Web.UI.WebControls.Label)form1.FindControl("lasttitle");
                    ArtName = lbl.Text;
                    Response.Redirect("View Content.aspx?ArtName=" + ArtName);
                    break;

            }

        }
    }
}