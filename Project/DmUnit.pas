unit DmUnit;

interface

uses
  SysUtils, Classes, DB, ADODB, frxClass, frxDBSet;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    SelectQuery1: TADOQuery;
    SelectQuery2: TADOQuery;
    InsertQuery1: TADOQuery;
    AutoIncField1: TAutoIncField;
    InsertQuery2: TADOQuery;
    AutoIncField2: TAutoIncField;
    SelectQuery1id: TAutoIncField;
    SelectQuery2id: TAutoIncField;
    UsersDataSource: TDataSource;
    AdminsDataSource: TDataSource;
    SelectQuery3: TADOQuery;
    SelectQuery4: TADOQuery;
    UpdateQuery3: TADOQuery;
    AutoIncField3: TAutoIncField;
    UpdateQuery4: TADOQuery;
    AutoIncField5: TAutoIncField;
    SelectQuery3id: TAutoIncField;
    SelectQuery3login: TWideStringField;
    SelectQuery3pwd: TWideStringField;
    SelectQuery3fio: TWideStringField;
    SelectQuery3del: TBooleanField;
    SelectQuery3balance: TIntegerField;
    SelectQuery4id: TAutoIncField;
    SelectQuery4login: TWideStringField;
    SelectQuery4pwd: TWideStringField;
    SelectQuery4fio: TWideStringField;
    SelectQuery4del: TBooleanField;
    SelectQuery5: TADOQuery;
    TricksDataSource: TDataSource;
    InsertQuery5: TADOQuery;
    UpdateDeletedQuery5: TADOQuery;
    SelectQuery5id: TAutoIncField;
    SelectQuery5tricks: TWideStringField;
    SelectQuery5price: TIntegerField;
    SelectQuery5count: TIntegerField;
    SelectQuery5photo: TWideStringField;
    SelectQuery5inf: TWideStringField;
    SelectQuery5delivery_price: TIntegerField;
    SelectQuery5del: TBooleanField;
    SelectQuery6: TADOQuery;
    DeliveryDataSource: TDataSource;
    InsertQuery6: TADOQuery;
    UpdateDeletedQuery6: TADOQuery;
    SelectQuery61: TADOQuery;
    DeliveryDataSource61: TDataSource;
    UpdateQuery6: TADOQuery;
    SelectQuery6id: TAutoIncField;
    SelectQuery6tricks_id: TIntegerField;
    SelectQuery6delivery_date: TDateTimeField;
    SelectQuery6delivery_price: TIntegerField;
    SelectQuery6delivery_status: TBooleanField;
    SelectQuery6country: TWideStringField;
    SelectQuery6city: TWideStringField;
    SelectQuery6adress: TWideStringField;
    SelectQuery6phone: TWideStringField;
    SelectQuery6count: TIntegerField;
    SelectQuery6user_id: TIntegerField;
    SelectQuery6del: TBooleanField;
    SelectQuery6photo: TWideStringField;
    SelectQuery61id: TAutoIncField;
    SelectQuery61tricks_id: TIntegerField;
    SelectQuery61delivery_date: TDateTimeField;
    SelectQuery61delivery_price: TIntegerField;
    SelectQuery61delivery_status: TBooleanField;
    SelectQuery61country: TWideStringField;
    SelectQuery61city: TWideStringField;
    SelectQuery61adress: TWideStringField;
    SelectQuery61phone: TWideStringField;
    SelectQuery61count: TIntegerField;
    SelectQuery61user_id: TIntegerField;
    SelectQuery61del: TBooleanField;
    SelectQuery61photo: TWideStringField;
    SelectQuery7: TADOQuery;
    OrdersDataSource: TDataSource;
    InsertQuery7: TADOQuery;
    UpdateDeletedQuery7: TADOQuery;
    DeleteQuery6: TADOQuery;
    InsertQuery66: TADOQuery;
    UpdateQueryBalance: TADOQuery;
    SelectQuery8: TADOQuery;
    CashDataSource: TDataSource;
    InsertQuery8: TADOQuery;
    SelectQuery8id: TAutoIncField;
    SelectQuery8order_id: TIntegerField;
    SelectQuery8cash: TIntegerField;
    SelectQuery8user_id: TIntegerField;
    SelectQuery8del: TBooleanField;
    SelectQuery7id: TAutoIncField;
    SelectQuery7tricks_id: TIntegerField;
    SelectQuery7price: TIntegerField;
    SelectQuery7delivery_date: TDateTimeField;
    SelectQuery7count: TIntegerField;
    SelectQuery7user_id: TIntegerField;
    SelectQuery7Del: TBooleanField;
    SelectQuery9: TADOQuery;
    VideoDataSource: TDataSource;
    InsertQuery9: TADOQuery;
    UpdateDeletedQuery8: TADOQuery;
    SelectQuery9id: TAutoIncField;
    SelectQuery9video: TWideStringField;
    SelectQuery9cost: TIntegerField;
    SelectQuery9inf: TWideStringField;
    SelectQuery9del: TBooleanField;
    SelectQuery10: TADOQuery;
    MyVideoDataSource: TDataSource;
    InsertQuery10: TADOQuery;
    SelectQuery10id: TAutoIncField;
    SelectQuery10video_id: TIntegerField;
    SelectQuery10video: TWideStringField;
    SelectQuery10inf: TWideStringField;
    SelectQuery10del: TBooleanField;
    ReportQuery: TADOQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    ReportQueryid: TAutoIncField;
    ReportQueryorder_id: TIntegerField;
    ReportQuerycash: TIntegerField;
    ReportQueryuser_id: TIntegerField;
    ReportQuerydel: TBooleanField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Login, LoginAdmin, fn, fv: String;
    id, idAdmin, FId, id_tricks, Fcost, Fcount, FDPrice, balance, ACOST, order_id, video_id, VIDEOCost: integer;

    procedure CheckLogin(Alogin, Apwd: string);
    procedure CheckLoginAdmin(Alogin, Apwd: string);

    procedure SaveInfoRegister(Alogin, Apwd, Afio: String);
    procedure SaveInfoRegisterAdmin(Alogin, Apwd, Afio: String);

    procedure InsertTricks(Atricks, Aphoto, Ainf: String; Aprice, ACount, Adelivery_price: Integer);

    procedure UpdateUsers(Alogin, Apwd, Afio: String; Abalance: Integer);
    procedure UpdateAdmins(Alogin, Apwd, Afio: String);

    procedure UpdateDeliveryStatus(Aid: Integer; Adelivery_status: Boolean);
    procedure UpdateBalance(Abalance: Integer);

    procedure InsertDelivery(Atricks_id, Adelivery_price, Acount, Auser_id: Integer; Adelivery_date: TDateTime; Adelivery_status: Boolean; Acountry, Acity, Aadress, Aphone: String);
    procedure InsertOrders(Atricks_id, Aprice, Auser_id, Acount: Integer; Adelivery_date: TDateTime);
    procedure InsertCash(Aorder_id, Acash, Auser_id: Integer);
    procedure InsertVideo(Acost: Integer; AVideo, Ainf: String);
    procedure InsertMyVideo(Avideo_id: Integer; AVideo, Ainf: String);

    procedure Del1(Aid: Integer);
    procedure Del2(Aid: Integer);
    procedure Del3(Aid: Integer);

    procedure RU;
    procedure RA;
    procedure RMT;
    procedure RD;
    procedure RD1;
    procedure RO;
    procedure RC;
    procedure RV;
    procedure RMV;



    

  end;

