unit Editor2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, Clipbrd;

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
    procedure Cut1Click(Sender: TObject);
    procedure Copy1Click(Sender: TObject);
    procedure Paste1Click(Sender: TObject);
    procedure Delete1Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Cut1Click(Sender: TObject);
begin
  Memo1.CutToClipboard;
end;

procedure TForm1.Copy1Click(Sender: TObject);
begin
  Memo1.CopyToClipboard;
end;

procedure TForm1.Paste1Click(Sender: TObject);
begin
  Memo1.PasteFromClipboard;
end;

procedure TForm1.Delete1Click(Sender: TObject);
begin
  Memo1.ClearSelection;
end;

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

end.
