program AboutProject;

uses
  Forms,
  About_f1 in 'About_f1.pas' {MainForm},
  About_f2 in 'About_f2.pas' {AboutForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TAboutForm, AboutForm);
  Application.Run;
end.
