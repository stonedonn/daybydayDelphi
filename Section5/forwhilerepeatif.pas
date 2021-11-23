unit forwhilerepeatif;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
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
  i : integer;
  sum : integer;
begin
  sum := 0;
  for i:=1 to 100 do
    sum := sum + i;
  Label1.Caption := IntToStr(sum);
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i,sum : integer;
begin
  sum := 0;
  i := 0;

  repeat
  i := i+1;
  sum := sum +i;
  until i=100;
  Label1.Caption := IntToStr(sum);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  i,sum : integer;
begin
  i:=1;
  sum:=0;

  while i<=100 do
  begin
    sum:= sum+i;
    i:= i+1;
  end;
  Label1.caption:= IntToStr(sum);
end;

procedure TForm1.Button4Click(Sender: TObject);
label
  here;      // 점프할 목적지인 레이블을 선언
var
  i,sum: integer;
begin
  sum:= 0;
  i:= 0;
  here:   // 점프처
  i:= i+1;
  sum:= sum+i;
  if i<>100 then
    goto here; // here로 점프
  Label1.Caption:= IntToStr(sum);

end;

end.
