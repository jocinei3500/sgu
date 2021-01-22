unit uSaidaProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrSaidaprod = class(TForm)
    Label1: TLabel;
    edCod: TEdit;
    Label2: TLabel;
    edCodProd: TEdit;
    Label3: TLabel;
    edQuant: TEdit;
    Label4: TLabel;
    edData: TEdit;
    GroupBox1: TGroupBox;
    BitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    lbProd: TLabel;
    lbMarca: TLabel;
    GroupBox2: TGroupBox;
    gbControles: TGroupBox;
    btnRetornar: TBitBtn;
    btnOK: TBitBtn;
    BitBtn1: TBitBtn;
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btProcurarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btnRetornarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
    procedure cadastrar;
    procedure buscCod;
    procedure limpar;
  public
    { Public declarations }
  end;

var
  frSaidaprod: TfrSaidaprod;

implementation

uses dados, usonproduto;

{$R *.dfm}

{ TfrSaidaprod }

procedure TfrSaidaprod.buscCod;
var
  lCod:integer;
begin
  dbdados.qSaida.Close;
  dbdados.qSaida.SQL.Clear;
  dbdados.qSaida.SQL.Add('SELECT MAX(COD_SAIDA) FROM SAIDA_PROD');
  dbdados.qSaida.Open;
  try
    lCod:=dbdados.qSaida.Recordset.Fields[0].Value+1;
    edCod.Text:=IntToStr(lCod);
  except
    edCod.Text:='1';
  end;

  edData.Text:=formatdatetime('dd/mm/yyy',now());

end;

procedure TfrSaidaprod.cadastrar;
var
  lCod,lProduto,lQuant,lData:string;
  lQuantEstoque:integer;
begin
  lCod:=edCod.Text;
  lProduto:=edCodProd.Text;
  lQuant:=edQuant.Text;
  lData:=QuotedStr(edData.Text);

  //,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,

  dbdados.qSaida.Close;
  dbdados.qSaida.SQL.Clear;
  dbdados.qSaida.SQL.Add('SELECT QUANT FROM ESTOQUE WHERE PRODUTO='+ lProduto);
  dbDados.qSaida.Open;

  if dbdados.qSaida.RecordCount>0 then
    begin
     lQuantEstoque:=StrToInt(dbdados.qSaida.Recordset.Fields[0].Value);
        if StrToInt(lQuant) > lQuantEstoque then
          messagebox(handle,'Não é possível registrar essa saída pois o estoque é menor','Aviso',mb_IconExclamation)
        else if StrToInt(lQuant) = lQuantEstoque then
          begin
            dbdados.qSaida.Close;
            dbdados.qSaida.SQL.Clear;
            dbdados.qSaida.SQL.Add('INSERT INTO SAIDA_PROD VALUES('+ lCod+','+
            lProduto+','+lQuant+','+lData +')' );
            dbDados.qSaida.ExecSQL;
              if dbdados.qSaida.RowsAffected>0 then
                begin
                  messagebox(handle,'Consumo registrado com sucesso','Ok',mb_IconInformation);
                  limpar;
                  buscCod;
                end;


            dbdados.qSaida.Close;
            dbdados.qSaida.SQL.Clear;
            dbdados.qSaida.SQL.Add('DELETE FROM ESTOQUE WHERE PRODUTO='+ lProduto);
            dbDados.qSaida.ExecSQL;
          end
        else
          begin


            dbdados.qSaida.Close;
            dbdados.qSaida.SQL.Clear;
            dbdados.qSaida.SQL.Add('INSERT INTO SAIDA_PROD VALUES('+ lCod+','+
            lProduto+','+lQuant+','+lData +')' );
            dbDados.qSaida.ExecSQL;
              if dbdados.qSaida.RowsAffected>0 then
                begin
                  messagebox(handle,'Consumo registrado com sucesso','Ok',mb_IconInformation);
                  limpar;
                  buscCod;
                end;
             //....................
            lQuantEstoque:=lQuantEstoque-StrtoInt(lQuant);
            //;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
            dbdados.qSaida.Close;
            dbdados.qSaida.SQL.Clear;
            dbdados.qSaida.SQL.Add(' UPDATE ESTOQUE SET QUANT='+ IntToStr(lQuantEstoque) +' WHERE PRODUTO='+ lProduto );
            dbDados.qSaida.ExecSQL;
          end;

    end
  else
    begin
      messagebox(handle,'Este produto encontra-se em falta','Aviso',mb_IconExclamation)
    end;



  //;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



end;

procedure TfrSaidaprod.btOkClick(Sender: TObject);
begin
  cadastrar;
end;

procedure TfrSaidaprod.FormShow(Sender: TObject);
begin
  buscCod;

  //posiciona form
  frsaidaprod.Top:=160;
  frsaidaprod.Left:=10;

end;

procedure TfrSaidaprod.btProcurarClick(Sender: TObject);
begin
  frpesqProd.Tag:=1;
  frpesqprod.showmodal;

end;

procedure TfrSaidaprod.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=vk_f2 then
    begin
      application.CreateForm(tfrpesqProd,frpesqprod);
      frPesqProd.Tag:=1;
      frpesqProd.ShowModal
    end
  else  if key=27 then
    close
  else if key=116 then
    cadastrar
end;

procedure TfrSaidaprod.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TfrSaidaprod.limpar;
begin
  edCod.Clear;
  edCodProd.Clear;
  edQuant.Clear;
  edData.Clear;
end;

procedure TfrSaidaprod.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TfrSaidaprod.BitBtn2Click(Sender: TObject);
begin
  cadastrar;
end;

procedure TfrSaidaprod.BitBtn2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key=27 then
    close
  else if key=116 then
    cadastrar;
end;

procedure TfrSaidaprod.btnRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfrSaidaprod.btnOKClick(Sender: TObject);
begin
     cadastrar;
     Limpar;
end;

end.
