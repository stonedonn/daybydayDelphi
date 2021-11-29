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
  AlarmTime:= StrToTime(InputBox('�˶� �ð� �Է�',
    '�˶� ���� �ð��� �Է��Ͻʽÿ�',
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
  NowTime:=Time; {���� �ð��� �����Ͽ� ����Ѵ�.}
  Panel1.Caption:=TimeToStr(NowTime); {�ð� �񱳸� ���� ��Ҹ� �и��Ѵ�.}
  DecodeTime(NowTime,NH,NM,NSec,dummy);
  DecodeTime(AlarmTime,AH,AM,ASec,dummy); {��,��,�� ������ ���Ѵ�.}

  if (NH=AH) and (NM=AM) and (NSec=Asec) and AlarmOn Then
    begin
      MessageBeep(0);
      ShowMessage('��� �ð��Դϴ�.');
    end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  AlarmTime:=StrToTime('12:00:00');
  AlarmOn:=True;
  Panel1.Caption:=TimeToStr(Time);
end;

end.
