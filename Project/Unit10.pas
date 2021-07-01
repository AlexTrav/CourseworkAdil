unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm10 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Button2: TButton;
    Button1: TButton;
    Edit5: TEdit;
    Edit6: TEdit;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    IdId: Integer;
  end;

var
  Form10: TForm10;

implementation

uses DmUnit, Unit11;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
  if form11.tag = 1 then
  begin
    dm.UpdateDeliveryStatus(IdId, CheckBox1.Checked);
    dm.RD1;
  end else
  begin
    dm.InsertDelivery(dm.id_tricks, dm.FDPrice, StrToInt(Edit5.Text), dm.id, StrToDate(Edit6.Text), False, Edit1.Text, Edit2.Text, Edit3.Text, Edit4.Text);
    dm.RD;
    dm.InsertOrders(dm.id_tricks, dm.Fcost, dm.id, dm.Fcount, StrToDate(Edit6.Text));
    dm.Ro;
  end;
  Close;
end;

end.
