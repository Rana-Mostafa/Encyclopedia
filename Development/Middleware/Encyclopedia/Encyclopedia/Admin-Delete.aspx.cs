using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Encyclopedia
{
    public partial class Admin_Delete : System.Web.UI.Page
    {
        static string connstring = "datasource = 127.0.0.1; port=3306;username=root;password=123456;database=encyclopedia;";
        MySqlConnection connection = new MySqlConnection(connstring);
        MySqlCommand command;
        MySqlDataReader mdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();

        }

        protected void FollowBtn_Click(object sender, EventArgs e)
        {

            string CID = contentID.Text;
            string CContent = contentName.Text;

            if (CID == "" || CContent == "")
                MessageBox.Show("please fill all required fields");

            else
            {
                int SelectedItem = DropDownList1.SelectedIndex;
                if (SelectedItem == 0)
                {
                    string selectQuery2 = "DELETE FROM encyclopedia.video WHERE ContentID = '" + contentID.Text + "' AND VideoName = '" + contentName.Text + "';";
                    command = new MySqlCommand(selectQuery2, connection);
                    mdr = command.ExecuteReader();
                    if (mdr.RecordsAffected == 1)
                    {
                        mdr.Close();
                        string selectQuery = "DELETE FROM encyclopedia.content WHERE ContentID = '" + contentID.Text + "' AND name = '" + contentName.Text + "';";
                        command = new MySqlCommand(selectQuery, connection);
                        mdr = command.ExecuteReader();
                        if (mdr.Read())
                            MessageBox.Show("Video Deleted Successful!");
                        mdr.Close();
                    }

                    else
                    {
                        MessageBox.Show("You enterd a wrong ID/Name.. Please Check AGAIN!");
                    }


                }
                if (SelectedItem == 1)
                {
                    string selectQuery2 = "DELETE FROM encyclopedia.voice_rec  WHERE ContentID = '" + contentID.Text + "' AND VoiceRecName = '" + contentName.Text + "';";
                    command = new MySqlCommand(selectQuery2, connection);
                    mdr = command.ExecuteReader();
                    if (mdr.RecordsAffected == 1)
                    {
                        mdr.Close();
                        string selectQuery = "DELETE FROM encyclopedia.content WHERE ContentID = '" + contentID.Text + "' AND name = '" + contentName.Text + "';";
                        command = new MySqlCommand(selectQuery, connection);
                        mdr = command.ExecuteReader();
                        if (mdr.RecordsAffected == 1)
                            MessageBox.Show("Voice Record Deleted Successful!");
                        mdr.Close();
                    }

                    else
                    {
                        MessageBox.Show("You enterd a wrong ID/Name.. Please Check AGAIN!");
                    }

                }
                if (SelectedItem == 2)
                {
                    string selectQuery2 = "DELETE FROM encyclopedia.article WHERE ContentID = '" + contentID.Text + "' AND Name = '" + contentName.Text + "';";
                    command = new MySqlCommand(selectQuery2, connection);
                    mdr = command.ExecuteReader();
                    if (mdr.RecordsAffected == 1)
                    {
                        mdr.Close();
                        string selectQuery = "DELETE FROM encyclopedia.content WHERE ContentID = '" + contentID.Text + "' AND name = '" + contentName.Text + "';";
                        command = new MySqlCommand(selectQuery, connection);
                        mdr = command.ExecuteReader();
                        if (mdr.RecordsAffected == 1)
                            MessageBox.Show("Article Deleted Successful!");
                        mdr.Close();
                    }

                    else
                    {
                        MessageBox.Show("You enterd a wrong ID/Name.. Please Check AGAIN!");
                    }


                }

                connection.Close();
            }
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
            Response.Redirect("Admin-Space and Universe.aspx?CATID=" + CatID);
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
    }
}