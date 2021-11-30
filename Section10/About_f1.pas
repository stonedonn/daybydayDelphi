unit About_f1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, About_f2;

type
  TMainForm = class(TForm)
    btnAbout: TButton;
    procedure btnAboutClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.btnAboutClick(Sender: TObject);
begin
  AboutForm.ShowModal;
end;

end.
