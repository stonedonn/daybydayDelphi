program BirthProject;

uses
  Forms,
  Birth in 'Birth.pas' {birthcalc};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tbirthcalc, birthcalc);
  Application.Run;
end.