var
  DM: TDM;

implementation

{$R *.dfm}

{ TDM }

procedure TDM.CheckLogin(Alogin, Apwd: string);
begin
  with SelectQuery1 do
  try
    Close;
    Parameters.ParamByName('login').Value := Alogin;
    Parameters.ParamByName('pwd').Value := Apwd;
    Open;
    if RecordCount = 0 then login := ''
    else
    begin
      login := Alogin;
      id := SelectQuery1id.Value;
    end;
  finally
    Close;
  end;
end;

procedure TDM.CheckLoginAdmin(Alogin, Apwd: string);
begin
  with SelectQuery2 do
  try
    Close;
    Parameters.ParamByName('login').Value := Alogin;
    Parameters.ParamByName('pwd').Value := Apwd;
    Open;
    if RecordCount = 0 then login := ''
    else
    begin
      LoginAdmin := Alogin;
      idAdmin := SelectQuery2id.Value;
    end;
  finally
    Close;
  end;
end;

procedure TDM.SaveInfoRegister(Alogin, Apwd, Afio: String);
begin
  with InsertQuery1 do
  begin
    Close;
    Parameters.ParamByName('login').Value := Alogin;
    Parameters.ParamByName('pwd').Value := Apwd;
    Parameters.ParamByName('fio').Value := Afio;
    ExecSQL;
  end;
