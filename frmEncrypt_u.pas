unit frmEncrypt_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.TabNotBk,
  Vcl.StdCtrls, Vcl.Samples.Spin;

type
  TForm1 = class(TForm)
    pnl_main: TPanel;
    pgc_main: TPageControl;
    tab_encrypt: TTabSheet;
    tab_decrypt: TTabSheet;
    pnl_custom_dec: TPanel;
    spn_offsett: TSpinEdit;
    spn_mix: TSpinEdit;
    lbl_mix: TLabel;
    lbl_offsett: TLabel;
    Button1: TButton;
    rdg_type_dec: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
