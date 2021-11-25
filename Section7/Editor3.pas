unit Editor3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Clipbrd, ActnList, ImgList, ComCtrls, ToolWin;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    Exit1: TMenuItem;
    N2: TMenuItem;
    SaveAs1: TMenuItem;
    Save1: TMenuItem;
    Open1: TMenuItem;
    New1: TMenuItem;
    Edit1: TMenuItem;
    N4: TMenuItem;
    Delete1: TMenuItem;
    Paste1: TMenuItem;
    Copy1: TMenuItem;
    Cut1: TMenuItem;
    Memo1: TMemo;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Cut: TAction;
    Copy: TAction;
    Paste: TAction;
    Delete: TAction;
    ShowToolbar1: TMenuItem;
    procedure Edit1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure CutExecute(Sender: TObject);
    procedure CopyExecute(Sender: TObject);
    procedure PasteExecute(Sender: TObject);
    procedure DeleteExecute(Sender: TObject);
    procedure UpdateUI(Sender: TObject);
    procedure ShowToolbar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}





procedure TForm1.Edit1Click(Sender: TObject);
begin
  Paste1.Enabled := Clipboard.HasFormat(CF_TEXT);
  if Memo1.SelLength=0 then
    begin
      Cut1.Enabled := False;
      Copy1.Enabled := False;
      Delete1.Enabled := False;
    end
  else
    begin
    Cut1.Enabled := True;
    Copy1.Enabled := True;
    Delete1.Enabled := True;
  end
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close;  // Æû ´ÝÀ½
end;



procedure TForm1.CutExecute(Sender: TObject);
begin
  Memo1.CutToClipboard;
end;

procedure TForm1.CopyExecute(Sender: TObject);
begin
  Memo1.CopyToClipboard;
end;

procedure TForm1.PasteExecute(Sender: TObject);
begin
  Memo1.PasteFromClipboard;
end;

procedure TForm1.DeleteExecute(Sender: TObject);
begin
  Memo1.ClearSelection;
end;



procedure TForm1.UpdateUI(Sender: TObject);
begin
  Paste.Enabled:= Clipboard.HasFormat(CF_TEXT);
  if Memo1.SelLength=0 then
    begin
    Cut.Enabled:= False;
    Copy.Enabled:= False;
    Delete.Enabled:= False;
    end
  else
  begin
    Cut.Enabled:= True;
    Copy.Enabled:= True;
    Delete.Enabled:= True;
  end
end;

procedure TForm1.ShowToolbar1Click(Sender: TObject);
begin
  if ShowToolbar1.Checked = False then
  begin
    ShowToolbar1.Checked:= True;
    ToolBar1.Show;
  end
  else
  begin
    ShowToolbar1.Checked:= False;
    ToolBar1.Hide;
  end;
end;

end.
