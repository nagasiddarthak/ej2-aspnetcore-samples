#region Copyright Syncfusion Inc. 2001-2024.
// Copyright Syncfusion Inc. 2001-2024. All rights reserved.
// Use of this code is subject to the terms of our license.
// A copy of the current license can be obtained at any time by e-mailing
// licensing@syncfusion.com. Any infringement will be prosecuted under
// applicable laws. 
#endregion
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using EJ2CoreSampleBrowser.Models;

namespace EJ2CoreSampleBrowser.Controllers
{
    public partial class RichtextEditorController : Controller
    {
        public IActionResult SmartSuggestion()
        {
            ViewBag.items = new object[] {"Bold", "Italic", "Underline", "StrikeThrough", "SuperScript", "SubScript", "|",
                "FontName", "FontSize", "FontColor", "BackgroundColor",  "|",
                "LowerCase", "UpperCase",
                "Formats", "Alignments", "Blockquote", "|", "NumberFormatList", "BulletFormatList", "|",
                "Outdent", "Indent", "|",
                "CreateLink", "Image", "Video", "Audio", "CreateTable", "|", "FormatPainter", "ClearFormat", "|", "EmojiPicker", "|",
                "SourceCode", "|", "Undo", "Redo"  
            };
            return View();

        }
    }
}
