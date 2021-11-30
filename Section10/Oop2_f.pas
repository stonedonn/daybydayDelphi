unit Oop2_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TMyClass = class
    X,Y:Integer;
    Col:TColor;
    constructor Create(iX,iY:Integer;iCol:TColor);
    procedure Draw;
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

procedure TMyClass.Draw;
begin
  Form1.Canvas.Pixels[X,Y]:=Col;
end;

{������: �μ��� ���޹޾� �ʵ带 �ʱ�ȭ�Ѵ�}
constructor TMyClass.Create(iX,iY:Integer;iCol:TColor);
begin
  {��� Ŭ������ �����ڸ� ���� ȣ���ؾ� �Ѵ�}
  Inherited Create;
  X:=iX; {�ڽ��� �ʵ� �ʱ�ȭ}
  Y:=iY;
  Col:=iCol;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  MyObj:TMyClass;
begin
  {�����ڿ� ���� ������Ʈ�� �����ϸ鼭 ���ÿ� �ʵ带 �ʱ�ȭ�Ѵ�}
  MyObj:=TMyClass.Create(100,100,clBlack);
  With MyObj do
  begin
    Draw;
    Free;
  end;
end;

end.
