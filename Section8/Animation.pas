unit Animation;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
var
  animation:integer;
{$R *.dfm}

procedure TForm1.Timer1Timer(Sender: TObject);
begin
 animation:= animation + 1;
 if animation=7 then animation:=1;
 if animation=1 then image1.Picture.LoadFromFile('C:\Users\kura1\OneDrive\바탕 화면\델파이 정복 4\부록 CD-ROM\Del4CD\DelEx\08JANG\ANIM1\c-1.bmp');
 if animation=2 then image1.Picture.LoadFromFile('C:\Users\kura1\OneDrive\바탕 화면\델파이 정복 4\부록 CD-ROM\Del4CD\DelEx\08JANG\ANIM1\c-2.bmp');
 if animation=3 then image1.Picture.LoadFromFile('C:\Users\kura1\OneDrive\바탕 화면\델파이 정복 4\부록 CD-ROM\Del4CD\DelEx\08JANG\ANIM1\c-3.bmp');
 if animation=4 then image1.Picture.LoadFromFile('C:\Users\kura1\OneDrive\바탕 화면\델파이 정복 4\부록 CD-ROM\Del4CD\DelEx\08JANG\ANIM1\c-4.bmp');
 if animation=5 then image1.Picture.LoadFromFile('C:\Users\kura1\OneDrive\바탕 화면\델파이 정복 4\부록 CD-ROM\Del4CD\DelEx\08JANG\ANIM1\c-5.bmp');
 if animation=6 then image1.Picture.LoadFromFile('C:\Users\kura1\OneDrive\바탕 화면\델파이 정복 4\부록 CD-ROM\Del4CD\DelEx\08JANG\ANIM1\c-6.bmp');
end;

end.
