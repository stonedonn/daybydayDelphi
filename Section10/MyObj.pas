unit MyObj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyClass=class {클래스의 선언}
    X,Y: Integer;  // 필드
    Col:TColor;
    procedure Draw; // 메소드
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

procedure TMyClass.Draw; { 메소드 정의 }
begin
  Form1.Canvas.Pixels[X,Y] := Col;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  MyObj:TMyClass; {오브젝트 변수 선언}
begin
  MyObj:= TMyClass.Create; { 오브젝트 생성 (Instance 생성)}
  with MyObj do
  begin
    X:=100;
    Y:=100;
    Col:=clBlack;
    Draw; // 메소드 호출
    Free; // 오브젝트 파괴 (할당 메모리 해제)
  end;
end;

end.
