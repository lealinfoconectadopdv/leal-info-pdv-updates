#define MyAppName "LEAL INFO PDV"
#define MyAppVersion "10.127"
#define MyAppPublisher "LEAL INFO CONECTADO"
#define MyAppExeName "LealInfoPDV.exe"

[Setup]
AppId={{E7A70A4C-1A27-4A5E-9B9A-LEALINFO127}}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\LEAL INFO PDV
DefaultGroupName=LEAL INFO PDV
OutputDir=SETUP_PRONTO
OutputBaseFilename=Setup_LEAL_INFO_PDV_V10_127
Compression=lzma2
SolidCompression=yes
WizardStyle=modern
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible

[Files]
Source: "publish_setup\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\LEAL INFO PDV"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\LEAL INFO PDV"; Filename: "{app}\{#MyAppExeName}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "Abrir LEAL INFO PDV"; Flags: nowait postinstall skipifsilent
