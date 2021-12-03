unit MiniShell;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FileCtrl, StdCtrls;

type
  TShellForm = class(TForm)
    DriveComboBox1: TDriveComboBox;
    FilterComboBox1: TFilterComboBox;
    DirectoryListBox1: TDirectoryListBox;
    FileListBox1: TFileListBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    BtnRun: TButton;
    BtnCancel: TButton;
    procedure FileListBox1DblClick(Sender: TObject);
    procedure BtnCancelClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ShellForm: TShellForm;

implementation

{$R *.dfm}



procedure TShellForm.FileListBox1DblClick(Sender: TObject);
begin
  WinExec(PChar(FileListBox1.FileName),SW_SHOWNORMAL);
end;

procedure TShellForm.BtnCancelClick(Sender: TObject);
begin
  Close;
end;

end.
