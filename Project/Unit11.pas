unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TForm11 = class(TForm)
    Image1: TImage;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses DmUnit, Unit8, Unit10;

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm11.Button2Click(Sender: TObject);
var
  Fid: integer;
begin
  Fid := dm.SelectQuery6Id.AsInteger;
  dm.Del2(Fid);
  dm.RD;
end;

procedure TForm11.DBGrid1CellClick(Column: TColumn);
var
  dir: String;
begin
  dm.RMt;
  dm.fn := Form8.DBGrid1.DataSource.DataSet.Fields[4].AsString;
  dir := ExtractFilePath(Application.ExeName)+'images\';
  if dm.fn <> '' then
  dm.fn := dir + dm.fn;
  Image1.Picture.LoadFromFile(dm.fn);
  dm.SelectQuery5.Close;
end;

procedure TForm11.DBGrid1DblClick(Sender: TObject);
begin
  if tag = 1 then
  begin
    Form10.CheckBox1.Visible := true;

    Form10.Edit1.ReadOnly := True;
    Form10.Edit2.ReadOnly := True;
    Form10.Edit3.ReadOnly := True;
    Form10.Edit4.ReadOnly := True;
    Form10.Edit5.ReadOnly := True;
    Form10.Edit6.ReadOnly := True;

    Form10.Edit1.Text := DBGrid1.DataSource.DataSet.Fields[5].AsString;
    Form10.Edit2.Text := DBGrid1.DataSource.DataSet.Fields[6].AsString;
    Form10.Edit3.Text := DBGrid1.DataSource.DataSet.Fields[7].AsString;
    Form10.Edit4.Text := DBGrid1.DataSource.DataSet.Fields[8].AsString;
    Form10.Edit5.Text := DBGrid1.DataSource.DataSet.Fields[2].AsString;
    Form10.Edit6.Text := DBGrid1.DataSource.DataSet.Fields[9].AsString;
    Form10.CheckBox1.Checked := DBGrid1.DataSource.DataSet.Fields[4].AsBoolean;

    Form10.Show;
  end;
end;

end.
