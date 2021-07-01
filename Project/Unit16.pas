unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm16 = class(TForm)
    Button2: TButton;
    Button1: TButton;
    Label4: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Edit3: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

uses DmUnit;

{$R *.dfm}

procedure TForm16.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm16.Button2Click(Sender: TObject);
begin
  dm.RV;
  dm.VIDEOCost := 0;
  DM.SelectQuery9.First;
  while not DM.SelectQuery9.Eof do
  begin
    dm.VIDEOCost := dm.VIDEOCost + dm.SelectQuery9cost.AsInteger;
    DM.SelectQuery9.Next;
  end;
  if dm.balance < dm.VIDEOCost then
    ShowMessage('На вашем счету недостаточно средств, обратитесь к админу')
  else begin
    ShowMessage('Спасибо за оплату услуг,' + ' цена заказа = ' + inttostr(dm.VIDEOCost));

    dm.balance := dm.balance - dm.VIDEOCost;
    dm.UpdateBalance(dm.balance);
    dm.RV;

    DM.InsertMyVideo(dm.video_id, DM.fv, Edit2.Text);
    Dm.RMV;

    Close;
  end;
end;

end.
