using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
public   class Helper
    {
    public static string GetConnection()
    {
        return "Server=(local);database=AgentManagement;integrated security=true";
    }
       
    }
}
