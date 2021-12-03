unit MiniShell2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    BtnRun: TButton;
    BtnBrowse: TButton;
    OpenDialog1: TOpenDialog;
    procedure BtnRunClick(Sender: TObject);
    procedure BtnBrowseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.BtnRunClick(Sender: TObject);
begin
  WinExec(PChar(Edit1.Text), SW_SHOWNORMAL);
end;

procedure TForm1.BtnBrowseClick(Sender: TObject);
begin
  IF OpenDialog1.Execute then
    Edit1.Text:=OpenDialog1.FileName;
end;

end.
