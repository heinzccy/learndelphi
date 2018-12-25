program QRprint;

uses
  Vcl.Forms,
  f_main in '..\pas\f_main.pas' {frm_main},
  f_print in '..\pas\f_print.pas' {frm_print},
  f_dbset in '..\pas\f_dbset.pas' {frm_dbset};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_main, frm_main);
  Application.CreateForm(Tfrm_print, frm_print);
  Application.CreateForm(Tfrm_dbset, frm_dbset);
  Application.Run;
end.
