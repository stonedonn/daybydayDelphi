program GraphicComponentProject;

uses
  Forms,
  GraphicComponent in 'GraphicComponent.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
