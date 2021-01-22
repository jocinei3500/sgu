unit UuTILITARIO;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TfrUtilitario = class(TForm)
    Label1: TLabel;
    edtecla: TEdit;
    Button1: TButton;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frUtilitario: TfrUtilitario;

implementation

uses dados;

{$R *.dfm}

procedure TfrUtilitario.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
edTecla.Text:=  Format('%d', [Key]);

end;


end.
