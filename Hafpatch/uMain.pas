unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls;

type
  TMain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

end.
