unit urelEstoque;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TrelEstoque = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel4: TQRLabel;
    DetailBand1: TQRBand;
    dbCod: TQRDBText;
    dbNome: TQRDBText;
    dbCat: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    SHAPE: TQRShape;
    QRLabel5: TQRLabel;
    QRDBText2: TQRDBText;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

var
  relEstoque: TrelEstoque;

implementation

uses dados;

{$R *.DFM}

procedure TrelEstoque.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  // toggle the item background so that we can have alternating colors
  // like the greenbar paper we all know and love.
  with Shape.Brush do
    if Color = $00F0F0F0 then
      Color := $00E0E0E0
    else
      Color := $00F0F0F0;
end;

end.
