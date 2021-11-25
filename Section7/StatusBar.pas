unit StatusBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  StatusBar1.Panels[0].Text:= IntToStr(X);
  StatusBar1.Panels[1].Text:= IntToStr(Y);
end;

procedure TForm1.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (GetKeyState(VK_NUMLOCK) and 1)=0 then
    StatusBar1.Panels[2].Text:=''
  else
    StatusBar1.Panels[2].Text:='NUM';
end;

end.
