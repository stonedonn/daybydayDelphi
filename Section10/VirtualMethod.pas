unit VirtualMethod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyClass=class {클래스의 선언}
    X,Y: Integer;  // 필드
    Col:TColor;
    constructor Create(iX,iY:Integer;iCol:TColor);
    procedure Draw; // 메소드
  end;
  TCircle=class(TMyClass)
    Rad:Integer;
    constructor Create(iX,iY:Integer;iCol:TColor;iRad:Integer);
    procedure Draw;
  end;
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DrawObj(Obj:TMyClass);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
{type
  TMyClass=class
    X,Y:Integer;
    Col:TColor;
    constructor Create(iX,iY:Integer;iCol:TColor);
    procedure Draw;virtual;
  end;
    TCircle=class(TMyClass)
    Rad:Integer;
    constructor Create(iX,iY:Integer;iCol:TColor;iRad:Integer);
    procedure Draw;override;
  end;
}

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.DrawObj(obj:TMyClass);
begin
  Obj.Draw;
end;

procedure TMyClass.Draw;
begin
  Form1.Canvas.Pixels[X,Y]:= Col;
end;

procedure TCircle.Draw; { 메소드 오버라이딩 }
var
  tempColor:TColor;
begin
  tempColor:=Form1.Canvas.Pen.Color;
  with Form1.Canvas do
  begin
    Pen.Color:=Col;
    Ellipse(X-Rad,Y-Rad,X+Rad,Y+Rad);
    Pen.Color:=tempColor;
  end;
end;

constructor TMyClass.Create(iX,iY:Integer;iCol:TColor);
begin
  Inherited Create;
  X:= iX;
  Y:= iY;
  Col:= iCol;
end;

constructor TCircle.Create(iX,iY:Integer;iCol:TColor;iRad:Integer);
begin
  Inherited Create(iX,iY,iCol);
  Rad:= iRad;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  MyCircle:TCircle; {오브젝트 변수 선언}
begin
  MyCircle:=TCircle.Create(100,70,clBlack,50);
  DrawObj(MyCircle);
  MyCircle.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  MyDot:TMyClass;
begin
  MyDot:=TMyClass.Create(100,100,clBlack);
  DrawObj(MyDot);
  MyDot.Free;
end;

end.
