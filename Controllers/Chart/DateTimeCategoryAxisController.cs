#region Copyright Syncfusion Inc. 2001-2024.
// Copyright Syncfusion Inc. 2001-2024. All rights reserved.
// Use of this code is subject to the terms of our license.
// A copy of the current license can be obtained at any time by e-mailing
// licensing@syncfusion.com. Any infringement will be prosecuted under
// applicable laws. 
#endregion
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Syncfusion.EJ2.Charts;

// For more information on enabling MVC for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace EJ2CoreSampleBrowser.Controllers
{
    public partial class ChartController : Controller
    {

        public IActionResult DateTimeCategoryAxis()
        {
            List<DateTimeCategoryData> ChartPoints = new List<DateTimeCategoryData>
            {
                new DateTimeCategoryData { Period = new DateTime(2017, 12, 20), Sales = 21, DataLabelMappingName="21M"},
                new DateTimeCategoryData { Period = new DateTime(2017, 12, 21), Sales = 24, DataLabelMappingName="24M" },
                new DateTimeCategoryData { Period = new DateTime(2017, 12, 22), Sales = 24, DataLabelMappingName="24M"},
                new DateTimeCategoryData { Period = new DateTime(2017, 12, 26), Sales = 70, DataLabelMappingName="70M"},
                new DateTimeCategoryData { Period = new DateTime(2017, 12, 27), Sales = 75, DataLabelMappingName="75M"},
                new DateTimeCategoryData { Period = new DateTime(2018, 1, 2), Sales = 82, DataLabelMappingName="82M"},
                new DateTimeCategoryData { Period = new DateTime(2018, 1, 3), Sales = 53, DataLabelMappingName="53M"},
                new DateTimeCategoryData { Period = new DateTime(2018, 1, 4), Sales = 54, DataLabelMappingName="54M"},
                new DateTimeCategoryData { Period = new DateTime(2018, 1, 5), Sales = 53, DataLabelMappingName="53M"},
                new DateTimeCategoryData { Period = new DateTime(2018, 1, 8), Sales = 45, DataLabelMappingName="45M"}
            };
            ViewBag.ChartPoints = ChartPoints;
            return View();
        }     
        public class DateTimeCategoryData
        {
            public DateTime Period;
            public double Sales;
            public string DataLabelMappingName;
        }
    }
}
