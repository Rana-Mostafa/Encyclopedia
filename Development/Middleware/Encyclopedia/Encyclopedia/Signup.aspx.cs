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
    public partial class Signup : System.Web.UI.Page
    {
        static string connstring = "datasource = 127.0.0.1; port=3306;username=root;password=123456;database=encyclopedia;";
        MySqlConnection connection = new MySqlConnection(connstring);
        MySqlCommand command;
        MySqlDataReader mdr;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection.Open();

        }

        protected void SignupBtn_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(UserName.Text) || string.IsNullOrEmpty(SignupPassword.Text))
            {
                MessageBox.Show("Please input Username and Password", "Error");
            }
            else
            {
                int userID = 0;
                string selectQuery5 = string.Format("SELECT Max(UserID) from encyclopedia.user;");
                command = new MySqlCommand(selectQuery5, connection);
                mdr = command.ExecuteReader();
                if (mdr.Read())
                {
                    if (mdr["Max(UserID)"] == DBNull.Value)
                        userID = 1;

                    else
                    {
                        userID = mdr.GetInt16(0);
                        userID++;
                    }
                }
                mdr.Close();

                string selectQuery = "SELECT * FROM encyclopedia.user WHERE Username = '" + UserName.Text + "';";
                command = new MySqlCommand(selectQuery, connection);
                mdr = command.ExecuteReader();
                if (mdr.Read())
                {
                    MessageBox.Show("Username already Exist!");

                }
                else
                {
                    if (UserName.Text == "" || Email.Text == "" || SignupPassword.Text == "" || SignupPassword.Text == "")
                    {
                        MessageBox.Show("Please Fill The Mandatory Fields");
                    }
                    else
                    {
                        if (SignupPassword.Text != SignupPassword.Text)
                        {
                            MessageBox.Show("Passwords Don't Match");
                        }
                        else
                        {

                            string iquery = "INSERT INTO user(UserID,Email,Username, Password,AdminID) VALUES ('" + userID + "', '" + Email.Text + "', '" + UserName.Text + "', '" + SignupPassword.Text + "',1)";

                            MySqlConnection databaseConnection = new MySqlConnection(connstring);
                            MySqlCommand commandDatabase = new MySqlCommand(iquery, databaseConnection);
                            commandDatabase.CommandTimeout = 60;

                            try
                            {
                                databaseConnection.Open();
                                MySqlDataReader myReader = commandDatabase.ExecuteReader();
                                databaseConnection.Close();
                                MessageBox.Show("Account Successfully Created!");
                                Response.Redirect("Login.aspx");
                            }
                            catch (Exception ex)
                            {
                                // Show any error message.
                                MessageBox.Show(ex.Message);
                            }



                        }

                        connection.Close();



                    }
                }
            }
        }
    }
}