program Calc;

uses
  Forms,
  calculator_f in 'calculator_f.pas' {calculator};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tcalculator, calculator);
  Application.Run;
end.
