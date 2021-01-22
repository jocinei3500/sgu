unit consumo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrConsumo = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    edCod: TEdit;
    edProduto: TEdit;
    btOk: TButton;
    Label4: TLabel;
    edQuant: TEdit;
    Label2: TLabel;
    edData: TEdit;
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
    procedure registrar;
  public
    { Public declarations }
  end;

var
  frConsumo: TfrConsumo;

implementation

uses dados;

{$R *.dfm}

{ TfrConsumo }

procedure TfrConsumo.registrar;
var
  lCod, lProduto, lQuant, lData:string;
begin
  lCod:=edCod.Text;
  lProduto:=QuotedStr(edProduto.Text);
  lQuant:=edQuant.Text;
  lData:=QuotedStr(edData.Text);
  dbdados.qSaida.Close;
  dbdados.qSaida.SQL.Clear;
  dbdados.qSaida.SQL.Add('INSERT INTO SAIDA_PRODUTO VALUES('+
  lCod +','+ lProduto+','+lQuant +','+lData+')');
  dbdados.qSaida.ExecSQL;



end;

procedure TfrConsumo.btOkClick(Sender: TObject);
begin
registrar;
end;

end.
