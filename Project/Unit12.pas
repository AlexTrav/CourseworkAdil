unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm12 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

uses DmUnit;

{$R *.dfm}

procedure TForm12.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
  dm.RO;
  dm.ACOST := 0;
  DM.SelectQuery7.First;
  while not DM.SelectQuery7.Eof do
  begin
    dm.ACOST := dm.ACOST + dm.SelectQuery7price.AsInteger;
    DM.SelectQuery7.Next;
  end;

  if dm.balance < dm.ACOST then
    ShowMessage('На вашем счету недостаточно средств, обратитесь к админу')
  else begin
    ShowMessage('Спасибо за оплату услуг,' + ' цена заказа = ' + inttostr(dm.ACOST));

    dm.balance := dm.balance - dm.ACOST;
    dm.UpdateBalance(dm.balance);

    dm.InsertQuery66.ExecSQL;                                                                            

    dm.InsertCash(dm.order_id, dm.ACOST, dm.id);
    dm.RC;

    dm.DeleteQuery6.Parameters.ParamByName('user_id').Value := dm.id;
    dm.DeleteQuery6.ExecSQL;
    dm.RO;
  end;
end;

end.
