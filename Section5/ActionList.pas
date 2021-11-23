unit ActionList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ActnList, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    Menu1: TMenuItem;
    Item1: TMenuItem;
    Button1: TButton;
    ActionList1: TActionList;
    ShowMsg: TAction;
    procedure ShowMsgExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ShowMsgExecute(Sender: TObject);
begin
  ShowMessage('명령이 실행되었습니다,');
end;



end.
