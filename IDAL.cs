using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
public    interface IDAL<TEntity>
    {
        bool Save(TEntity tEntity);
        bool Delete(TEntity tEntity);
        bool Update(TEntity tEntity);
        TEntity GetById(Object obj);
       
    }
}
