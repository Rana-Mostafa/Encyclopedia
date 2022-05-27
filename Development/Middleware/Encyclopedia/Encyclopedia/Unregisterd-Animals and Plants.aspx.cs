using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Windows.Forms;

namespace Encyclopedia
{
    public partial class Unregisterd_Animals_and_Plants : System.Web.UI.Page
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
            firsttitle.Text = mdr[0].ToString();
            mdr.Read();
            middletitle.Text = mdr[0].ToString();
            mdr.Read();
            lasttitle.Text = mdr[0].ToString();
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
            Response.Redirect("Unregisterd-Birds and Parrots.aspx?CATID=" + CatID);

        }

        protected void History_Click(object sender, EventArgs e)
        {
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'History' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                int CatID = int.Parse(mdr[0].ToString());
                Response.Redirect("Unregisterd-History.aspx?CATID=" + CatID);

            }
            mdr.Close();
        }

        protected void Space_Click(object sender, EventArgs e)
        {
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'Space and Universe' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());
            }
            mdr.Close();
            Response.Redirect("Unregisterd-Space and Universe.aspx?CATID=" + CatID);
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
            Response.Redirect("Unregisterd-Animals and Plants.aspx?CATID=" + CatID);
        }

        protected void Home_Click(object sender, EventArgs e)
        {
            Response.Redirect("Unregisterd-Home.aspx");

        }

        protected void login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");

        }

        protected void signup_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");

        }

        protected void ReadMoreBTn(object sender, EventArgs e)
        {
            var ArtName = "";
            System.Web.UI.WebControls.Label lbl;
            System.Web.UI.WebControls.Button btn = sender as System.Web.UI.WebControls.Button;
            switch (btn.ID.ToString())
            {
                case "Card1":
                    lbl = (System.Web.UI.WebControls.Label)form1.FindControl("firsttitle");
                    ArtName = lbl.Text;
                    Response.Redirect("Unregistered-View Content.aspx?ArtName=" + ArtName);
                    break;

                case "Card2":
                    lbl = (System.Web.UI.WebControls.Label)form1.FindControl("middletitle");
                    ArtName = lbl.Text;
                    Response.Redirect("Unregistered-View Content.aspx?ArtName=" + ArtName);
                    break;

                case "Card3":
                    lbl = (System.Web.UI.WebControls.Label)form1.FindControl("lasttitle");
                    ArtName = lbl.Text;
                    Response.Redirect("Unregistered-View Content.aspx?ArtName=" + ArtName);
                    break;

            }

        }
    }
}