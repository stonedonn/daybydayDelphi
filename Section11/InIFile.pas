unit InIFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IniFiles;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  POSSIZE:TIniFile;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  POSSIZE:=TIniFile.create('iniexa.ini');
  Form1.Left:=POSSIZE.ReadInteger('POS','Left',100);
  Form1.Top:=POSSIZE.ReadInteger('POS','Top',100);
  Form1.Width:=POSSIZE.ReadInteger('POS','Width',300);
  Form1.Height:=POSSIZE.ReadInteger('POS','Height',250);
  POSSIZE.Free;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  POSSIZE:=TIniFile.Create('iniexa.ini');
  POSSIZE.WriteInteger('POS','Left',Form1.Left);
  POSSIZE.WriteInteger('POS','Top',Form1.Top);
  POSSIZE.WriteInteger('POS','Width',Form1.Width);
  POSSIZE.WriteInteger('POS','Height',Form1.Height);
end;

end.
