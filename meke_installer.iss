; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Mozz Editing Kit Essentials"
#define MyAppVersion "2.0.0"
#define MyAppPublisher "Sigmmma"
#define MyAppURL "https://github.com/Sigmmma"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{145BFD54-DAD9-45EC-9193-466BFA3A6038}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={commonappdata}\{#MyAppPublisher}\{#MyAppName}
DefaultGroupName={#MyAppName}
AllowNoIcons=yes
LicenseFile=LICENSE
; Remove the following line to run in administrative install mode (install for all users.)
PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=dialog
OutputBaseFilename=MEKE_Installer
SetupIconFile=icons\meke.ico
SolidCompression=yes
Compression=lzma2/ultra
LZMAUseSeparateProcess=yes
LZMANumFastBytes=273
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"

[Files]
Source: "build\MEK_Updater.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "build\Mozzarilla.exe";  DestDir: "{app}"; Flags: ignoreversion
Source: "build\Pool.exe";        DestDir: "{app}"; Flags: ignoreversion
Source: "build\Refinery.exe";    DestDir: "{app}"; Flags: ignoreversion
Source: "build\mek_python\*";    DestDir: "{app}\mek_python"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\Mozzarilla";        Filename: "{app}\Mozzarilla.exe"
Name: "{userdesktop}\Mozzarilla";  Filename: "{app}\Mozzarilla.exe";  Tasks: desktopicon
Name: "{group}\Pool";              Filename: "{app}\Pool.exe"
Name: "{userdesktop}\Pool";        Filename: "{app}\Pool.exe";        Tasks: desktopicon
Name: "{group}\Refinery";          Filename: "{app}\Refinery.exe"
Name: "{userdesktop}\Refinery";    Filename: "{app}\Refinery.exe";    Tasks: desktopicon
Name: "{group}\Update MEKE";       Filename: "{app}\MEK_Updater.exe"
Name: "{userdesktop}\Update MEKE"; Filename: "{app}\MEK_Updater.exe"; Tasks: desktopicon

Name: "{group}\{cm:ProgramOnTheWeb,{#MyAppPublisher} GitHub Org}"; Filename: "{#MyAppURL}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
