unit ToolBar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, ExtCtrls, ImgList, StdCtrls, ComCtrls, ToolWin;

type
  TForm1 = class(TForm)
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ComboBox1: TComboBox;
    ImageList1: TImageList;
    procedure ComboBox1Change(Sender: TObject);
    procedure ToolButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.Text = 'Red' then
    Form1.Color:= clRed;
  if ComboBox1.Text = 'Green' then
    Form1.Color:= clGreen;
  if ComboBox1.Text = 'Blue' then
    Form1.Color:= clBlue;
end;

procedure TForm1.ToolButton1Click(Sender: TObject);
begin
  ShowMessage('첫 번째 버튼을 눌렀습니다.');
end;

end.
