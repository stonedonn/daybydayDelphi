unit WriteFile;

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
  FH:TextFile;   {파일 변수 선언}
begin
  AssignFile(FH, 'C:\testfile.txt'); // 할당
  ReWrite(FH);                      // 오픈
  Writeln(FH,345,3.14,567,'korea'); // 출력
  { 여러가지 형식의 데이터를 파일로 출력 가능 }
  closeFile(FH); // 닫기
end;

end.
