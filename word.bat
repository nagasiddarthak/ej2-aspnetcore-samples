xcopy /q /y  "wwwroot\css\roboto.css" "Word\wwwroot\css\"
xcopy /q /y  "wwwroot\css\site.css" "Word\wwwroot\css\"
xcopy /q /y  "wwwroot\css\sidebar" "Word\wwwroot\css\sidebar\"
xcopy /q /y  "wwwroot\css\sidebar\fonts" "Word\wwwroot\css\sidebar\fonts\"
xcopy /q /y  "wwwroot\css\sidebar\icons" "Word\wwwroot\css\sidebar\icons\"
xcopy /q /y  "wwwroot\css\sidebar\icons\fonts" "Word\wwwroot\css\sidebar\icons\fonts\"
xcopy /q /y  "wwwroot\css\uploader" "Word\wwwroot\css\uploader\"
xcopy /q /y  "wwwroot\grid\adaptive-layout.css" "Word\wwwroot\grid\"
xcopy /q /y  "wwwroot\images\Word" "Word\wwwroot\images\Word\"
xcopy /q /y  "wwwroot\lib\signalr" "Word\wwwroot\lib\signalr\"
xcopy /q /y  "wwwroot\scripts\documenteditor" "Word\wwwroot\scripts\documenteditor\"
xcopy /q /y  "wwwroot\scripts" "Word\wwwroot\scripts\"
xcopy /q /y  "wwwroot\scripts\cldr-data" "Word\wwwroot\scripts\cldr-data\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main" "Word\wwwroot\scripts\cldr-data\main\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\ar\" "Word\wwwroot\scripts\cldr-data\main\ar\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\de\" "Word\wwwroot\scripts\cldr-data\main\de\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\en\" "Word\wwwroot\scripts\cldr-data\main\en\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\fr-CH\" "Word\wwwroot\scripts\cldr-data\main\fr-CH\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\he\" "Word\wwwroot\scripts\cldr-data\main\he\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\vi\" "Word\wwwroot\scripts\cldr-data\main\vi\"
xcopy /q /y  "wwwroot\scripts\cldr-data\main\zh\" "Word\wwwroot\scripts\cldr-data\main\zh\"
xcopy /q /y  "wwwroot\scripts\cldr-data\supplemental" "Word\wwwroot\scripts\cldr-data\supplemental\"
xcopy /q /y  "wwwroot\scripts\locale" "Word\wwwroot\scripts\locale\"
xcopy /q /y  "wwwroot\styles\file-manager" "Word\wwwroot\styles\file-manager\"
xcopy /q /y  "wwwroot\styles\file-manager\images" "Word\wwwroot\styles\file-manager\images\"
xcopy /q /y  "wwwroot\styles\images" "Word\wwwroot\styles\images\"
xcopy /q /y  "wwwroot\styles" "Word\wwwroot\styles\"
xcopy /q /y  "wwwroot\styles\images\sb-icons" "Word\wwwroot\styles\images\sb-icons\"
xcopy /q /y  "wwwroot\styles\images\sb-icons\fonts" "Word\wwwroot\styles\images\sb-icons\fonts\"
xcopy /q /y  "wwwroot\Word" "Word\wwwroot\Word\"
xcopy /q /y  "wwwroot" "Word\wwwroot\"
xcopy /q /y  "Controllers\Dialog\ComponentsDialogController.cs" "Word\Controllers\Dialog\" 
xcopy /q /y  "Controllers\DocumentEditor" "Word\Controllers\DocumentEditor\"
xcopy /q /y  "Controllers\Word" "Word\Controllers\Word\"
xcopy /q /y  "Controllers" "Word\Controllers\"
xcopy /q /y  "Helpers" "Word\Helpers\"
xcopy /q /y  "Helpers\BrowserClasses" "Word\Helpers\BrowserClasses\"
xcopy /q /y  "Helpers\BrowserClasses\Formatter" "Word\Helpers\BrowserClasses\Formatter\"
xcopy /q /y  "Views" "Word\Views\"
xcopy /q /y  "Views\DocumentEditor" "Word\Views\DocumentEditor\"
xcopy /q /y  "Views\Dialog\ComponentsDialog.cshtml" "Word\Views\Dialog\"
xcopy /q /y  "Views\Shared\_Layout.cshtml" "Word\Views\Shared\"
xcopy /q /y  "Views\Word" "Word\Views\Word\"
xcopy  /q /y  "Models\ThemeList.cs" "Word\Models\"
xcopy  /q /y  "Models\AutoFilterIconList.cs" "Word\Models\"
xcopy  /q /y  "Models\OrdersDetails.cs" "Word\Models\"
xcopy  /q /y  "Models\ScheduleEvents.cs" "Word\Models\"
xcopy  /q /y  "Models\WordDocumentList.cs" "Word\Models\"
xcopy  /q /y  "Properties" "Word\Properties\"
xcopy  /q /y  ".gitignore" "Word\"
xcopy  /q /y  ".gitleaksignore" "Word\"
xcopy  /q /y  "appsettings.json" "Word\"
xcopy  /q /y  "bundleconfig.json" "Word\"
xcopy  /q /y  "config.json" "Word\"
xcopy  /q /y  "gulpfile.js" "Word\"
xcopy  /q /y  "Jenkinsfile" "Word\" 
xcopy  /q /y  "NuGet.config" "Word\" 
xcopy  /q /y  "package.json" "Word\" 
xcopy  /q /y  "Program.cs" "Word\"
xcopy  /q /y  "README.md" "Word\" 
xcopy  /q /y  "SyncfusionLicense.txt" "Word\" 
xcopy  /q /y  "web.config" "Word\"
xcopy /q /y "Word\samplelist.js" "Word\wwwroot\scripts\"
xcopy /q /y "Word\sampleOrder.json" "Word\wwwroot\scripts\"
copy /y "Word\wordHomeController.cs" "Word\Controllers\HomeController.cs"

@echo off
set "destinationFile=Word\Controllers\HomeController.cs"
set "searchWord=WordHomeController"
set "replaceWord=HomeController"

setlocal enabledelayedexpansion
(for /f "usebackq delims=" %%a in ("%destinationFile%") do (
    set "line=%%a"
    set "line=!line:%searchWord%=%replaceWord%!"
    echo !line!
)) > "%destinationFile%.tmp"

move /y "%destinationFile%.tmp" "%destinationFile%"

echo Word '%searchWord%' replaced with '%replaceWord%' in %destinationFile%