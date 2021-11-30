program MyObjProject;

uses
  Forms,
  MyObj in 'MyObj.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
