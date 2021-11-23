unit mainunit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, StdCtrls;

type
  TfrmMain = class(TForm)
    DBConn: TADOConnection;
    lblName: TLabel;
    lblCellular_phone: TLabel;
    lblTelephone: TLabel;
    lblZipcode: TLabel;
    lblAddress: TLabel;
    txtName: TEdit;
    txtCellular_phone: TEdit;
    txtTelephone: TEdit;
    txtZipcode: TEdit;
    txtAddress: TEdit;
    btnInsert: TButton;
    btnEdit: TButton;
    btnDelete: TButton;
    btnOK: TButton;
    sgdList: TStringGrid;
    btnExit: TButton;
    qry1: TADOQuery;
    cmd1: TADOCommand;
    txtSequence: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnInsertClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure sgdListSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure btnDeleteClick(Sender: TObject);
  private
    { Private declarations }
    procedure HeaderSetting();
    procedure LoadList();
    procedure DisabledTextField();
    procedure EnabledTextField();
    procedure DisabledButtons(mode : String);
    procedure EnabledButtons(mode : String);
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  current_mode : String;

implementation

{$R *.dfm}

procedure TfrmMain.DisabledButtons(mode : string);
begin
  btnInsert.Enabled := False;
  btnEdit.Enabled := False;
  btnDelete.Enabled := False;

  btnOK.Enabled := True;

end;

procedure TfrmMain.EnabledButtons(mode : string);
begin
  btnInsert.Enabled := True;
  btnEdit.Enabled := True;
  btnDelete.Enabled := True;

  btnOK.Enabled := False;

end;

procedure TfrmMain.DisabledTextField();
begin

    txtName.Enabled := False;
    txtCellular_phone.Enabled := False;
    txtTelephone.Enabled := False;
    txtZipcode.Enabled := False;
    txtAddress.Enabled := False;

end;

procedure TfrmMain.EnabledTextField();
begin

    txtName.Enabled := True;
    txtCellular_phone.Enabled := True;
    txtTelephone.Enabled := True;
    txtZipcode.Enabled := True;
    txtAddress.Enabled := True;

end;

procedure TfrmMain.HeaderSetting();
begin
    sgdList.ColCount := 7;
    sgdList.Cells[1,0] := '일련번호';
    sgdList.Cells[2,0] := '이름';
    sgdList.Cells[3,0] := '휴대전화';
    sgdList.Cells[4,0] := '전화';
    sgdList.Cells[5,0] := '우편번호';
    sgdList.Cells[6,0] := '주소';
end;

procedure TfrmMain.LoadList();
var
  i : Integer;
  record_count : Integer;
  sequence, name, cellular_phone, telephone, zipcode, address : String;
begin
    qry1.Open;

    record_count := qry1.RecordCount;

    if record_count = 0 then
      sgdList.RowCount := 2
    else
      sgdList.RowCount := record_count + 1;

    for i := 0 to record_count - 1 do
    begin
      sequence := qry1.FieldByName('sequence').AsString;
      name := qry1.FieldByName('name').AsString;
      cellular_phone := qry1.FieldByName('cellular_phone').AsString;
      telephone := qry1.FieldByName('telephone').AsString;
      zipcode := qry1.FieldByName('zipcode').AsString;
      address := qry1.FieldByName('address').AsString;

      sgdList.Cells[1, i + 1] := sequence;
      sgdList.Cells[2, i + 1] := name;
      sgdList.Cells[3, i + 1] := cellular_phone;
      sgdList.Cells[4, i + 1] := telephone;
      sgdList.Cells[5, i + 1] := zipcode;
      sgdList.Cells[6, i + 1] := address;

      //처음자료인 경우 Edit컨트롤에 자료채움
      if i = 0 then
      begin
        txtSequence.Text := sequence;
        txtName.Text := name;
        txtCellular_phone.Text := cellular_phone;
        txtTelephone.Text := telephone;
        txtZipcode.Text := zipcode;
        txtAddress.Text := address;
      end;

      qry1.Next;
    end;

    qry1.Close;

    //각 텍스트 필드 비활성화
    DisabledTextField();

    current_mode := 'LIST';

    EnabledButtons(current_mode);

    sgdList.Row := 1;

