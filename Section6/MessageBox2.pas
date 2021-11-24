unit MessageBox2;

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
  Response: String;
begin

  // 사용자가 어떤 버튼을 눌렀는지 알 수 없음
  Response:= InputBox('질문', '당신의 이름을 입력하십시요', '강감찬');

  // 리턴값이 True이면 사용자가 입력 한 것이고 False이면 입력을 취소한 것
  // function InputQuery(const ACaption, Aprompt: string; var Value:
  //  string): Boolean
end;

end.
