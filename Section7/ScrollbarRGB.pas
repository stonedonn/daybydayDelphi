unit ScrollbarRGB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TcolorForm = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RedBar: TScrollBar;
    GreenBar: TScrollBar;
    BlueBar: TScrollBar;
    redEdit: TEdit;
    greenEdit: TEdit;
    blueEdit: TEdit;
    procedure RedBarChange(Sender: TObject);
    procedure GreenBarChange(Sender: TObject);
    procedure BlueBarChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  colorForm: TcolorForm;

implementation

{$R *.dfm}
{ 색상 값은 32비트의 길이를 가지며 하위 8비트에서부터 빨강, 초록, 파랑 }
procedure changecolor;
begin
  ColorForm.Color:= ColorForm.RedBar.Position+
                    ColorForm.GreenBar.Position*$100+
                    ColorForm.BlueBar.Position*$10000;
end;
procedure TcolorForm.RedBarChange(Sender: TObject);
begin
  RedEdit.Text:=IntToStr(RedBar.Position);
  ChangeColor;
end;

procedure TcolorForm.GreenBarChange(Sender: TObject);
begin
  GreenEdit.Text:= IntToStr(GreenBar.Position);
  ChangeColor;
end;

procedure TcolorForm.BlueBarChange(Sender: TObject);
begin
  BlueEdit.Text:= IntToStr(BlueBar.Position);
  ChangeColor;
end;

procedure TcolorForm.FormCreate(Sender: TObject);
begin
  RedBar.Position:=255;
  GreenBar.Position:=255;
  BlueBar.Position:=255;
  RedEdit.Text:='255';
  GreenEdit.Text:='255';
  BlueEdit.Text:='255';
end;

end.
