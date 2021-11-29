program MouseDrawProject;

uses
  Forms,
  MouseDraw in 'MouseDraw.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
