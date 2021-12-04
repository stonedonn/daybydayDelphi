unit ReadFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
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
  LOVE: array [1..10] of string; // 배열 변수 선언
  FH:TextFile; // 파일 변수
  i:Integer; // 루프 제어 변수
begin
  AssignFile(FH,'LOVE.txt'); // 할당
  Reset(FH); // 오픈
  for i:=1 to 10 do
  begin
    Readln(FH,LOVE[i]); // 읽기
  end;
  CloseFile(FH);     // 닫기
  Label1.Caption:=LOVE[i];   // 출력
end;

end.
