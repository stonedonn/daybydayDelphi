unit SecondInheritance;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyClass = class
    X,Y: Integer;
    Col: TColor;
    constructor Create(iX,iY:Integer;iCol:TColor);
    procedure Draw;
  end;
  TCircle = class(TMyClass)
    Rad:Integer;
    constructor Create(iX,iY:Integer;iCol:TColor;iRad:Integer);
    procedure Draw;
  end;
  TLine = class(TMyClass)
    X2,Y2: Integer;
    constructor Create(iX,iY,iX2,iY2:Integer;iCol:TColor);
    procedure Draw;
  end;
  TEllipse = class(TCircle)
    RadY:Integer;
    constructor Create(iX,iY:Integer;iCol:TColor;iRad,iRadY:Integer);
    procedure Draw;
  end;
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
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

constructor TMyClass.Create(iX,iY:Integer;iCol:TColor);
begin
  Inherited Create;
  X:=iX;
  Y:=iY;
  Col:=iCol;
end;

constructor TCircle.Create(iX,iY:Integer;iCol:TColor;iRad:Integer);
begin
  Inherited Create(iX,iY,iCol);
  Rad:= iRad;
end;

procedure TCircle.Draw;
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

constructor TLine.Create(iX,iY,iX2,iY2:Integer;iCol:TColor);
begin
  Inherited Create(iX,iY,iCol);
  X2:=iX2;
  Y2:=iY2;
end;

procedure TLine.Draw;
var
  tempColor:TColor;
begin
  tempColor:=Form1.Canvas.Pen.Color;
  with Form1.Canvas do
  begin
    Pen.Color:=Col;
    MoveTo(X,Y);
    LineTo(X2,Y2);
    Pen.Color:=tempColor;
  end;
end;

constructor TEllipse.Create(iX,iY:Integer;
                            iCol:TColor;iRad,iRadY:Integer);
begin
  Inherited Create(iX,iY,iCol,iRad);
  RadY:=iRadY;
end;

procedure TEllipse.Draw;
var
  tempColor:TColor;
begin
  tempColor:=Form1.Canvas.Pen.Color;
  with Form1.Canvas do
  begin
    Pen.Color:=Col;
    Ellipse(X-Rad,Y-RadY,X+Rad,Y+RadY);
    Pen.Color:=tempColor;
  end;
end;



procedure TForm1.Button1Click(Sender: TObject);
var
  MyCircle:TCircle;
begin
  MyCircle:=TCircle.Create(100,70,clBlack,50);
  MyCircle.Draw;
  MyCircle.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  MyLine:TLine;
begin
  MyLine:=TLine.Create(10,10,200,150,clBlack);
  MyLine.Draw;
  MyLine.Free;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  MyEllipse:TEllipse;
begin
  MyEllipse:=TEllipse.Create(100,70,clBlack,80,50);
  MyEllipse.Draw;
  MyEllipse.Free;
end;

end.
