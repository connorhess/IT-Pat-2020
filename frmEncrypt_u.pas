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
    btn_decrypt: TButton;
    rdg_type_dec: TRadioGroup;
    mem_input_dec: TMemo;
    lbl_decrypt_input: TLabel;
    mem_output_dec: TMemo;
    lbl_output_dec: TLabel;
    pnl_decrypt_options: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    lbl_enc_output: TLabel;
    mem_input_enc: TMemo;
    mem_output_enc: TMemo;
    Panel2: TPanel;
    lbl_enc_mix: TLabel;
    lbl_enc_offset: TLabel;
    btn_encrypt: TButton;
    rdg_enc_type: TRadioGroup;
    spn_enc_mix: TSpinEdit;
    spn_enc_offset: TSpinEdit;
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
