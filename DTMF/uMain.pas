unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Bass;

type
  TMain = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton9Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure SpeedButton11Click(Sender: TObject);
    procedure SpeedButton13Click(Sender: TObject);
    procedure SpeedButton14Click(Sender: TObject);
    procedure SpeedButton15Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure SpeedButton12Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
  private
    Channel: DWord;
    procedure PlayDTMF(Tone: Char);
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Main: TMain;

implementation

{$R *.dfm}

procedure TMain.FormCreate(Sender: TObject);
begin


  if BASS_GetVersion <> DWORD(MAKELONG(2,1)) then
  begin
    MessageBox(0, 'BASS version 2.1 was not loaded', 'Incorrect BASS.DLL', 0);
    Application.Terminate;
    Exit;
  end;

  BASS_SetConfig(BASS_CONFIG_FLOATDSP, 1);
  if not BASS_Init(1, 44100, 0, Handle, nil) then
  begin
    MessageBox(0, 'Can''t initialize device', 'Error', 0);
    Application.Terminate;
    Exit;
  end;
end;

procedure TMain.SpeedButton1Click(Sender: TObject);
begin
  PlayDTMF('1');
end;

procedure TMain.SpeedButton2Click(Sender: TObject);
begin
  PlayDTMF('2');
end;

procedure TMain.SpeedButton3Click(Sender: TObject);
begin
  PlayDTMF('3');
end;

procedure TMain.SpeedButton5Click(Sender: TObject);
begin
  PlayDTMF('4');
end;

procedure TMain.SpeedButton6Click(Sender: TObject);
begin
  PlayDTMF('5');
end;

procedure TMain.SpeedButton7Click(Sender: TObject);
begin
  PlayDTMF('6');
end;

procedure TMain.SpeedButton9Click(Sender: TObject);
begin
  PlayDTMF('7');
end;

procedure TMain.SpeedButton10Click(Sender: TObject);
begin
  PlayDTMF('8');
end;

procedure TMain.SpeedButton11Click(Sender: TObject);
begin
  PlayDTMF('9');
end;

procedure TMain.SpeedButton13Click(Sender: TObject);
begin
  PlayDTMF('*');
end;

procedure TMain.SpeedButton14Click(Sender: TObject);
begin
  PlayDTMF('0');
end;

procedure TMain.SpeedButton15Click(Sender: TObject);
begin
  PlayDTMF('#');
end;

procedure TMain.SpeedButton4Click(Sender: TObject);
begin
  PlayDTMF('A');
end;

procedure TMain.SpeedButton8Click(Sender: TObject);
begin
  PlayDTMF('B');
end;

procedure TMain.SpeedButton12Click(Sender: TObject);
begin
  PlayDTMF('C');
end;

procedure TMain.SpeedButton16Click(Sender: TObject);
begin
  PlayDTMF('D');
end;

procedure TMain.PlayDTMF(Tone: Char);
var
  S: String;
begin
  Case Tone of
    '1': S := '1.wav';
    '2': S := '2.wav';
    '3': S := '3.wav';
    '4': S := '4.wav';
    '5': S := '5.wav';
    '6': S := '6.wav';
    '7': S := '7.wav';
    '8': S := '8.wav';
    '9': S := '9.wav';
    '0': S := '0.wav';
    '*': S := 'stern.wav';
    '#': S := 'raute.wav';
    'A': S := 'a.wav';
    'B': S := 'b.wav';
    'C': S := 'c.wav';
    'D': S := 'd.wav';
    else Exit;
  end;

  BASS_StreamFree(Channel);

  S := ExtractFilePath(Application.ExeName)+'tones\'+ S;

  Channel := BASS_StreamCreateFile(False, PChar(S), 0, 0, 0);
  if (Channel = 0) then
  begin
    // whatever it is, it ain't playable
    MessageBox(0, 'Datei nicht gefunden oder falsches Format', 'Fehler', 0);
    Exit;
  end;

  BASS_ChannelPlay(Channel, False);
end;



end.
