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
    public partial class Animals_and_Plants : System.Web.UI.Page
    {

        MySqlConnection connection = new MySqlConnection("datasource=10.145.0.233;port=3306;username=user;password=123456");
        MySqlCommand command;
        MySqlDataReader mdr;

        protected void Page_Load(object sender, EventArgs e)
        {
            var CatID = 0;
            CatID = int.Parse(Request.QueryString["CATID"]);
            MessageBox.Show(CatID.ToString());
            connection.Open();
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            MessageBox.Show(UserID.ToString());

        }

        protected void Birds_Click(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'Birds and Parrots' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());
            }
            mdr.Close();
            Response.Redirect("Birds and Parrots.aspx?CATID=" + CatID + "&USERID=" + UserID);

        }

        protected void History_Click(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            MessageBox.Show(UserID.ToString());
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'History' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                int CatID = int.Parse(mdr[0].ToString());
                Response.Redirect("History.aspx?CATID=" + CatID + "&USERID=" + UserID);

            }
            mdr.Close();
        }

        protected void Space_Click(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            MessageBox.Show(UserID.ToString());
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'Space and Universe' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());
            }
            mdr.Close();
            Response.Redirect("Space and Universe.aspx?CATID=" + CatID + "&USERID=" + UserID);
        }

        protected void Animals_Click(object sender, EventArgs e)
        {
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            MessageBox.Show(UserID.ToString());
            var CatID = 0;
            string selectQuery = "SELECT CategoryID FROM encyclopedia.category WHERE type = 'Animal and Plants' ;";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            while (mdr.Read())
            {
                CatID = int.Parse(mdr[0].ToString());
            }
            mdr.Close();
            Response.Redirect("Animals and Plants.aspx?CATID=" + CatID + "&USERID=" + UserID);
        }

		protected void Home_Click(object sender, EventArgs e)
		{
            var UserID = 0;
            UserID = int.Parse(Request.QueryString["USERID"]);
            MessageBox.Show(UserID.ToString());
            Response.Redirect("Home Page.aspx?USERID=" + UserID );

        }
    }
}