unit uCadProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, DBCtrls;

type
  TfrcadProduto = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edCod: TEdit;
    edProduto: TEdit;
    edCodSerie: TEdit;
    Label4: TLabel;
    edUnidade: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edValUnit: TEdit;
    gbmain: TGroupBox;
    gbdadosCad: TGroupBox;
    GroupBox1: TGroupBox;
    DBGrid2: TDBGrid;
    gbControles: TGroupBox;
    btnRetornar: TBitBtn;
    btnOK: TBitBtn;
    BitBtn1: TBitBtn;
    dblMarca: TDBLookupComboBox;
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure btnRetornarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure cadastrar;
    procedure buscCod;
    procedure limpar;
    procedure buscProdutos;
    procedure busccategoria;
  public
    { Public declarations }
  end;

var
  frcadProduto: TfrcadProduto;

implementation

uses dados;

{$R *.dfm}

{ TfrcadProduto }

procedure TfrcadProduto.cadastrar;
var
  lCod, lProduto,lMarca, lCodSerie, lUnidade, lValUnit:string;
begin
  lCod:=edCod.Text;
  lProduto:=QuotedStr(edProduto.Text);
  lMarca:=QuotedStr(dblMarca.KeyValue);
  lCodSerie:=edCodSerie.Text;
  lUnidade:=QuotedStr(edUnidade.Text);
  lValUnit:=QuotedStr(edValUnit.Text);
  dbdados.qProduto.Close;
  dbdados.qProduto.SQL.Clear;
  dbdados.qProduto.SQL.Add('INSERT INTO PRODUTO VALUES('+ lCod+','+ lProduto +','+
  lMarca+','+ lCodserie+','+ lUnidade+','+ lValUnit+')');
  dbdados.qProduto.ExecSQL;

  if dbdados.qProduto.RowsAffected>0 then
    begin
      showmessage('Cadastro realizado com sucesso');
      limpar;
      buscProdutos;
    end;

end;

procedure TfrcadProduto.btOkClick(Sender: TObject);
begin
  cadastrar;
end;

procedure TfrcadProduto.buscCod;
var
  lCod:integer;
begin

  dbdados.qProduto.Close;
  dbdados.qProduto.SQL.Clear;
  dbdados.qProduto.SQL.Add('select max(cod_prod) from produto');
  dbdados.qProduto.Open;
  if dbdados.qProduto.RecordCount>0 then
    begin
      lCod:=StrToInt(dbdados.qProduto.Recordset.Fields[0].Value)+1;
      edCod.Text:=IntToStr(lCod);
    end
  else
    edCod.Text:='1';

end;

procedure TfrcadProduto.FormShow(Sender: TObject);
begin
  buscCod;
  buscProdutos;
  //posiciona
  frCadProduto.Top:=160;
  frcadproduto.Left:=10;
  busccategoria;
end;

procedure TfrcadProduto.limpar;
begin
  edCod.Clear;
  edProduto.Clear;
  edUnidade.Clear;
  edValUnit.Clear;
  dblMarca.KeyValue:='';
  edCodSerie.Clear;
  edUnidade.Clear;
  edProduto.SetFocus;
end;

procedure TfrcadProduto.buscProdutos;
begin
  dbdados.qProduto.Close;
  dbdados.qProduto.SQL.Clear;
  dbdados.qProduto.SQL.Add('SELECT * FROM PRODUTO ORDER BY DESCRICAO');
  dbdados.qProduto.Open;

end;

procedure TfrcadProduto.Button1Click(Sender: TObject);
begin
close;
end;

procedure TfrcadProduto.btnRetornarClick(Sender: TObject);
begin
close;
end;

procedure TfrcadProduto.btnOKClick(Sender: TObject);
begin
  cadastrar;
end;

procedure TfrcadProduto.busccategoria;
begin
  dbdados.qMarca.Close;
  dbdados.qMarca.SQL.Clear;
  dbdados.qMarca.SQL.Add('SELECT * FROM MARCA');
  dbdados.qMarca.Open;

end;

end.
