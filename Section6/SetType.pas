unit SetType;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
  TMoem = set of Char;
var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Moem:TMoem;
begin
  Moem:=['A','E','I','O','U','a','e','i','o','u'];
  if Edit1.Text[1] in Moem then
    Edit2.Text:='첫자가 모음입니다.'
  else
    Edit2.Text:='첫자가 자음입니다.'
end;

end.
