program ChgbmpProject;

uses
  Forms,
  Chgbmp_f in 'Chgbmp_f.pas' {Form1};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
