program ListFormExampleProject;

uses
  Forms,
  ListFormExample in 'ListFormExample.pas' {ListForm};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TListForm, ListForm);
  Application.Run;
end.
