program EncryptApp_p;

uses
  Vcl.Forms,
  frmEncrypt_u in 'frmEncrypt_u.pas' {Agency_Encryption};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TAgency_Encryption, Agency_Encryption);
  Application.Run;
end.
