unit CheckListBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst;

type
  TForm1 = class(TForm)
    CheckListBox1: TCheckListBox;
    procedure CheckListBox1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.CheckListBox1Click(Sender: TObject);
begin
  if CheckListBox1.Checked[0] = TRUE then
    Form1.FormStyle := fsStayOnTop
  else
    Form1.FormStyle := fsNormal;

  if CHeckListBox1.Checked[2] = TRUE then
    Form1.BorderStyle := bsSingle
  else
    Form1.BorderStyle := bsSizeable;

  if CheckListBox1.Checked[1] = TRUE then
    Form1.Color := clRed
  else
    Form1.Color := clBtnFace;
end;

end.
