unit f_print;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, RzPanel, frxClass,
  frxDBSet, Vcl.StdCtrls;

type
  Tfrm_print = class(TForm)
    pnl_print: TRzPanel;
    dlgOpenExcel: TOpenDialog;
    btnImport: TButton;
    frxrprtBarprint: TfrxReport;
    frxdbdtstBarprint: TfrxDBDataset;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_print: Tfrm_print;

implementation

{$R *.dfm}

end.
