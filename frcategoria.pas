unit frcategoria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, Buttons, Grids, DBGrids;

type
  TForm1 = class(TForm)
    gbMain: TGroupBox;
    gbDados: TGroupBox;
    dbgdados: TDBGrid;
    gbTop: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    edCod: TEdit;
    edcat: TEdit;
    gbControles: TGroupBox;
    btnRetornar: TBitBtn;
    btnOK: TBitBtn;
    BitBtn1: TBitBtn;
  private
    { Private declarations }
    procedure cadastrar;
    procedure Limpar;
    procedure atualisar;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses dados;

{$R *.dfm}

{ TForm1 }

procedure TForm1.atualisar;
begin

end;



procedure TForm1.cadastrar;
begin
if trim(EDcat.Text)<>'' then
  begin
    messagebox(handle,'O campo categoria deve ser preenchido ','Informa',mb_IconExclamation);
    exit;
  end;

end;

procedure TForm1.Limpar;
begin

end;


end.
