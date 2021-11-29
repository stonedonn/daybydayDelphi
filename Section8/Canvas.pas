unit Canvas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Canvas.Pixels[100,100]:= clBlack;
  Canvas.Pen.Color:= clBlue;
  Canvas.Pen.Width:= 2;
  Canvas.MoveTo(120,50);
  Canvas.LineTo(168,88);
  Canvas.Polyline([Point(50,50), Point(70,70), Point(50,90), Point(30,70), Point(50,50)]);
  Canvas.Rectangle(200,10,250,50);
  Canvas.Brush.Color:= clGreen;
  Canvas.Ellipse(200,60,250,100);
  Canvas.Brush.Style:= bsDiagCross;
  Canvas.Brush.Color:= clBlue;
  Canvas.RoundRect(200,110,250,150,10,10);
  Canvas.Brush.Style:= bsSolid;
  Canvas.Brush.Color:= clWhite;
  Canvas.Pen.Width:= 1;
end;

end.
