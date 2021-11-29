unit BadVirtualScreen;

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
begin
randomize;
Canvas.Brush.Style:=bsClear;
for i:=1 to 300 do
begin
  Canvas.Pen.Color:=
    RGB(random(255),random(255),random(255));
  Canvas.Ellipse(200+i,200+i,200-i,200-i);
end;
end;

end.
