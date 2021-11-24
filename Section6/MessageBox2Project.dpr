program MessageBox2Project;

uses
  Forms,
  MessageBox2 in 'MessageBox2.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
