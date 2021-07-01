unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button3: TButton;
    Edit4: TEdit;
    Edit5: TEdit;
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
  Form9: TForm9;

implementation

uses DmUnit;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm9.Button3Click(Sender: TObject);
var
  dir, src, dest: String;
begin
  dir := ExtractFilePath(Application.ExeName)+'images\';
  if OpenDialog1.Execute then
  begin
    dm.RMt;
    src := OpenDialog1.FileName;
    dm.fn := ExtractFileName(src);
    dest := dir + dm.fn;
    CopyFile(PAnsiChar(src),PAnsiChar(dest), false);
    Image1.Picture.LoadFromFile(dest);
    Dm.SelectQuery5.Close;
  end;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
  dm.InsertTricks(Edit1.Text, dm.fn, Edit4.Text, StrToInt(edit2.Text), StrToInt(EDit3.Text), StrToInt(EDit5.Text));
  dm.RMt;
  Close;
end;

end.
