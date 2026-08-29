#define MyAppName "LEAL INFO PDV"
#define MyAppVersion "10.118"
#define MyAppPublisher "LEAL INFO CONECTADO"
#define MyAppExeName "LealInfoPDV.exe"

[Setup]
AppId={{B923D5C8-1F11-4C80-A118-LEAL10118PDV}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\LEAL INFO CONECTADO\LEAL INFO PDV
DefaultGroupName=LEAL INFO CONECTADO
DisableProgramGroupPage=yes
OutputDir=SETUP_PRONTO
OutputBaseFilename=Setup_LEAL_INFO_PDV_V10_118
SetupIconFile=Assets\lealinfo.ico
UninstallDisplayIcon={app}\Assets\lealinfo.ico
Compression=lzma2/max
SolidCompression=yes
WizardStyle=modern
PrivilegesRequired=admin
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
CloseApplications=yes
RestartApplications=no

[Files]
Source: "publish_setup\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "Assets\lealinfo.ico"; DestDir: "{app}\Assets"; Flags: ignoreversion

[Icons]
Name: "{autoprograms}\LEAL INFO CONECTADO\LEAL INFO PDV"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; IconFilename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\LEAL INFO PDV"; Filename: "{app}\{#MyAppExeName}"; WorkingDir: "{app}"; IconFilename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Abrir LEAL INFO PDV"; Flags: nowait postinstall skipifsilent
