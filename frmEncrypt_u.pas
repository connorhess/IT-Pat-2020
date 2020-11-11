unit frmEncrypt_u;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.TabNotBk,
  Vcl.StdCtrls, Vcl.Samples.Spin, Vcl.Imaging.jpeg;

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
    Image1: TImage;
    Image2: TImage;
    procedure btn_encryptClick(Sender: TObject);
    procedure btn_decryptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  sEnc_message_input, sEnc_ascii, sDec_ascii, sDec_message_input, sEnc_message_output, sDec_message_output: string;
  I, sEnc_ascii_pre, iCount: Integer;

implementation

{$R *.dfm}

procedure TForm1.btn_decryptClick(Sender: TObject);
begin
  if rdg_type_dec.ItemIndex = 0 then
  begin
    sDec_ascii := '';
    iCount := 3;
    sDec_message_input := mem_input_dec.Text;
    for I := 1 to length(sDec_message_input) do
    begin
      if I > 1 then
      begin
        if strToInt(sDec_message_input[1]) = (spn_mix.Value +2) then
        begin
          if iCount = 3 then
          begin
            iCount := 0;
            sDec_ascii := sDec_ascii + chr((strToInt(sDec_message_input[I] + sDec_message_input[I+1] + sDec_message_input[I+2])) - spn_offsett.Value);
          end;
          iCount := iCount + 1;
        end;
      end;
    end;

    mem_output_dec.Clear;
    mem_output_dec.Text := sDec_ascii;
  end
  else if rdg_type_dec.ItemIndex = 1 then
  begin
    ShowMessage('UTF-8')
  end
  else
  begin
    ShowMessage('Please Select an Encryption Method');
  end;
end;

procedure TForm1.btn_encryptClick(Sender: TObject);
var
  I: Integer;
begin
  if rdg_enc_type.ItemIndex = 0 then
  begin
    sEnc_ascii := '';
    sEnc_message_input := mem_input_enc.Text;
    for I := 1 to Length(sEnc_message_input) do
    begin
      sEnc_ascii_pre := (Ord(sEnc_message_input[I])) + (spn_enc_offset.Value);

      if sEnc_ascii_pre < 10 then
        sEnc_ascii := sEnc_ascii + '00' + IntToStr(sEnc_ascii_pre)
      else if sEnc_ascii_pre < 100 then
        sEnc_ascii := sEnc_ascii + '0' + IntToStr(sEnc_ascii_pre)
      else
        sEnc_ascii := sEnc_ascii + IntToStr(sEnc_ascii_pre);
    end;

    sEnc_message_output := (intToStr(spn_enc_mix.Value + 2) + sEnc_ascii);

    mem_output_enc.Clear;
    mem_output_enc.Text := sEnc_message_output;
  end
  else if rdg_enc_type.ItemIndex = 1 then
  begin
    ShowMessage('UTF-8')
  end
  else
  begin
    ShowMessage('Please Select an Encryption Method');
  end;

end;

end.
