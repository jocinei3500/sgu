unit uEntradaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrEntradaProduto = class(TForm)
    Label1: TLabel;
    Label3: TLabel;
    edCod: TEdit;
    edProduto: TEdit;
    btOk: TButton;
    Label4: TLabel;
    edQuant: TEdit;
    Label2: TLabel;
    edData: TEdit;
    Button1: TButton;
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    procedure Registrar;
    procedure buscCod;
  public
    { Public declarations }
  end;

var
  frEntradaProduto: TfrEntradaProduto;

implementation

uses dados, usonproduto;

{$R *.dfm}

{ TfrEntradaProduto }

procedure TfrEntradaProduto.Registrar;
VAR
  lCod,lproduto,lQuant,lData:string;
  LquantProd:string;

begin
  lCod:=edCod.Text;
  lproduto:=edProduto.Text;
  lQuant:=edQuant.Text;
  ldata:=QuotedStr(eddata.Text);
  dbdados.qEntradaProd.Close;
  dbdados.qEntradaProd.SQL.Clear;
  dbdados.qEntradaProd.SQL.Add('INSERT INTO ENTRADA_PROD VALUES('+
  lCod +','+ lProduto +','+ lQuant + ','+ lData +')');
  dbdados.qEntradaProd.ExecSQL;

  dbdados.qEstoque.Close;
  dbdados.qEstoque.SQL.Clear;
  dbdados.qEstoque.SQL.Add('SELECT QUANT FROM ESTOQUE WHERE PRODUTO='+ lProduto );
  dbdados.qEstoque.Open;
  if dbdados.qEstoque.RecordCount>0 then
    begin
      lQuantProd:=dbdados.qEstoque.Recordset.Fields[0].Value;
      dbdados.qEstoque.Close;
      dbdados.qEstoque.SQL.Clear;
      dbdados.qEstoque.SQL.Add('UPDATE ESTOQUE SET QUANT ='+
      IntToStr(StrToInt(lQuantProd)+StrToInt(lQuant))+' where produto ='+ lProduto);
      dbdados.qEstoque.ExecSQL;
    end
  else
    begin
      dbdados.qEstoque.Close;
      dbdados.qEstoque.SQL.Clear;
      dbdados.qEstoque.SQL.Add('INSERT INTO ESTOQUE VALUES('+ lProduto+','+lQuant+')');
      dbdados.qEstoque.ExecSQL;
    end;

end;

procedure TfrEntradaProduto.btOkClick(Sender: TObject);
begin
registrar;
end;

procedure TfrEntradaProduto.buscCod;
  var
    lCod:integer;
begin
  dbdados.qEntradaProd.Close;
  dbdados.qEntradaProd.SQL.Clear;
  dbdados.qEntradaProd.SQL.Add('SELECT MAX(COD_ENTRADA) FROM ENTRADA_PROD');
  dbdados.qEntradaProd.Open;
    TRY
      lCod:=StrToInt(dbdados.qEntradaProd.Recordset.Fields[0].Value)+1;
      edCod.Text:=IntToStr(lCod);
    EXCEPT
      edCod.Text:='1';
    END;


end;

procedure TfrEntradaProduto.FormShow(Sender: TObject);
begin
  buscCod;
end;

procedure TfrEntradaProduto.Button1Click(Sender: TObject);
begin
  application.CreateForm(tfrpesqprod,frpesqprod);
  frpesqprod.Tag:=2;
  frpesqprod.ShowModal;
end;

end.
