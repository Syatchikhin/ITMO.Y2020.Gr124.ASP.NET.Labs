﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ITMO.Y2020.Gr124.ASP.NET.Lab02
{
    public partial class Reg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //GuestResponse rsvp = new GuestResponse(name.Text,
                //email.Text, phone.Text, CheckBoxYN.Checked);
            }
        }
    }
}