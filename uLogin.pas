unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DB, ADODB;

type
  TfrLogin = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edUser: TEdit;
    edSenha: TEdit;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    qlogin: TADOQuery;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure validaUser;
  public
    { Public declarations }
  end;

var
  frLogin: TfrLogin;
  gSennha:string;

implementation

uses uMain, dados;

{$R *.dfm}

procedure TfrLogin.BitBtn2Click(Sender: TObject);
begin
  validaUser;
end;

procedure TfrLogin.validaUser;
begin
  qlogin.Close;
  qlogin.SQL.Clear;
  qlogin.SQL.Add('SELECT * FROM USER WHERE USER='+ QuotedStr(edUser.text)+
  ' AND SENHA= '+ QuotedStr(edSenha.Text));
  qLogin.open;

  if qlogin.RecordCount>0 then
    begin
      frMain.ShowModal;
    end
  else
    begin
      messagebox(handle,'Não foi possivel conectar-se ao SGU Identificação não corresponde',' SGU informa ERRO',mb_IconError)
    end;

end;

procedure TfrLogin.BitBtn3Click(Sender: TObject);
begin
edUser.Clear;
edSenha.Clear;
end;

procedure TfrLogin.BitBtn4Click(Sender: TObject);
begin
  application.Terminate;
end;

procedure TfrLogin.BitBtn1Click(Sender: TObject);
begin
  showmessage('Recurso em construção obrigado por usar o SGU');
end;

procedure TfrLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then
    validauser
    
end;

end.
