unit Fruit_f;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    lFruit: TLabel;
    btnApple: TButton;
    btnOrange: TButton;
    procedure btnAppleClick(Sender: TObject);
    procedure btnOrangeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnAppleClick(Sender: TObject);
begin
  lFruit.Caption := 'Apple';
end;

procedure TForm1.btnOrangeClick(Sender: TObject);
begin
  lFruit.Caption := 'Orange';
end;

end.
