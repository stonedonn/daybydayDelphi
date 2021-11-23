program Fcolor;

uses
  Forms,
  Fcolor_f in 'Fcolor_f.pas' {ColorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TColorForm, ColorForm);
  Application.Run;
end.
