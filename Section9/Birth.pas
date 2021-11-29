unit Birth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls;

type
  Tbirthcalc = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    nameEdit: TEdit;
    birthEdit: TEdit;
    todayEdit: TEdit;
    execalc: TButton;
    buthelp: TButton;
    butexit: TButton;
    Bevel1: TBevel;
    result: TLabel;
    procedure execalcClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure butexitClick(Sender: TObject);
    procedure buthelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  birthcalc: Tbirthcalc;
  birthday:Tdatetime;
  today,elapseday:Tdatetime;

implementation

{$R *.dfm}

procedure Tbirthcalc.execalcClick(Sender: TObject);
begin
  birthday:= StrToDate(birthEdit.Text);
  today:= StrToDate(todayEdit.Text);
  elapseday:= today-birthday;
  result.caption:='오늘은 태어난 지' + floattostr(elapseday)+
      '일 째입니다.';

end;

procedure Tbirthcalc.FormDestroy(Sender: TObject);
begin
  writeprivateprofilestring('INFO','NAME',
    PChar(nameedit.Text),'BIRTH.INI');
  writeprivateprofilestring('INFO','BIRTH',
    PChar(birthedit.Text),'BIRTH_INI');
end;

procedure Tbirthcalc.FormShow(Sender: TObject);
var
  pst:array [0..128] of char;
begin
 getprivateprofilestring('INFO','NAME','홍길동',
  pst,128,'BIRTH_INI');
 nameEdit.Text:= pst;

 getprivateprofilestring('INFO','BIRTH','78-8-1',
  pst,128,'BIRTH_INI');
  birthEdit.Text:=pst;
  todayEdit.text:=DateToStr(date);
  birthcalc.execalcClick(sender);
  todayedit.SetFocus;
end;

procedure Tbirthcalc.butexitClick(Sender: TObject);
begin
  halt;
end;

procedure Tbirthcalc.buthelpClick(Sender: TObject);
begin
  application.MessageBox('살아온 날을 계산해주는 프로그램입니다','도와주는척...',0);
end;

end.
