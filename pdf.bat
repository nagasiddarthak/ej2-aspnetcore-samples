xcopy /q /y  "wwwroot\css\roboto.css" "PDF\wwwroot\css\"
xcopy /q /y  "wwwroot\css\site.css" "PDF\wwwroot\css\"
xcopy /q /y  "wwwroot\css\sidebar" "PDF\wwwroot\css\sidebar\"
xcopy /q /y  "wwwroot\css\sidebar\fonts" "PDF\wwwroot\css\sidebar\fonts\"
xcopy /q /y  "wwwroot\css\sidebar\icons" "PDF\wwwroot\css\sidebar\icons\"
xcopy /q /y  "wwwroot\css\sidebar\icons\fonts" "PDF\wwwroot\css\sidebar\icons\fonts\"
xcopy /q /y  "wwwroot\css\uploader" "PDF\wwwroot\css\uploader\"
xcopy /q /y  "wwwroot\grid\adaptive-layout.css" "PDF\wwwroot\grid\"
xcopy /q /y  "wwwroot\lib\signalr" "PDF\wwwroot\lib\signalr\"
xcopy /q /y  "wwwroot\PDF" "PDF\wwwroot\PDF\"
xcopy /q /y  "wwwroot\PdfViewer" "PDF\wwwroot\PdfViewer\"
xcopy /q /y  "wwwroot\scripts" "PDF\wwwroot\scripts\"
xcopy /q /y  "wwwroot\scripts\cldr-data" "PDF\wwwroot\scripts\cldr-data\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main" "PDF\wwwroot\scripts\cldr-data\main\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\ar\" "PDF\wwwroot\scripts\cldr-data\main\ar\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\de\" "PDF\wwwroot\scripts\cldr-data\main\de\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\en\" "PDF\wwwroot\scripts\cldr-data\main\en\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\fr-CH\" "PDF\wwwroot\scripts\cldr-data\main\fr-CH\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\he\" "PDF\wwwroot\scripts\cldr-data\main\he\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\vi\" "PDF\wwwroot\scripts\cldr-data\main\vi\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\zh\" "PDF\wwwroot\scripts\cldr-data\main\zh\"
xcopy /q /y  "wwwroot\scripts\cldr-data\supplemental" "PDF\wwwroot\scripts\cldr-data\supplemental\"
xcopy /q /y  "wwwroot\scripts\locale" "PDF\wwwroot\scripts\locale\"
xcopy /q /y  "wwwroot\scripts\ej2-pdfviewer-lib" "PDF\wwwroot\scripts\ej2-pdfviewer-lib\" 
xcopy /q /y  "wwwroot\styles\file-manager" "PDF\wwwroot\styles\file-manager\"
xcopy /q /y  "wwwroot\styles\file-manager\images" "PDF\wwwroot\styles\file-manager\images\"
xcopy /q /y  "wwwroot\styles\images" "PDF\wwwroot\styles\images\"
xcopy /q /y  "wwwroot\styles" "PDF\wwwroot\styles\"
xcopy /q /y  "wwwroot\styles\images\sb-icons" "PDF\wwwroot\styles\images\sb-icons\"
xcopy /q /y  "wwwroot\styles\images\sb-icons\fonts" "PDF\wwwroot\styles\images\sb-icons\fonts\"
xcopy /q /y  "wwwroot" "PDF\wwwroot\"
xcopy /q /y  "Controllers\PDF" "PDF\Controllers\PDF\"
xcopy /q /y  "Controllers\Dialog\ComponentsDialogController.cs" "PDF\Controllers\Dialog\"
xcopy /q /y  "Controllers\PDF\Zugferd" "PDF\Controllers\PDF\Zugferd\"
xcopy /q /y  "Controllers\PdfViewer" "PDF\Controllers\PdfViewer\"
xcopy /q /y  "Controllers" "PDF\Controllers\"
xcopy /q /y  "Helpers" "PDF\Helpers\"
xcopy /q /y  "Helpers\BrowserClasses" "PDF\Helpers\BrowserClasses\"
xcopy /q /y  "Helpers\BrowserClasses\Formatter" "PDF\Helpers\BrowserClasses\Formatter\"
xcopy  /q /y  "Models\FindPDFCorruptionMessage.cs" "PDF\Models\"
xcopy  /q /y  "Models\FindTextMessage.cs" "PDF\Models\" 
xcopy  /q /y  "Models\SignatureValidationMessage .cs" "PDF\Models\"
xcopy  /q /y  "Models\ThemeList.cs" "PDF\Models\"
xcopy  /q /y  "Models\OrdersDetails.cs" "PDF\Models\"
xcopy  /q /y  "Models\ScheduleEvents.cs" "PDF\Models\"
xcopy  /q /y  "Models\PdfDocumentList.cs" "PDF\Models\"
xcopy /q /y  "Views" "PDF\Views\"
xcopy /q /y  "Views\Shared\_Layout.cshtml" "PDF\Views\Shared\"
xcopy /q /y  "Views\PDF" "PDF\Views\PDF\"
xcopy /q /y  "Views\Dialog\ComponentsDialog.cshtml" "PDF\Views\Dialog\"
xcopy /q /y  "Views\PdfViewer" "PDF\Views\PdfViewer\"
xcopy  /q /y  "Properties" "PDF\Properties\"
xcopy  /q /y  ".gitignore" "PDF\"
xcopy  /q /y  ".gitleaksignore" "PDF\"
xcopy  /q /y  "appsettings.json" "PDF\"
xcopy  /q /y  "bundleconfig.json" "PDF\"
xcopy  /q /y  "config.json" "PDF\"
xcopy  /q /y  "gulpfile.js" "PDF\"
xcopy  /q /y  "Jenkinsfile" "PDF\" 
xcopy  /q /y  "NuGet.config" "PDF\" 
xcopy  /q /y  "package.json" "PDF\" 
xcopy  /q /y  "Program.cs" "PDF\"
xcopy  /q /y  "README.md" "PDF\" 
xcopy  /q /y  "SyncfusionLicense.txt" "PDF\" 
xcopy  /q /y  "web.config" "PDF\"
xcopy /q /y "PDF\samplelist.js" "PDF\wwwroot\scripts\"
xcopy /q /y "PDF\sampleOrder.json" "PDF\wwwroot\scripts\"
copy /y "PDF\pdfHomeController.cs" "PDF\Controllers\HomeController.cs"

@echo off
set "destinationFile=PDF\Controllers\HomeController.cs"
set "searchWord=PDFHomeController"
set "replaceWord=HomeController"

setlocal enabledelayedexpansion
(for /f "usebackq delims=" %%a in ("%destinationFile%") do (
    set "line=%%a"
    set "line=!line:%searchWord%=%replaceWord%!"
    echo !line!
)) > "%destinationFile%.tmp"

move /y "%destinationFile%.tmp" "%destinationFile%"

echo Word '%searchWord%' replaced with '%replaceWord%' in %destinationFile%
