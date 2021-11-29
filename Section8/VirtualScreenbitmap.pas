unit VirtualScreenbitmap;

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
var
  i:integer;
  vbitmap:TBitmap;
begin
  randomize;
  vbitmap:=TBitmap.Create; // 가상화면 만듬
  vbitmap.Width:=400;
  vbitmap.Height:=400;
  vbitmap.Canvas.Brush.Style:=bsClear;
  for i:=1 to 300 do
  begin
    vbitmap.Canvas.Pen.Color:=
      RGB(random(255),random(255),random(255));
    vbitmap.Canvas.Ellipse(200+i,200+i,200-i,200-i);
  end;
  Canvas.Draw(0,0,vbitmap);
  vbitmap.Free;

end.
