unit uRaveRpt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RpCon, RpConDS, RpConBDE, RpBase, RpSystem, RpDefine, RpRave,
  DB, DBTables;

type
  TForm1 = class(TForm)
    qryCustomer: TQuery;
    Query2: TQuery;
    RvProject1: TRvProject;
    RvSystem1: TRvSystem;
    RvQueryConnection1: TRvQueryConnection;
    RvQueryConnection2: TRvQueryConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
