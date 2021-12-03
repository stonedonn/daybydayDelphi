program MiniShell2Project;

uses
  Forms,
  MiniShell2 in 'MiniShell2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