end;

procedure TDM.SaveInfoRegisterAdmin(Alogin, Apwd, Afio: String);
begin
  with InsertQuery2 do
  begin
    Close;
    Parameters.ParamByName('login').Value := Alogin;
    Parameters.ParamByName('pwd').Value := Apwd;
    Parameters.ParamByName('fio').Value := Afio;
    ExecSQL;
  end;
end;

procedure TDM.UpdateAdmins(Alogin, Apwd, Afio: String);
begin
  with UpdateQuery4 do
  begin
    Close;
    Parameters.ParamByName('id').Value := FId;
    Parameters.ParamByName('login').Value := Alogin;
    Parameters.ParamByName('pwd').Value := Apwd;
    Parameters.ParamByName('fio').Value := Afio;
    ExecSQL;
  end;
end;

procedure TDM.UpdateUsers(Alogin, Apwd, Afio: String; Abalance: Integer);
begin
  with UpdateQuery3 do
  begin
    Close;
    Parameters.ParamByName('id').Value := FId;
    Parameters.ParamByName('login').Value := Alogin;
    Parameters.ParamByName('pwd').Value := Apwd;
    Parameters.ParamByName('fio').Value := Afio;
    Parameters.ParamByName('balance').Value := Abalance;
    ExecSQL;
  end;
end;

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  ADOConnection1.Close;
  ADOConnection1.ConnectionString :=
     'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=DB5.mdb;Persist Security Info=False';
  ADOConnection1.Connected := true;
end;

procedure TDM.RA;
begin
  SelectQuery4.Close;
  SelectQuery4.Open;
end;

procedure TDM.RU;
begin
  SelectQuery3.Close;
  SelectQuery3.Open;
end;

procedure TDM.RMT;
begin
  SelectQuery5.Close;
  SelectQuery5.OPen;
end;

procedure TDM.InsertTricks(Atricks, Aphoto, Ainf: String; Aprice, ACount, Adelivery_price: Integer);
begin
  with InsertQuery5 do
  begin
    Close;
    Parameters.ParamByName('tricks').Value := Atricks;
    Parameters.ParamByName('photo').Value := Aphoto;
    Parameters.ParamByName('inf').Value := Ainf;
    Parameters.ParamByName('price').Value := Aprice;
    Parameters.ParamByName('count').Value := ACount;
    Parameters.ParamByName('delivery_price').Value := Adelivery_price;
    ExecSQL;
  end;
end;

procedure TDM.Del1(Aid: Integer);
begin
  with UpdateDeletedQuery5 do
  begin
    close;
    Parameters.ParamByName('id').Value := AId;
    Parameters.ParamByName('del').Value := true;
    ExecSQL
  end;
end;

procedure TDM.UpdateBalance(Abalance: Integer);
begin
  with UpdateQueryBalance do
  begin
    Close;
    Parameters.ParamByName('id').Value := id;
    Parameters.ParamByName('balance').Value := Abalance;
    ExecSQL;
  end;
end;

