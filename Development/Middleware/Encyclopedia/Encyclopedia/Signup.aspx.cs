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
        MySqlConnection connection = new MySqlConnection("datasource=10.145.0.233;port=3306;username=user;password=123456");
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

                            string connectionString = "datasource=10.145.0.233;port=3306;username=user;password=123456;database=encyclopedia;";
                            string iquery = "INSERT INTO user(Email,Username, Password,AdminID) VALUES ('" + Email.Text + "', '" + UserName.Text + "', '" + SignupPassword.Text + "',333)";

                            MySqlConnection databaseConnection = new MySqlConnection(connectionString);
                            MySqlCommand commandDatabase = new MySqlCommand(iquery, databaseConnection);
                            commandDatabase.CommandTimeout = 60;

                            try
                            {
                                databaseConnection.Open();
                                MySqlDataReader myReader = commandDatabase.ExecuteReader();
                                databaseConnection.Close();
                            }
                            catch (Exception ex)
                            {
                                // Show any error message.
                                MessageBox.Show(ex.Message);
                            }

                            MessageBox.Show("Account Successfully Created!");
                            Response.Redirect("Login.aspx");

                        }

                        connection.Close();



                    }
                }
            }
        }
    }
}