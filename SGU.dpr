program SGU;

uses
  Forms,
  uMain in 'uMain.pas' {frMain},
  estoque in 'estoque.pas' {frEstoque},
  dados in 'dados.pas' {dbdados: TDataModule},
  uSaidaProduto in 'uSaidaProduto.pas' {frSaidaprod},
  uCadProduto in 'uCadProduto.pas' {frcadProduto},
  uEntradaProduto in 'uEntradaProduto.pas' {frEntradaProduto},
  urelEstoque in 'urelEstoque.pas' {relEstoque: TQuickRep},
  usonproduto in 'usonproduto.pas' {frpesqProd},
  uLogin in 'uLogin.pas' {frLogin},
  UuTILITARIO in 'UuTILITARIO.pas' {frUtilitario},
  frcategoria in 'frcategoria.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'SGU 0.0.1';
  Application.CreateForm(TfrLogin, frLogin);
  Application.CreateForm(TfrMain, frMain);
  Application.CreateForm(TfrEstoque, frEstoque);
  Application.CreateForm(Tdbdados, dbdados);
  Application.CreateForm(TfrSaidaprod, frSaidaprod);
  Application.CreateForm(TfrcadProduto, frcadProduto);
  Application.CreateForm(TfrEntradaProduto, frEntradaProduto);
  Application.CreateForm(TrelEstoque, relEstoque);
  Application.CreateForm(TfrpesqProd, frpesqProd);
  Application.CreateForm(TfrUtilitario, frUtilitario);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
