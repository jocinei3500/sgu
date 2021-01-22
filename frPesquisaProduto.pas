unit frPesquisaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids;

type
  TfrConsProd = class(TForm)
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label3: TLabel;
    Image1: TImage;
    Label4: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
    procedure consultar;
  public
    { Public declarations }
  end;

var
  frConsProd: TfrConsProd;

implementation

{$R *.dfm}

{ TfrConsProd }

procedure TfrConsProd.consultar;
var
  lConsulta,llConsulta:string;
  x:integer;
begin
  lConsulta:='SELECT E.PRODUTO AS "Código", P.DESCRICAO AS "Produto",'+
  ' P.MARCA AS "Marca", P.COD_SERIE AS"´Modelo/Série", P.UNIDADE AS "Unidade",'+
  ' P.VALOR AS "Preço" FROM PRODUTOS P INNER JOIN ESTOQUE E ON '+
  ' P.COD_PROD=E.PRODUTO where ';

  for x:=1 to 4 do
    begin
      if llConsulta<>''then
        begin
          
        end;

    end;

end;

end.
