unit Unit17;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ShellAPI;

type
  TForm17 = class(TForm)
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
  Form17: TForm17;

implementation

uses DmUnit, Unit18;

{$R *.dfm}

procedure TForm17.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm17.DBGrid1DblClick(Sender: TObject);
var
  dir, Ffv: String;
begin
  Dir := ExtractFilePath(Application.ExeName)+'video\';
  Ffv := DBGrid1.DataSource.DataSet.Fields[2].AsString;
  Ffv := dir + Ffv;
  ShellExecute(Handle, 'open', PChar(Ffv), nil, nil ,SW_SHOWNORMAL);
end;

end.
