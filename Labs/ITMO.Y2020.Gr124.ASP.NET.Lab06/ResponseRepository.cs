using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;

namespace ITMO.Y2020.Gr124.ASP.NET.Lab06
{
    public class ResponseRepository
    {
        public static ResponseRepository repository = new ResponseRepository();

        private List<GuestResponse> responses = new List<GuestResponse>();

        public static ResponseRepository GetRepository()
        {
            return repository;
        }

        public IEnumerable<GuestResponse> GetAllResponses()
        {
            return responses;
        }

        public void AddResponse(GuestResponse response)
        {
            responses.Add(response);
        }



    }
}