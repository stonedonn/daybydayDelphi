unit MyObj;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyClass=class {Ŭ������ ����}
    X,Y: Integer;  // �ʵ�
    Col:TColor;
    procedure Draw; // �޼ҵ�
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

procedure TMyClass.Draw; { �޼ҵ� ���� }
begin
  Form1.Canvas.Pixels[X,Y] := Col;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  MyObj:TMyClass; {������Ʈ ���� ����}
begin
  MyObj:= TMyClass.Create; { ������Ʈ ���� (Instance ����)}
  with MyObj do
  begin
    X:=100;
    Y:=100;
    Col:=clBlack;
    Draw; // �޼ҵ� ȣ��
    Free; // ������Ʈ �ı� (�Ҵ� �޸� ����)
  end;
end;

end.
