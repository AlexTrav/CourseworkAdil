unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TForm14 = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Button4: TButton;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses DmUnit, Unit15, Unit10, Unit16, DB;

{$R *.dfm}

procedure TForm14.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm14.Button4Click(Sender: TObject);
begin
  dm.SelectQuery9.Filtered := false;
  if Edit1.Text <> '' then
  begin
    dm.SelectQuery9.Filter := 'video like '+QuotedStr(Edit1.Text+'%');
    dm.SelectQuery9.Filtered := true;
  end;
end;

procedure TForm14.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Edit1.Text+Key <> '' then
  begin
    dm.SelectQuery9.Filtered := false;
    dm.SelectQuery9.Filter := 'video like '+QuotedStr(Edit1.Text+Key+'%');
    dm.SelectQuery9.Filtered := true;
  end;
end;

procedure TForm14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm.SelectQuery9.Filtered := false;
  dm.SelectQuery9.Filter := '';
end;

procedure TForm14.Button3Click(Sender: TObject);
var
  Fid: integer;
begin
  Fid := dm.SelectQuery9Id.AsInteger;
  dm.Del3(Fid);
  dm.RV;
end;

procedure TForm14.Button2Click(Sender: TObject);
begin
  Form15.Show;
end;

procedure TForm14.DBGrid1DblClick(Sender: TObject);
begin
  dm.fv := DBGrid1.DataSource.DataSet.Fields[1].AsString;
  dm.video_id := DM.SelectQuery9id.AsInteger;
  if form10.tag = 1 then
  begin
    Form16.Edit1.Text := IntTOStr(dm.Video_id);
    Form16.Edit3.Text := dm.fv;
    Form16.Edit2.Text := DBGrid1.DataSource.DataSet.Fields[3].AsString;
    Form16.Show;
  end;
end;

end.
