unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses DmUnit;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  if dm.Tag = 1 then
    dm.SaveInfoRegisterAdmin(Edit1.Text, Edit2.Text, Edit3.Text)
  else
    dm.SaveInfoRegister(Edit1.Text, Edit2.Text, Edit3.Text);
  Close;
end;

end.
