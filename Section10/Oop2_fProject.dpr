program Oop2_fProject;

uses
  Forms,
  Oop2_f in 'Oop2_f.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
