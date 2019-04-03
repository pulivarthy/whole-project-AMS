using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using DEL;
namespace BLL
{
    public class Agent_CommissionBLL
    {
        Agent_Commission ad = new Agent_Commission();
        IDAL<Agent_Commission> addal = new Agent_CommissionDAL();
        Agent_CommissionDAL agentcom = new Agent_CommissionDAL();
        public bool Save(Agent_Commission ad)
        {
            return addal.Save(ad);
        }
        public Agent_Commission GetAgent_CommissionInfoById(int Login_Id)
        {
            return addal.GetById(Login_Id);
        }
        public bool Agent_CommissionSpUpd( Agent_Commission um)
        {
            return addal.Update(um);
        }

        //public List<Admin> GetAll()
        //{
        //    return ad.GetAll();
        //}
        public double AgenCommisionById(int LoginId, DateTime FromDate, DateTime ToDate)
        {
            return agentcom.GetCommisionByAgentId(LoginId, FromDate, ToDate);
        }
        public string agentname(int Login_id)
        {
            return agentcom.getnamebyagentid(Login_id);
        }
    }
}
