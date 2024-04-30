using log4net.Layout;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace log4netDemo.Utility
{
    public class CustomLayout:PatternLayout
    {
        public CustomLayout()
        {
            AddConverter("property", typeof(CustomLayoutConverter));
        }
    }
}
