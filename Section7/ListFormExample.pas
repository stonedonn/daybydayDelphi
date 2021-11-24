unit ListFormExample;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TListForm = class(TForm)
    btnAdd: TButton;
    btnInsert: TButton;
    btnDelete: TButton;
    btnRead: TButton;
    ListBox1: TListBox;
    Edit1: TEdit;
    procedure btnInsertClick(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);
    procedure btnReadClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ListForm: TListForm;

implementation

{$R *.dfm}

procedure TListForm.btnInsertClick(Sender: TObject);
begin
  ListBox1.Items.Insert(ListBox1.ItemIndex,Edit1.Text);
end;

procedure TListForm.btnAddClick(Sender: TObject);
begin
  ListBox1.Items.Add(Edit1.Text);
  Edit1.Text:='';
end;

procedure TListForm.btnDeleteClick(Sender: TObject);
begin
  ListBox1.Items.Delete(ListBox1.ItemIndex);
end;

procedure TListForm.btnReadClick(Sender: TObject);
begin
  if ListBox1.ItemIndex=-1 then exit;
  Edit1.Text:=ListBox1.Items[ListBox1.ItemIndex];
end;

end.
