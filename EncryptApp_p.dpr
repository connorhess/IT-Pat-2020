program EncryptApp_p;

uses
  Vcl.Forms,
  frmEncrypt_u in 'frmEncrypt_u.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
