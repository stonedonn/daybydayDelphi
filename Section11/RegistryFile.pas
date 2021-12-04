unit RegistryFile;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry; {레지스트리 유닛}

type
  TForm1 = class(TForm)
    Button1: TButton;
    CheckBox1: TCheckBox;
    Edit1: TEdit;
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
  POSSIZE:TRegistryIniFile;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  POSSIZE:=TRegistryIniFile.Create('Software\SaeromSoft\Regi');
  Form1.Left:=POSSIZE.ReadInteger('POS','Left',100);
  Form1.Top:=POSSIZE.ReadInteger('POS','Top',100);
  Form1.Width:=POSSIZE.ReadInteger('POS','Width',400);
  Form1.Height:=POSSIZE.ReadInteger('POS','Height',250);

  CheckBox1.Checked:=POSSIZE.ReadBool('OPTION','Check',False);
  Edit1.Text:=POSSIZE.ReadString('OPTION', 'Edit', 'Nothing');
  POSSIZE.Free;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  POSSIZE:=TRegistryIniFile.Create('Software\SaeromSoft\Regi');
  POSSIZE.WriteInteger('POS','Left',Form1.Left);
  POSSIZE.WriteInteger('POS','Top',Form1.Top);
  POSSIZE.WriteInteger('POS','Width',Form1.Width);
  POSSIZE.WriteInteger('POS','Height',Form1.Height);

  POSSIZE.WriteBool('OPTION', 'Check', CheckBox1.Checked);
  POSSIZE.WriteString('OPTION', 'Edit', Edit1.Text);
  POSSIZE.Free;
end;

end.
