unit PainBoxComponent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls;

type
  TForm1 = class(TForm)
    PaintBox1: TPaintBox;
    procedure PaintBox1Paint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.PaintBox1Paint(Sender: TObject);
begin
with PaintBox1.Canvas do
  begin
  Pixels[100,100]:= clBlack;
  Pen.Color:= clBlue;
  Pen.Width:= 2;
  MoveTo(120,50);
  LineTo(168,88);
  Polyline([Point(50,50), Point(70,70), Point(50,90), Point(30,70), Point(50,50)]);
  Rectangle(200,10,250,50);
  Brush.Color:= clGreen;
  Ellipse(200,60,250,100);
  Brush.Style:= bsDiagCross;
  Brush.Color:= clBlue;
  RoundRect(200,110,250,150,10,10);
  Brush.Style:= bsSolid;
  Brush.Color:= clWhite;
  Pen.Width:= 1;
  end;
end;

end.
