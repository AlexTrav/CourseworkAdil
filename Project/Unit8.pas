unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Image1: TImage;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Button4: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Button4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses DmUnit, Unit9, Unit10;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm8.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Edit1.Text+Key <> '' then
  begin
    dm.SelectQuery5.Filtered := false;
    dm.SelectQuery5.Filter := 'tricks like '+QuotedStr(Edit1.Text+Key+'%');
    dm.SelectQuery5.Filtered := true;
  end;
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
  dm.SelectQuery5.Filtered := false;
  if Edit1.Text <> '' then
  begin
    dm.SelectQuery5.Filter := 'Tricks like '+QuotedStr(Edit1.Text+'%');
    dm.SelectQuery5.Filtered := true;
  end;
end;

procedure TForm8.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.SelectQuery5.Filtered := false;
  dm.SelectQuery5.Filter := '';
end;

procedure TForm8.Button3Click(Sender: TObject);
var
  Fid: integer;
begin
  Fid := dm.SelectQuery5Id.AsInteger;
  dm.Del1(Fid);
  dm.RMt;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
  Form9.Show;
end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
var
  dir: String;
begin
  dm.fn := DBGrid1.DataSource.DataSet.Fields[4].AsString;
  dir := ExtractFilePath(Application.ExeName)+'images\';
  if dm.fn <> '' then
  dm.fn := dir + dm.fn;
  Image1.Picture.LoadFromFile(dm.fn);
end;

procedure TForm8.DBGrid1DblClick(Sender: TObject);
begin
  dm.Fcount := DBGrid1.DataSource.DataSet.Fields[3].AsInteger;
  dm.FDPrice := DBGrid1.DataSource.DataSet.Fields[6].AsInteger;
  dm.fcost := DBGrid1.DataSource.DataSet.Fields[2].AsInteger;
  dm.id_tricks := dm.SelectQuery5id.AsInteger;
  if form10.tag = 1 then
    Form10.Show;
end;

end.
