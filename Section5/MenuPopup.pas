unit MenuPopup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    Green1: TMenuItem;
    Green2: TMenuItem;
    Blue1: TMenuItem;
    Kim1: TMenuItem;
    Lee1: TMenuItem;
    Park1: TMenuItem;
    procedure Red1Click(Sender: TObject);
    procedure Green1Click(Sender: TObject);
    procedure Blue1Click(Sender: TObject);
    procedure Kim1Click(Sender: TObject);
    procedure Lee1Click(Sender: TObject);
    procedure Park1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.Red1Click(Sender: TObject);
begin
  Form1.Color := clRed;
end;

procedure TForm1.Green1Click(Sender: TObject);
begin
  Form1.Color := clGreen;
end;

procedure TForm1.Blue1Click(Sender: TObject);
begin
  Form1.Color := clBlue;
end;

procedure TForm1.Kim1Click(Sender: TObject);
begin
  Edit1.Text := 'Kim';
end;

procedure TForm1.Lee1Click(Sender: TObject);
begin
  Edit1.Text := 'Lee';
end;

procedure TForm1.Park1Click(Sender: TObject);
begin
  Edit1.Text := 'Park';
end;



end.