procedure TDM.UpdateDeliveryStatus(Aid: Integer; Adelivery_status: Boolean);
begin
  with UpdateQuery6 do
  begin
    Close;
    Parameters.ParamByName('id').Value := Aid;
    Parameters.ParamByName('delivery_status').Value := Adelivery_status;
    ExecSQL;
  end;
end;

procedure TDM.RD;
begin
  SelectQuery6.Close;
  SelectQuery6.OPen;
end;

procedure TDM.RD1;
begin
  SelectQuery61.Close;
  SelectQuery61.OPen;
end;

procedure TDM.InsertDelivery(Atricks_id, Adelivery_price, Acount, Auser_id: Integer; Adelivery_date: TDateTime; Adelivery_status: Boolean; Acountry, Acity, Aadress, Aphone: String);
begin
  with InsertQuery6 do
  begin
    Close;
    Parameters.ParamByName('tricks_id').Value := Atricks_id;
    Parameters.ParamByName('delivery_price').Value := Adelivery_price;
    Parameters.ParamByName('delivery_date').Value := Adelivery_date;
    Parameters.ParamByName('delivery_status').Value := Adelivery_status;
    Parameters.ParamByName('country').Value := Acountry;
    Parameters.ParamByName('city').Value := Acity;
    Parameters.ParamByName('adress').Value := Aadress;
    Parameters.ParamByName('phone').Value := Aphone;
    Parameters.ParamByName('count').Value := Acount;
    Parameters.ParamByName('user_id').Value := Auser_id;
    ExecSQL;
  end;
end;

procedure TDM.InsertOrders(Atricks_id, Aprice, Auser_id, Acount: Integer; Adelivery_date: TDateTime);
begin
  with InsertQuery7 do
  begin
    Close;
    Parameters.ParamByName('tricks_id').Value := Atricks_id;
    Parameters.ParamByName('price').Value := Aprice;
    Parameters.ParamByName('user_id').Value := Auser_id;
    Parameters.ParamByName('count').Value := Acount;
    Parameters.ParamByName('delivery_date').Value := Adelivery_date;
    ExecSQL;
  end;
end;

procedure TDM.Del2(Aid: Integer);
begin
  with UpdateDeletedQuery6 do
  begin
    close;
    Parameters.ParamByName('id').Value := AId;
    Parameters.ParamByName('del').Value := true;
    ExecSQL
  end;
end;

procedure TDM.RO;
begin
  SelectQuery7.Close;
  SelectQuery7.Open;
end;

procedure TDM.InsertCash(Aorder_id, Acash, Auser_id: Integer);
begin
  InsertQuery8.ExecSQL;
end;

procedure TDM.RC;
begin
  SelectQuery8.Close;
  SelectQuery8.OPen;
end;

procedure TDM.RV;
begin
  SelectQuery9.Close;
  SelectQuery9.Open;
end;

procedure TDM.InsertVideo(Acost: Integer; AVideo, Ainf: String);
begin
  with InsertQuery9 do
  begin
    Close;
    Parameters.ParamByName('cost').Value := Acost;
    Parameters.ParamByName('Video').Value := AVideo;
    Parameters.ParamByName('inf').Value := Ainf;
    ExecSQL;
  end;
end;

procedure TDM.Del3(Aid: Integer);
begin
  with UpdateDeletedQuery6 do
  begin
    close;
    Parameters.ParamByName('id').Value := AId;
    Parameters.ParamByName('del').Value := true;
    ExecSQL
  end;
end;

procedure TDM.RMV;
begin
  SelectQuery10.Close;
  SelectQuery10.Open;
end;

procedure TDM.InsertMyVideo(Avideo_id: Integer; AVideo, Ainf: String);
begin
  with InsertQuery10 do
  begin
    Close;
    Parameters.ParamByName('video_id').Value := Avideo_id;
    Parameters.ParamByName('Video').Value := AVideo;
    Parameters.ParamByName('inf').Value := Ainf;
    ExecSQL;
  end;
end;

end.
