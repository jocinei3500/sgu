unit estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, Buttons, Menus;

type
  TfrEstoque = class(TForm)
    dbgdados: TDBGrid;
    edCod: TEdit;
    gbDados: TGroupBox;
    gbTop: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edNomeProd: TEdit;
    Label3: TLabel;
    edMarca: TEdit;
    Label4: TLabel;
    edModelo: TEdit;
    edPreco: TEdit;
    Label5: TLabel;
    PopupMenu1: TPopupMenu;
    Gravaralteraesnagradededados1: TMenuItem;
    gbControles: TGroupBox;
    btnRetornar: TBitBtn;
    btnOK: TBitBtn;
    gbMain: TGroupBox;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnRetornarClick(Sender: TObject);
    procedure edCodExit(Sender: TObject);
    procedure edNomeProdExit(Sender: TObject);
    procedure edModeloExit(Sender: TObject);
    procedure edMarcaExit(Sender: TObject);
    procedure edPrecoExit(Sender: TObject);
    procedure Gravaralteraesnagradededados1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    procedure consultar;
    procedure buscaEstoqueTotal;


  public
    { Public declarations }
  end;

var
  frEstoque: TfrEstoque;
  gcons:array[1..5]of string;

implementation

uses dados, urelEstoque;

{$R *.dfm}

procedure TfrEstoque.buscaEstoqueTotal;
begin
  dbDados.qEstoque.Close;
  dbDados.qEstoque.SQL.Clear;
  dbDados.qEstoque.SQL.Add('SELECT  P.COD_PROD AS "CÓDIGO",E.QUANT AS "QUANTIDADE",'+
  ' P.DESCRICAO AS "PRODUTO", M.MARCA AS "MARCA", P.COD_SERIE AS "MODELO/SÉRIE" '+
  ' FROM ESTOQUE E INNER JOIN PRODUTO P ON E.PRODUTO= P.COD_PROD INNER JOIN MARCA M '+
  'ON P.MARCA=M.COD_MARCA ');
  dbDados.qEstoque.Open;
end;

procedure TfrEstoque.Button1Click(Sender: TObject);
begin
  consultar;
end;

procedure TfrEstoque.consultar;
var
  lcod_produto, lconsulta,llconsulta:string;
  x:integer;
  lPath:string;
begin
  lPath:=extractfiledir(application.ExeName)+'\config\dbgrid\estoque.sgu';
  //
    btnOk.SetFocus;
  lconsulta:='SELECT E.QUANT, P.COD_PROD, P.DESCRICAO, P.MARCA, P.COD_SERIE'+
  ' FROM ESTOQUE E INNER JOIN PRODUTO P ON E.PRODUTO= P.COD_PROD WHERE ';

  for  x:=1 to 5 do
    begin
      if llConsulta<>'' then
        begin
          if gCons[x]<>''then
            llConsulta:=llConsulta+' and ' +gCons[x];
        end
      else
        llConsulta:=llConsulta+gCons[x]
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

   //lPath:=extractfileDir(application.ExeName)+'\config\dbgrid\estoque.sgu';
  //dbgDados.Columns.LoadFromFile(lPath);

 if dbdados.qEstoque.RecordCount=0 then
    begin
      showmessage('Não há dados correspondentes a esta consulta');
      dbdados.qEstoque.Close;
    end;


end;

procedure TfrEstoque.FormShow(Sender: TObject);
var
  lPath:string;
begin

  buscaEstoqueTotal;

  //position

  frestoque.Top:=160;
  frestoque.Left:=10;

  //carrega formato do dbgrid
  //lPath:=extractfileDir(application.ExeName)+'\config\dbgrid\estoque.sgu';
  //dbgDados.Columns.LoadFromFile(lPath);
end;

procedure TfrEstoque.Button2Click(Sender: TObject);
begin
  relestoque.Preview;
end;

procedure TfrEstoque.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TfrEstoque.btnOKClick(Sender: TObject);
begin
  consultar;
end;

procedure TfrEstoque.btnRetornarClick(Sender: TObject);
begin
close;
end;

procedure TfrEstoque.edCodExit(Sender: TObject);
begin
  if trim(edCod.Text)<>'' then
    gCons[1]:=' E.PRODUTO =' +edCod.Text
  else
    gcons[1]:='';

end;

procedure TfrEstoque.edNomeProdExit(Sender: TObject);
begin
  if trim(ednomeProd.Text)<>''then
    gcons[2]:=' P.DESCRICAO LIKE '+ QuotedStr(edNomeProd.Text+'%')
  else
    gcons[2]:='';
end;

procedure TfrEstoque.edModeloExit(Sender: TObject);
begin
  if trim(edModelo.Text)<>''then
    gcons[3]:=' p.COD_SERIE= '+QuotedStr(edModelo.Text)
  else
    gcons[3]:='';
end;

procedure TfrEstoque.edMarcaExit(Sender: TObject);
begin
  if trim(edMarca.Text)<>''then
    gcons[4]:=' p.MARCA LIKE '+ QuotedStr(edMarca.Text+'%')
  else
    gcons[4]:='';
end;

procedure TfrEstoque.edPrecoExit(Sender: TObject);
begin
  if trim(edPreco.Text)<>''then
    gcons[5]:='P.VALOR = '+ edPreco.Text
  else
    gcons[5]:='';
end;

procedure TfrEstoque.Gravaralteraesnagradededados1Click(Sender: TObject);
var
  lPath:string;
begin
  lPath:=extractFileDir(application.ExeName)+'\config\dbgrid\estoque.sgu';
  dbgdados.Columns.SaveToFile(lPath);
  showmessage('Alterações salvas com sucesso');

end;

procedure TfrEstoque.FormKeyPress(Sender: TObject; var Key: Char);
begin
if key= #13 then
begin
Perform (CM_DialogKey, VK_TAB, 0);
key:=#0;
end;

end;

procedure TfrEstoque.BitBtn1Click(Sender: TObject);
begin
relestoque.Preview;
end;

procedure TfrEstoque.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF key=27 then
    close
  else if key=116 then
    consultar
end;

end.
