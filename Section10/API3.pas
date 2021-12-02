unit API3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
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

{ �׷��� ���α׷��� ���, Ư���� ���� ��忡���� ���ư��� ���α׷�
  ex) ������ ��� 256���� ���, �׷��� ���� ���α׷��� Ʈ�� �÷����...}


procedure TForm1.Button1Click(Sender: TObject);
var
  t:integer;
begin
  t:=GetDeviceCaps(Canvas.Handle,HORZSIZE);
  Memo1.Lines[0]:='Horz Size='+IntToStr(t);
  T:=GetDeviceCaps(Canvas.Handle,VERTSIZE);
  Memo1.Lines[1]:='Vert Size='+IntToStr(t);
  t:=GetDeviceCaps(Canvas.Handle,HORZRES);
  Memo1.Lines[2]:='Horz Res='+IntToStr(t);
  t:=GetDeviceCaps(Canvas.Handle,VERTRES);
  Memo1.Lines[3]:='Vert Res='+IntToStr(t);
  t:=GetDeviceCaps(Canvas.Handle,COLORRES);
  Memo1.Lines[4]:='Color Res='+IntToStr(t);
  t:=GetDeviceCaps(Canvas.Handle,BITSPIXEL);
  Memo1.Lines[5]:='Bit Per Pixel='+IntToStr(t);
  t:=GetDeviceCaps(Canvas.Handle,PLANES);
  Memo1.Lines[6]:='Planes='+IntToStr(t);
  t:=GetDeviceCaps(Canvas.Handle,NUMCOLORS);
  Memo1.Lines[7]:='Num Colors='+IntToStr(t);
  t:=GetDeviceCaps(Canvas.Handle,SIZEPALETTE);
  Memo1.Lines[8]:='Size Palette='+IntToStr(t);
end;

end.
 