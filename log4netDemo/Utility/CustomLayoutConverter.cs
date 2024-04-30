using System;
using System.IO;
using log4net.Core;
using log4net.Layout.Pattern;
using System.Reflection;

namespace log4netDemo.Utility
{
    public class CustomLayoutConverter : PatternLayoutConverter
    {
        protected override void Convert(TextWriter writer, LoggingEvent loggingEvent)
        {
            if(Option != null)
            {
                WriteObject(writer, loggingEvent.Repository, LookupProperty(Option, loggingEvent));
            }
            else
            {
                WriteDictionary(writer, loggingEvent.Repository, loggingEvent.GetProperties());
            }

       
        }

        private object LookupProperty(string property, LoggingEvent loggingEvent)
        {
            object propertyValue = string.Empty;
            PropertyInfo propertyInfo = loggingEvent.MessageObject.GetType().GetProperty(property);
            if (propertyInfo != null)
                propertyValue = propertyInfo.GetValue(loggingEvent.MessageObject, null);
            return propertyValue;
        }
    }
}