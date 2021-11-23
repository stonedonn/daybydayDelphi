unit calculator_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tcalculator = class(TForm)
    lPlus: TLabel;
    eNum1: TEdit;
    eNum2: TEdit;
    eResult: TEdit;
    btnEqual: TButton;
    procedure btnEqualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  calculator: Tcalculator;

implementation

{$R *.dfm}

procedure Tcalculator.btnEqualClick(Sender: TObject);
begin
  if(eNum1.Text='') or (eNum2.text='') then exit;
  eResult.text := IntToStr(StrToInt(eNum1.text) + StrToInt(eNum2.text));
end;

end.
