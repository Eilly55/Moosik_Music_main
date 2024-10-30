[Setup]
AppId=B9F6E402-0CAE-4045-BDE6-14BD6C39C4EA
AppVersion=1.10.2+18
AppName=moosik
AppPublisher=anandnet
AppPublisherURL=https://github.com/anandnet/moosik-Music
AppSupportURL=https://github.com/anandnet/moosik-Music
AppUpdatesURL=https://github.com/anandnet/moosik-Music
DefaultDirName={autopf}\moosik
DisableProgramGroupPage=yes
OutputDir=.
OutputBaseFilename=moosikv1.10.2
Compression=lzma
SolidCompression=yes
SetupIconFile=..\..\windows\runner\resources\app_icon.ico
WizardStyle=modern
PrivilegesRequired=lowest
LicenseFile=..\..\LICENSE
ArchitecturesAllowed=x64
ArchitecturesInstallIn64BitMode=x64

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\..\build\windows\x64\runner\Release\moosik.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\..\build\windows\x64\runner\Release\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\moosik"; Filename: "{app}\moosik.exe"
Name: "{autodesktop}\moosik"; Filename: "{app}\moosik.exe"; Tasks: desktopicon

[Run]
Filename: "{app}\moosik.exe"; Description: "{cm:LaunchProgram,{#StringChange('moosik', '&', '&&')}}"; Flags: nowait postinstall skipifsilent
