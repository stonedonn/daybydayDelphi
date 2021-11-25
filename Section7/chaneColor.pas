unit chaneColor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    btnRed: TButton;
    btnGreen: TButton;
    btnBlue: TButton;
    MainMenu1: TMainMenu;
    Color1: TMenuItem;
    Red1: TMenuItem;
    Green1: TMenuItem;
    Blue1: TMenuItem;
    procedure ChangeColor(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ChangeColor(Sender: TObject);
begin
  if (Sender=Red1) or (Sender=btnRed) then
    Form1.Color := clRed;
  if (Sender=Green1) or (Sender=btnGreen) then
    Form1.Color := clGreen;
  if (Sender=Blue1) or (Sender=btnBlue) then
    Form1.Color := clBlue;
end;

end.
