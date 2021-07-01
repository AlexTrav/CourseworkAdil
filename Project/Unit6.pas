unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses DmUnit;

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  if tag = 1 then
  begin
    dm.FId := dm.SelectQuery4id.AsInteger;
    dm.UpdateAdmins(Edit1.Text, Edit2.Text, Edit3.Text);
    dm.RA;
  end else
  begin
    dm.FId := dm.SelectQuery3id.AsInteger;
    dm.UpdateUsers(Edit1.Text, Edit2.Text, Edit3.Text, StrToInt(Edit4.text));
    dm.RU;
  end;
  Close;
end;

end.
