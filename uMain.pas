unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Menus, ComCtrls, ToolWin, ImgList, StdCtrls, jpeg,urlmon;

type
  TfrMain = class(TForm)
    ppCadastro: TPopupMenu;
    ppControle: TPopupMenu;
    ppRelatorio: TPopupMenu;
    ppConsulta: TPopupMenu;
    ToolBar1: TToolBar;
    btCadastro: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    Compras1: TMenuItem;
    imON: TImageList;
    imOFF: TImageList;
    Label2: TLabel;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    Timer1: TTimer;
    ppAjuda: TPopupMenu;
    Vendas1: TMenuItem;
    Propostas1: TMenuItem;
    ppCaixa: TPopupMenu;
    Empresas2: TMenuItem;
    ServiosRealizados1: TMenuItem;
    Funcionrios1: TMenuItem;
    Empresas3: TMenuItem;
    ServiosRealizados2: TMenuItem;
    Empresa1: TMenuItem;
    Pessoal1: TMenuItem;
    Bancos1: TMenuItem;
    SobreoSistema1: TMenuItem;
    utorialdoSistema1: TMenuItem;
    ConhecendooSistema1: TMenuItem;
    Label1: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Image1: TImage;
    Label4: TLabel;
    Produtos1: TMenuItem;
    Utilitrio1: TMenuItem;
    Fornecedores1: TMenuItem;
    Marcas1: TMenuItem;
    Categoriadeprodutos1: TMenuItem;
    cadastrodeEmpresas1: TMenuItem;
    Estoque1: TMenuItem;
    Estoque2: TMenuItem;
    procedure lbCloseClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Oramentos1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Compras1Click(Sender: TObject);
    procedure Propostas1Click(Sender: TObject);
    procedure Label4MouseLeave(Sender: TObject);
    procedure Label4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Utilitrio1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Estoque2Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frMain: TfrMain;

implementation

uses estoque, uSaidaProduto, uCadProduto, uEntradaProduto, uLogin,
  UuTILITARIO;





{$R *.dfm}


procedure TfrMain.lbCloseClick(Sender: TObject);
begin
  if messagebox(handle,'Deseja mesmo finalizar o sistema?','Finalizar',mb_Iconquestion+mb_YESNO)=idYes then
    application.Terminate
  else
  exit;
end;


procedure TfrMain.Label4Click(Sender: TObject);
begin
  if messagebox(handle,'Deseja mesmo finalizar o sistema?','Finalizar',mb_Iconquestion+mb_YESNO)=idYes then
    application.Terminate
  else
  exit;
end;

procedure TfrMain.Oramentos1Click(Sender: TObject);
begin
  application.CreateForm(tfrEstoque,frEstoque);
  frestoque.showmodal;
end;

procedure TfrMain.Vendas1Click(Sender: TObject);
begin
  application.CreateForm(tfrSaidaProd,frSaidaProd);
  frsaidaprod.showmodal;
end;

procedure TfrMain.Compras1Click(Sender: TObject);
begin
  application.CreateForm(tfrcadProduto,frcadproduto);
  frcadproduto.ShowModal;
end;

procedure TfrMain.Propostas1Click(Sender: TObject);
begin
  application.CreateForm(tfrentradaProduto,frEntradaProduto);
frEntradaProduto.ShowModal;
end;

procedure TfrMain.Label4MouseLeave(Sender: TObject);
begin
  label4.Font.Color:=$00D1D1D1;  
end;

procedure TfrMain.Label4MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  label4.Font.Color:=clWhite;
end;

procedure TfrMain.Button1Click(Sender: TObject);
begin
frLogin.ShowModal;
end;

procedure TfrMain.FormShow(Sender: TObject);
begin
  frLogin.Hide;
end;

procedure TfrMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  application.Terminate;
end;

procedure TfrMain.Utilitrio1Click(Sender: TObject);
begin
frUtilitario.showmodal;
end;

procedure TfrMain.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (ssCtrl in Shift) and (chr(Key) in ['C', 'c']) then
  ppCadastro.Popup(1,160)

else if (ssCtrl in Shift) and (chr(Key) in ['O', 'o']) then
  ppControle.Popup(90,160)

else if (ssCtrl in Shift) and (chr(Key) in ['R', 'r']) then
ppRelatorio.Popup(183,160)

else if (ssCtrl in Shift) and (chr(Key) in ['S', 's']) then
ppConsulta.Popup(279,160)

else if (ssCtrl in Shift) and (chr(Key) in ['X', 'x']) then
ppCaixa.Popup(372,160)

else if (ssCtrl in Shift) and (chr(Key) in ['A', 'a']) then
ppAjuda.Popup(465,160)


end;

procedure TfrMain.Estoque2Click(Sender: TObject);
begin
  application.CreateForm(tfrestoque,frestoque);
  frestoque.ShowModal;
end;

procedure TfrMain.Image1Click(Sender: TObject);
begin
  HlinkNavigateString(nil,'http://www.castellarengenharia.com.br');
end;

end.