end;

procedure TfrmMain.FormShow(Sender: TObject);
begin
  try

    //DB접속
    DBConn.Open;

    //StringGrid 헤더 정의
    HeaderSetting();

    //등록자료 가져오기
    LoadList();

  except
    MessageDlg('DB서버에 접속할 수 없습니다.', mtError, [mbOK], 0);
    Application.Terminate;
  end;
end;

procedure TfrmMain.btnExitClick(Sender: TObject);
begin
  DBConn.Close;
  Application.Terminate;
end;

procedure TfrmMain.btnInsertClick(Sender: TObject);
begin
  //현재 모드 셋팅
  current_mode := 'INSERT';

  //버튼 비 활성화
  DisabledButtons(current_mode);

  EnabledTextField();

  //Edit control 초기화
  txtName.Text := '';
  txtCellular_phone.Text := '';
  txtTelephone.Text := '';
  txtZipcode.Text := '';
  txtAddress.Text := '';

  txtName.SetFocus;
end;

procedure TfrmMain.btnOKClick(Sender: TObject);
var
  tempSQL : string;
begin
  if current_mode = 'INSERT' then //입력모드
  begin

    tempSQL := 'insert into address_book (name, cellular_phone, telephone, zipcode, address, reg_datetime) values (';
    tempSQL := tempSQL + '''' + txtName.Text + ''',';
    tempSQL := tempSQL + '''' + txtCellular_phone.Text + ''',';
    tempSQL := tempSQL + '''' + txtTelephone.Text + ''',';
    tempSQL := tempSQL + '''' + txtZipcode.Text + ''',';
    tempSQL := tempSQL + '''' + txtAddress.Text + ''',';
    tempSQL := tempSQL + 'getdate())';

    cmd1.Connection := DBConn;

    cmd1.CommandType := cmdText;

    cmd1.CommandText := tempSQL;

    cmd1.Execute;

    LoadList();
  end
  else if current_mode = 'EDIT' then //수정모드
  begin
    tempSQL := 'update address_book set';
    tempSQL := tempSQL + ' name = ''' + txtName.Text + ''',';
    tempSQL := tempSQL + ' cellular_phone = ''' + txtCellular_phone.Text + ''',';
    tempSQL := tempSQL + ' telephone = ''' + txtTelephone.Text + ''',';
    tempSQL := tempSQL + ' zipcode = ''' + txtZipcode.Text + ''',';
    tempSQL := tempSQL + ' address = ''' + txtAddress.Text + '''';
    tempSQL := tempSQL + ' where sequence = ' + txtSequence.Text;

    cmd1.Connection := DBConn;

    cmd1.CommandType := cmdText;

    cmd1.CommandText := tempSQL;

    cmd1.Execute;

    LoadList();
  end;

end;

procedure TfrmMain.btnEditClick(Sender: TObject);
begin
  current_mode := 'EDIT';

  //버튼 비 활성화
  DisabledButtons(current_mode);

  //Edit 컨트롤을 활성화 시킨다
  EnabledTextField();

  txtName.SetFocus;
end;

procedure TfrmMain.sgdListSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
  txtSequence.Text := sgdList.Cells[1, ARow];
  txtName.Text := sgdList.Cells[2, ARow];
  txtCellular_phone.Text := sgdList.Cells[3, ARow];
  txtTelephone.Text := sgdList.Cells[4, ARow];
  txtZipcode.Text := sgdList.Cells[5, ARow];
  txtAddress.Text := sgdList.Cells[6, ARow];
end;

procedure TfrmMain.btnDeleteClick(Sender: TObject);
var
  tempSQL : string;
begin
  tempSQL := 'delete from address_book';
  tempSQL := tempSQL + ' where sequence = ' + txtSequence.Text;

  cmd1.Connection := DBConn;

  cmd1.CommandType := cmdText;

  cmd1.CommandText := tempSQL;

  cmd1.Execute;

  LoadList();

end;

end.
