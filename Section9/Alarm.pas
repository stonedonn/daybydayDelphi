unit Alarm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  AlarmTime: TDateTime;
  AlarmOn: Boolean;
implementation

{$R *.dfm}



procedure TForm1.Button1Click(Sender: TObject);
begin
  AlarmTime:= StrToTime(InputBox('알람 시간 입력',
    '알람 설정 시간을 입력하십시오',
    TimeToStr(AlarmTime)));
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
  AlarmOn:= True;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
  AlarmOn:=False;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  NowTime:TDateTime;
  NH,NM,NSec:Word;
  AH,AM,ASec:Word;
  dummy:Word;
begin
  NowTime:=Time; {현재 시간을 조사하여 출력한다.}
  Panel1.Caption:=TimeToStr(NowTime); {시간 비교를 위해 요소를 분리한다.}
  DecodeTime(NowTime,NH,NM,NSec,dummy);
  DecodeTime(AlarmTime,AH,AM,ASec,dummy); {시,분,초 까지만 비교한다.}

  if (NH=AH) and (NM=AM) and (NSec=Asec) and AlarmOn Then
    begin
      MessageBeep(0);
      ShowMessage('약속 시간입니다.');
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AlarmTime:=StrToTime('12:00:00');
  AlarmOn:=True;
  Panel1.Caption:=TimeToStr(Time);
end;

end.
