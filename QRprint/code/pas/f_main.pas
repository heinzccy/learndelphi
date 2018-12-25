unit f_main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, 
  dxBar, dxRibbon, dxRibbonForm, dxRibbonSkins, cxGraphics, cxControls, 
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxRibbonCustomizationForm, dxStatusBar, dxRibbonStatusBar,
  dxBarApplicationMenu, Vcl.ExtCtrls,f_print;

type
  Tfrm_main = class(TdxRibbonForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarApplicationMenu1: TdxBarApplicationMenu;
    dxRibbon1: TdxRibbon;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxRibbon1Tab2: TdxRibbonTab;
    dxRibbon1Tab3: TdxRibbonTab;
    dxRibbon1Tab4: TdxRibbonTab;
    dxBarButton1: TdxBarButton;
    dxRibbon1Tab1: TdxRibbonTab;
    dxBarManager1Bar2: TdxBar;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarManager1Bar3: TdxBar;
    dxBarLargeButton2: TdxBarLargeButton;
    dxBarManager1Bar4: TdxBar;
    dxBarLargeButton3: TdxBarLargeButton;
    pnl1: TPanel;
    dxbrlrgbtnPrinter: TdxBarLargeButton;
    dxbrlrgbtnDatabase: TdxBarLargeButton;
    procedure dxBarLargeButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_main: Tfrm_main;
//  frm_print:Tfrm_print;

implementation

{$R *.dfm}

procedure Tfrm_main.dxBarLargeButton1Click(Sender: TObject);
var print:Tfrm_print;
begin

  Tfrm_print.Create(Application);//��̬��������
  frm_print.BorderStyle := bsNone;
  frm_print.WindowState := wsMaximized;
  frm_print.Parent := pnl1;
  frm_print.Show;
end;

end.
