unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses DmUnit, Unit3, Unit1, Unit8, Unit11, Unit14;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Dm.CheckLoginAdmin(Edit1.Text, Edit2.Text);
  if dm.LoginAdmin = '' then
  begin
    ShowMessage('Неверный логин или пароль');
    ModalResult := mrCancel;
  end else
  begin
    Form11.tag := 1;
    Form3.Show;
    Visible := False;
    Form3.N3.Visible := True;
    Form3.N5.Visible := True;
    Form3.N12.Visible := True;
    Form3.Button5.Enabled := True;
    Form8.Button2.Visible := True;
    Form8.Button3.Visible := True;
    Form14.Button2.Visible := True;
    Form14.Button3.Visible := True;
  end;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Form1.Visible := True;
end;

end.
