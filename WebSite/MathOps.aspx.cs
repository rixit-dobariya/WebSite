using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MathOps : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    void performOperation(char operation)
    {
        int num1 = Convert.ToInt32(txtNo1.Text);
        int num2 = Convert.ToInt32(txtNo2.Text);
        try
        {
            switch (operation)
            {
                case '+':
                    lblAnswer.Text = "Addition: " + (num1 + num2).ToString();
                    break;
                case '-':
                    lblAnswer.Text = "Subtraction: " + (num1 - num2).ToString();
                    break;
                case '*':
                    lblAnswer.Text = "Multiplication: " + (num1 * num2).ToString();
                    break;
                case '/':
                    lblAnswer.Text = "Division: " + (num1 / num2).ToString();
                    break;
            }
        }
        catch(DivideByZeroException e)
        {
            lblAnswer.Text = "You cannot divide number by 0";
        }
        
    }
    protected void btnAdd_Click(object sender, EventArgs e)
    {
        performOperation('+');
    }

    protected void btnSub_Click(object sender, EventArgs e)
    {
        performOperation('-');

    }

    protected void btnMul_Click(object sender, EventArgs e)
    {
        performOperation('*');

    }

    protected void btnDiv_Click(object sender, EventArgs e)
    {
        performOperation('/');

    }

    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtNo1.Text = "";
        txtNo2.Text = "";
        lblAnswer.Text = "";
    }
}