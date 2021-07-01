unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses DmUnit, Unit3, Unit4, Unit2, Unit10, Unit11;

{$R *.dfm}

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Dm.checkLogin(Edit1.Text, Edit2.Text);
  if dm.login = '' then
  begin
    ShowMessage('Неверный логин или пароль');
    ModalResult := mrCancel;
  end else
  begin
    Form11.tag := 0;
      dm.RU;
      dm.SelectQuery3.Filtered :=false;
      dm.SelectQuery3.Filter := 'id='+IntToStr(dm.id);
      dm.SelectQuery3.Filtered :=true;
      dm.balance := dm.SelectQuery3balance.AsInteger;
      dm.SelectQuery3.Filtered :=false;
      dm.SelectQuery3.Filter := '';
      dm.SelectQuery3.Close;
    Form10.Tag := 1;
    Form3.N11.Enabled := True;
    Form3.Button3.Enabled := True;
    Form3.Button4.Enabled := True;
    Visible := False;
    Form3.Show;
  end;
  dm.SelectQuery1.Close;
  dm.SelectQuery1.Open;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form3.tag := 0;
  dm.tag := 0;
  Form4.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  Form2.Show;
  Visible := False;
end;

end.
