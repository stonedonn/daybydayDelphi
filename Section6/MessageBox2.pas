unit MessageBox2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Response: String;
begin

  // ����ڰ� � ��ư�� �������� �� �� ����
  Response:= InputBox('����', '����� �̸��� �Է��Ͻʽÿ�', '������');

  // ���ϰ��� True�̸� ����ڰ� �Է� �� ���̰� False�̸� �Է��� ����� ��
  // function InputQuery(const ACaption, Aprompt: string; var Value:
  //  string): Boolean
end;

end.
