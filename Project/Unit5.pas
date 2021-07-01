unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit6;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm5.DBGrid1DblClick(Sender: TObject);
begin
  if Form6.Tag = 1 then
  begin
    Form6.Caption := 'Редактирование сотрудника';
    Form6.Label4.Visible := False;
    Form6.Edit4.Visible := False;
    Form6.Edit1.ReadOnly := True;
    Form6.Edit1.Text := DBGrid1.DataSource.DataSet.Fields[1].AsString;
    Form6.Edit2.Text := DBGrid1.DataSource.DataSet.Fields[2].AsString;
    Form6.Edit3.Text := DBGrid1.DataSource.DataSet.Fields[3].AsString;
  end else
  begin
    Form6.Caption := 'Редактирование пользователя';
    Form6.Label4.Visible := True;
    Form6.Edit4.Visible := True;
    Form6.Edit1.ReadOnly := True;
    Form6.Edit1.Text := DBGrid1.DataSource.DataSet.Fields[1].AsString;
    Form6.Edit2.Text := DBGrid1.DataSource.DataSet.Fields[2].AsString;
    Form6.Edit3.Text := DBGrid1.DataSource.DataSet.Fields[3].AsString;
    Form6.Edit4.Text := DBGrid1.DataSource.DataSet.Fields[5].AsString;
  end;
  Form6.Show;
end;

end.
