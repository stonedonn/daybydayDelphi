unit QUIZ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Menus, ComCtrls;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    Memo1: TMemo;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure Chulje;
    procedure FormCreate(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
  Tmunje=record
    mun:string[50];
    b1:string[30];
    b2:string[30];
    b3:string[30];
    ans:integer;
  end;
const
  total=23; { �� ���� ���� }
var
  Form1: TForm1;
  munje:array [1..total] of Tmunje;
  nowmun:integer; {���� ���õ� ����}
  NO,NX: integer; {���� ����, Ʋ�� ����}

implementation

{$R *.dfm}

{������ ������ ������ �� ������ ���⸦ ���� ����Ѵ�}
procedure TForm1.Chulje;
begin
  nowmun:=Random(total)+1;
  Memo1.Text:=munje[nowmun].mun;
  Panel1.Caption:=munje[nowmun].b1;
  Panel2.Caption:=munje[nowmun].b2;
  Panel3.Caption:=munje[nowmun].b3;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  F1:TextFile;
  i:integer;
  st:string;
begin
  AssignFile(F1,'QUIZ.txt'); // �Ҵ�
  Reset(F1); //����
  {������ ������� �о�� �迭�� ��´�}
  for i:=1 to total do
  begin
    readln(F1,munje[i].mun);
    readln(F1,munje[i].b1);
    readln(F1,munje[i].b2);
    readln(F1,munje[i].b3);
    readln(F1,st);
    munje[i].ans:=StrToInt(st);
  end;
CloseFile(F1);
Randomize;
end;

{ ���� ����, ������ ����ϰ� ������ �ʱ�ȭ �Ѵ� }
procedure TForm1.N2Click(Sender: TObject);
begin
  Chulje;
  NO:=0;
  NX:=0;
  StatusBar1.SimpleText:='��ȣ�� �����Ͻʽÿ�!';
end;

{ ���α׷� ���� }
procedure TForm1.N3Click(Sender: TObject);
begin
  close;
end;

{ ���� ��ư�� ������ ���� ������ ����. }
procedure TForm1.Button1Click(Sender: TObject);
begin
  { ��� ��ư�� ��ȣ�� ���Ѵ�. }
  if (Sender as TButton).tag=munje[nowmun].ans then
    NO:=NO+1 { ���� ���� ����}
  else
    NX:=NX+1; { Ʋ�� ���� ���� }
  StatusBar1.SimpleText:= '�� ' + IntToStr(NO+NX)+ ' ���� �� ' +
    IntToStr(NO) + ' ������ ������ϴ�!';
  Chulje; { �ٽ� ���� ���� }
end;

end.