unit API1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
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
begin
  Close;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  WritePrivateProfileString('Pos','Left',        // Form�� �Ӽ����� Int���̹Ƿ� ���ڿ��� �ٲ��ְ�
    PChar(IntToStr(Form1.Left)),'CALLAPI.INI');  // PChar�� Ÿ�� ĳ������ ���� 
  WritePrivateProfileString('Pos','Top',
    PChar(IntToStr(Form1.Left)),'CALLAPI.INI');
  WritePrivateProfileString('Size','Width',
    PChar(IntToStr(Form1.Width)),'CALLAPI.INI');
  WritePrivateProfileString('Size','Height',
    PChar(IntToStr(Form1.Height)),'CALLAPI.INI');
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  With Form1 do
  begin
    Left:= GetPrivateProfileInt('Pos','Left',100,'CALLAPI.INI');
    Top:= GetPrivateProfileInt('Pos','Top',100,'CALLAPI.INI');
    Width:= GetPrivateProfileInt('Size','Width',300,'CALLAPI.INI');
    Height:= GetPrivateProfileInt('Size','Height',250,'CALLAPI.INI');
  end;
end;

end.
