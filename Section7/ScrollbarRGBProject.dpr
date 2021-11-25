program ScrollbarRGBProject;

uses
  Forms,
  ScrollbarRGB in 'ScrollbarRGB.pas' {colorForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TcolorForm, colorForm);
  Application.Run;
end.
