using log4net.Config;
using log4netDemo.Utility;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace log4netDemo
{
    class Program
    {
        static void Main(string[] args)
        {
            //XmlConfigurator.Configure(new FileInfo(Path.Combine(AppDomain.CurrentDomain.BaseDirectory + "ConfigFile\\log4netToDB.config")));
            LogHelper.Fatal(new LogContent("This is fatal message"));
            LogHelper.Error(new LogContent("This is error message"));
            LogHelper.Warn(new LogContent("This is warn message."));
            LogHelper.Info(new LogContent("This is info message."));
            LogHelper.Debug(new LogContent("This is debug message."));
            Console.Read();
        }
          
    }
}
