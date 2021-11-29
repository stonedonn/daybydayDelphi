unit AnimationImageComponent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
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
  if animation = 7 then animation:= 1;
  if animation = 1 then image1.Picture:= image2.Picture;
  if animation = 2 then image1.Picture:= image3.Picture;
  if animation = 3 then image1.Picture:= image4.Picture;
  if animation = 4 then image1.Picture:= image5.Picture;
  if animation = 5 then image1.Picture:= image6.Picture;
  if animation = 6 then image1.Picture:= image7.Picture;
end;

end.
