unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, jpeg, ExtCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N3: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N2: TMenuItem;
    N5: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N6: TMenuItem;
    N10: TMenuItem;
    Image1: TImage;
    Button1: TButton;
    Button4: TButton;
    Button3: TButton;
    Button2: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses DmUnit, Unit4, Unit5, Unit6, Unit7, Unit8, Unit11, Unit10, Unit12,
  Unit13, Unit14, Unit17;

{$R *.dfm}

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TForm3.N2Click(Sender: TObject);
begin
  Close;
end;

procedure TForm3.N3Click(Sender: TObject);
begin
  dm.tag := 1;
  form4.Show;
  form4.Button2.Caption := 'Сохранить';
  form4.Caption := 'Регистрация сотрудника';
end;

procedure TForm3.N8Click(Sender: TObject);
begin
  Form5.Caption := 'Таблица пользователей';
  Dm.Ru;
  Form5.DBGrid1.DataSource := Dm.UsersDataSource;
  Form6.Tag := 0;
  Form5.Show;
end;

procedure TForm3.N7Click(Sender: TObject);
begin
  Form5.Caption := 'Таблица сотрудников';
  Dm.RA;
  Form5.DBGrid1.DataSource := Dm.AdminsDataSource;
  Form6.Tag := 1;
  Form5.Show;
end;

procedure TForm3.N10Click(Sender: TObject);
begin
  Form7.Show;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  dm.RMt;
  Form8.Show;
end;

procedure TForm3.N11Click(Sender: TObject);
begin
  ShowMessage(IntToStr(dm.balance));
end;

procedure TForm3.Button6Click(Sender: TObject);
begin
  if Form11.Tag = 1 then
  begin
    Form11.DBGrid1.DataSource := dm.DeliveryDataSource61;
    dm.RD1;
    Form10.IdId := dm.SelectQuery61Id.AsInteger;
  end else
  begin
    dm.SelectQuery6.Close;
    Dm.SelectQuery6.Parameters.ParamByName('user_id').Value := dm.id;
    dm.RD;
  end;
  Form11.show;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  dm.SelectQuery7.Close;
  dm.SelectQuery7.Parameters.ParamByName('user_id').Value := dm.id;
  dm.RO;
  dm.order_id := Dm.SelectQuery7id.AsInteger;
  Form12.SHow;
end;

procedure TForm3.Button5Click(Sender: TObject);
begin
  dm.RC;
  Form13.Show;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
  dm.RV;
  Form14.Show;
end;

procedure TForm3.Button4Click(Sender: TObject);
begin
  dm.RMV;
  Form17.Show;
end;

procedure TForm3.N12Click(Sender: TObject);
begin
  DM.ReportQuery.Close;
  DM.ReportQuery.Open;

  Dm.frxReport1.ShowReport;
end;

end.
