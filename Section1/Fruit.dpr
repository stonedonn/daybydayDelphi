program Fruit;

uses
  Forms,
  Fruit_f in 'Fruit_f.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
