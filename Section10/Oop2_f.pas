unit Oop2_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyClass = class
    X,Y:Integer;
    Col:TColor;
    constructor Create(iX,iY:Integer;iCol:TColor);
    procedure Draw;
  end;
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

procedure TMyClass.Draw;
begin
  Form1.Canvas.Pixels[X,Y]:=Col;
end;

{생성자: 인수를 전달받아 필드를 초기화한다}
constructor TMyClass.Create(iX,iY:Integer;iCol:TColor);
begin
  {기반 클래스의 생성자를 먼저 호출해야 한다}
  Inherited Create;
  X:=iX; {자신의 필드 초기화}
  Y:=iY;
  Col:=iCol;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  MyObj:TMyClass;
begin
  {생정자에 의해 오브젝트를 생성하면서 동시에 필드를 초기화한다}
  MyObj:=TMyClass.Create(100,100,clBlack);
  With MyObj do
  begin
    Draw;
    Free;
  end;
end;

end.
