program MiniShellProject;

uses
  Forms,
  MiniShell in 'MiniShell.pas' {ShellForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TShellForm, ShellForm);
  Application.Run;
end.
