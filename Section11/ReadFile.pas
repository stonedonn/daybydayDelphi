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
  LOVE: array [1..10] of string; // �迭 ���� ����
  FH:TextFile; // ���� ����
  i:Integer; // ���� ���� ����
begin
  AssignFile(FH,'LOVE.txt'); // �Ҵ�
  Reset(FH); // ����
  for i:=1 to 10 do
  begin
    Readln(FH,LOVE[i]); // �б�
  end;
  CloseFile(FH);     // �ݱ�
  Label1.Caption:=LOVE[i];   // ���
end;

end.
