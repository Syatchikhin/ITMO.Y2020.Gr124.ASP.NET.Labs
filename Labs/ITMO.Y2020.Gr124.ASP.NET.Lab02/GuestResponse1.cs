﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ITMO.Y2020.Gr124.ASP.NET.Lab01
{
    public class GuestResponse
    {
        public int GuestResponseIdId { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public string Phone { get; set; }
        public bool? WillAttend { get; set; }
        public DateTime Rdata { get; set; }

    }
}