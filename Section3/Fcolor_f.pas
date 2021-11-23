unit Fcolor_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TColorForm = class(TForm)
    btnRed: TButton;
    btnBlue: TButton;
    btnGreen: TButton;
    btnGray: TButton;
    procedure btnRedClick(Sender: TObject);
    procedure btnBlueClick(Sender: TObject);
    procedure btnGreenClick(Sender: TObject);
    procedure btnGrayClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ColorForm: TColorForm;

implementation

{$R *.dfm}

procedure TColorForm.btnRedClick(Sender: TObject);
begin
  ColorForm.Color := clRed;
end;

procedure TColorForm.btnBlueClick(Sender: TObject);
begin
  ColorForm.Color := clBlue;
end;

procedure TColorForm.btnGreenClick(Sender: TObject);
begin
    ColorForm.Color := clGreen;
end;

procedure TColorForm.btnGrayClick(Sender: TObject);
begin
  ColorForm.Color := clGray;
end;

end.
