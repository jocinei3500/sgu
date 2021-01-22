unit dados;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  Tdbdados = class(TDataModule)
    qEstoque: TADOQuery;
    dsEstoque: TDataSource;
    ADOConnection1: TADOConnection;
    qSaida: TADOQuery;
    qProduto: TADOQuery;
    dsproduto: TDataSource;
    dssaida: TDataSource;
    qEntradaProd: TADOQuery;
    dsEntradaProd: TDataSource;
    qMarca: TADOQuery;
    dsMarca: TDataSource;
    qfabricante: TADOQuery;
    dsfabricante: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dbdados: Tdbdados;

implementation

{$R *.dfm}

end.
