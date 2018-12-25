unit f_dbset;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls;

type
  Tfrm_dbset = class(TForm)
    edtAddress: TEdit;
    edtDbName: TEdit;
    edtUserID: TEdit;
    edtPassword: TEdit;
    lblAddress: TLabel;
    lblDbName: TLabel;
    lblUserID: TLabel;
    lblPassword: TLabel;
    btnSave: TButton;
    btnTest: TButton;
    lblStatus: TLabel;
    conDB: TADOConnection;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_dbset: Tfrm_dbset;

implementation

{$R *.dfm}

end.
