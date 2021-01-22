unit usonproduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Menus;

type
  TfrpesqProd = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    edCod: TEdit;
    edCodSerie: TEdit;
    Label5: TLabel;
    edMarca: TEdit;
    edProduto: TEdit;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    PopupMenu1: TPopupMenu;
    Salvaralteraesdagradededados1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure edProdutoExit(Sender: TObject);
    procedure edMarcaExit(Sender: TObject);
    procedure edCodSerieExit(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Salvaralteraesdagradededados1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure consultar;
    procedure setProd;
  public
    { Public declarations }
  end;

var
  frpesqProd: TfrpesqProd;
  gConsulta:array[1..4]of string;

implementation

uses dados, uSaidaProduto, uEntradaProduto;

{$R *.dfm}



procedure TfrpesqProd.consultar;
  var
    lConsulta, llConsulta:string;
    x:integer;
begin
  lConsulta:='SELECT E.PRODUTO, P.DESCRICAO AS"DESCRIÇÃO", P.MARCA AS "MARCA", P.COD_SERIE AS'+
  ' "MODELO/SÉRIE", P.UNIDADE AS "UNIDADE", P.VALOR AS"PREÇO UNITÁRIO", E.QUANT AS"ESTOQUE"'+
  ' FROM PRODUTO P INNER JOIN ESTOQUE E ON P.COD_PROD=E.PRODUTO WHERE ';
  for  x:=1 to 4 do
    begin
      if llConsulta<>'' then
        begin
          if gConsulta[x]<>''then
            llConsulta:=llConsulta+' and ' +gConsulta[x];
        end
      else
        llConsulta:=llConsulta+gConsulta[x]
    end;

    lConsulta:=lConsulta+llConsulta;
  if llConsulta='' then
    begin
      messagebox(handle,'não foi possível concluir a consulta preencha pelo menos um campo','Aviso',mb_IconInformation);
      edCod.Setfocus;
      exit;
    end;


  dbDados.qEstoque.Close;
  dbDados.qEstoque.SQL.Clear;
  dbDados.qEstoque.SQL.Add(lConsulta);
  dbDados.qEstoque.Open;




end;

procedure TfrpesqProd.Button1Click(Sender: TObject);
begin
  consultar;
end;

procedure TfrpesqProd.edCodExit(Sender: TObject);
begin
  if edCod.Text<>''then
    gConsulta[1]:=' E.PRODUTO = '+ edCod.Text
  else
    gConsulta[1]:='';
end;

procedure TfrpesqProd.edProdutoExit(Sender: TObject);
begin
  if edProduto.Text<>'' then
    gConsulta[2]:=' P.DESCRICAO LIKE '+ QuotedStr(edProduto.Text+'%')
  else
    gConsulta[2]:=''

end;

procedure TfrpesqProd.edMarcaExit(Sender: TObject);
begin
  if edMarca.Text<>''then
    gConsulta[3]:=' P.MARCA LIKE '+ QuotedStr(edMarca.Text+'%')
  else
    gConsulta[3]:=''
end;

procedure TfrpesqProd.edCodSerieExit(Sender: TObject);
begin
  if edCodSerie.Text<>''then
    gConsulta[4]:=' P.COD_SERIE ='+QuotedStr(edCodSerie.Text)
  else
    gConsulta[4]:=''
end;

procedure TfrpesqProd.setProd;
  var
    lCodProd:string;
begin
  try
    lCodProd:=dbgrid1.SelectedField.Value;
     if tag=1 then
        frsaidaProd.edCodProd.Text:=lCodProd
     else if tag=2 then
      frEntradaProduto.edCod.Text:=lCodProd
  except
    messagebox(handle,' Entre com os dados pra encontrar o produto','Aviso',mb_IconInformation);
  end;
end;

procedure TfrpesqProd.Button2Click(Sender: TObject);
begin
  setProd;
end;

procedure TfrpesqProd.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    begin
      setProd;
    end;
end;

procedure TfrpesqProd.Button3Click(Sender: TObject);
begin
  close
end;

procedure TfrpesqProd.Salvaralteraesdagradededados1Click(Sender: TObject);
  var
    lsaveGrade:string;
begin
  lsaveGrade:=ExtractfileDir(application.ExeName)+'\config\dbgrid\consProd.jdr';
  dbgrid1.Columns.SaveToFile(lsaveGrade);
end;

procedure TfrpesqProd.FormCreate(Sender: TObject);
  var
    lsaveColProd:string;
begin
  lsaveColProd:=extractfiledir(application.ExeName)+'\config\dbgrid\consprod.jdr';

  dbgrid1.Columns.LoadFromFile(lsavecolProd);
end;

end.
