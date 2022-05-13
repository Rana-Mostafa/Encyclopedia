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
        MySqlConnection connection = new MySqlConnection("datasource=10.145.0.233;port=3306;username=user;password=123456");
        MySqlCommand command;
        MySqlDataReader mdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();

        }

        protected void FollowBtn_Click(object sender, EventArgs e)
        {
            int SelectedItem = DropDownList1.SelectedIndex;
            if (SelectedItem == 0)
            {
                string selectQuery2 = "DELETE FROM encyclopedia.video WHERE ContentID = '" + contentID.Text + "' AND VideoName = '" + contentName.Text + "';";
                command = new MySqlCommand(selectQuery2, connection);
                mdr = command.ExecuteReader();
                mdr.Close();
                MessageBox.Show("Video Deleted Successful!");


            }
            if (SelectedItem == 1)
            {
                string selectQuery2 = "DELETE FROM encyclopedia.voice_rec  WHERE ContentID = '" + contentID.Text + "' AND VoiceRecName = '" + contentName.Text + "';";
                command = new MySqlCommand(selectQuery2, connection);
                mdr = command.ExecuteReader();
                mdr.Close();
                MessageBox.Show("Voice Record Deleted Successful!");

            }
            if (SelectedItem == 2)
            {
                string selectQuery2 = "DELETE FROM encyclopedia.aricle WHERE ContentID = '" + contentID.Text + "' AND Name = '" + contentName.Text + "';";
                command = new MySqlCommand(selectQuery2, connection);
                mdr = command.ExecuteReader();
                mdr.Close();
                MessageBox.Show("Article Deleted Successful!");


            }
            string selectQuery = "DELETE FROM encyclopedia.content WHERE ContentID = '" + contentID.Text + "' AND name = '" + contentName.Text + "';";
            command = new MySqlCommand(selectQuery, connection);
            mdr = command.ExecuteReader();
            connection.Close();
        }

    }
}