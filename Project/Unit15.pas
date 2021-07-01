unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm15 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

uses DmUnit;

{$R *.dfm}

procedure TForm15.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm15.Button3Click(Sender: TObject);
var
  dir, src, dest: String;
begin
  dir := ExtractFilePath(Application.ExeName)+'video\';
  if OpenDialog1.Execute then
  begin
    dm.RV;
    src := OpenDialog1.FileName;
    dm.fv := ExtractFileName(src);
    dest := dir + dm.fv;
    CopyFile(PAnsiChar(src),PAnsiChar(dest), false);
    Dm.SelectQuery5.Close;
  end;
end;

procedure TForm15.Button2Click(Sender: TObject);
begin
  dm.InsertVideo(StrToint(Edit2.Text), dm.fv, edit1.text);
  dm.RV;
  Close;
end;

end.
