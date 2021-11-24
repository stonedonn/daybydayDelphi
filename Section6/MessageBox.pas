unit MessageBox;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    btnMessage: TButton;
    procedure btnMessageClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btnMessageClick(Sender: TObject);
begin
  //ShowMessage('밥 먹었니? 안먹었으면 밥먹고 와서 하는게 어때' + #13 +
  //            '두 줄 출력 가능!');
  MessageDlg('파일을 열 수 없습니다.',
            mtError, [mbOk,mbCancel, mbHelp],0);

  {if MessageDlg('파일을 열 수 없습니다.',
            mtError, [mbOk,mbCancel, mbHelp],0) = mrOk
    then 게임 계속 처리
    else 게임 끝 처리;
  }
end;

end.
