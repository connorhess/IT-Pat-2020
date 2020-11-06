object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 525
  ClientWidth = 818
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_main: TPanel
    Left = -8
    Top = -8
    Width = 833
    Height = 537
    TabOrder = 0
    object pgc_main: TPageControl
      Left = 9
      Top = 8
      Width = 825
      Height = 529
      ActivePage = tab_decrypt
      TabHeight = 50
      TabOrder = 0
      TabWidth = 410
      object tab_encrypt: TTabSheet
        Caption = 'Encrypt'
        object Panel1: TPanel
          Left = 0
          Top = 3
          Width = 806
          Height = 463
          BorderWidth = 5
          BorderStyle = bsSingle
          TabOrder = 0
          object Label1: TLabel
            Left = 8
            Top = 8
            Width = 95
            Height = 13
            Caption = 'Message to Encrypt'
          end
          object lbl_enc_output: TLabel
            Left = 512
            Top = 8
            Width = 34
            Height = 13
            Caption = 'Output'
          end
          object mem_input_enc: TMemo
            Left = 8
            Top = 27
            Width = 293
            Height = 417
            TabOrder = 0
          end
          object mem_output_enc: TMemo
            Left = 512
            Top = 27
            Width = 281
            Height = 422
            TabOrder = 1
          end
          object Panel2: TPanel
            Left = 307
            Top = 27
            Width = 199
            Height = 222
            BorderStyle = bsSingle
            TabOrder = 2
            object lbl_enc_mix: TLabel
              Left = 23
              Top = 48
              Width = 16
              Height = 13
              Caption = 'Mix'
            end
            object lbl_enc_offset: TLabel
              Left = 8
              Top = 11
              Width = 31
              Height = 13
              Caption = 'Offset'
            end
            object btn_encrypt: TButton
              Left = 8
              Top = 184
              Width = 177
              Height = 25
              Caption = 'Encrypt'
              TabOrder = 0
            end
            object rdg_enc_type: TRadioGroup
              Left = 8
              Top = 73
              Width = 177
              Height = 105
              Caption = 'Encryption Type'
              Items.Strings = (
                'Custom Shift'
                'UTF-8')
              TabOrder = 1
            end
            object spn_enc_mix: TSpinEdit
              Left = 45
              Top = 45
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 2
              Value = 0
            end
            object spn_enc_offset: TSpinEdit
              Left = 45
              Top = 8
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 3
              Value = 0
            end
          end
        end
      end
      object tab_decrypt: TTabSheet
        Caption = 'Decrypt'
        ImageIndex = 1
        object pnl_custom_dec: TPanel
          Left = 0
          Top = 3
          Width = 806
          Height = 463
          BorderWidth = 5
          BorderStyle = bsSingle
          TabOrder = 0
          object lbl_decrypt_input: TLabel
            Left = 8
            Top = 8
            Width = 96
            Height = 13
            Caption = 'Message to Decrypt'
          end
          object lbl_output_dec: TLabel
            Left = 512
            Top = 8
            Width = 34
            Height = 13
            Caption = 'Output'
          end
          object mem_input_dec: TMemo
            Left = 8
            Top = 27
            Width = 293
            Height = 417
            TabOrder = 0
          end
          object mem_output_dec: TMemo
            Left = 512
            Top = 27
            Width = 281
            Height = 422
            TabOrder = 1
          end
          object pnl_decrypt_options: TPanel
            Left = 307
            Top = 27
            Width = 199
            Height = 222
            BorderStyle = bsSingle
            TabOrder = 2
            object lbl_mix: TLabel
              Left = 23
              Top = 48
              Width = 16
              Height = 13
              Caption = 'Mix'
            end
            object lbl_offsett: TLabel
              Left = 8
              Top = 11
              Width = 31
              Height = 13
              Caption = 'Offset'
            end
            object btn_decrypt: TButton
              Left = 8
              Top = 184
              Width = 177
              Height = 25
              Caption = 'Decrypt'
              TabOrder = 0
            end
            object rdg_type_dec: TRadioGroup
              Left = 8
              Top = 73
              Width = 177
              Height = 105
              Caption = 'Decryption Type'
              Items.Strings = (
                'Custom Shift'
                'UTF-8')
              TabOrder = 1
            end
            object spn_mix: TSpinEdit
              Left = 45
              Top = 45
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 2
              Value = 0
            end
            object spn_offsett: TSpinEdit
              Left = 45
              Top = 8
              Width = 121
              Height = 22
              MaxValue = 0
              MinValue = 0
              TabOrder = 3
              Value = 0
            end
          end
        end
      end
    end
  end
end
