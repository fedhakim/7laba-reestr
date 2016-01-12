unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Registry;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);//записываем
var RegIni:TRegIniFile;
begin
RegIni:=TRegIniFile.Create('Software');
 RegIni.OpenKey('RazdelBeta', true);
  RegIni.WriteString('podRazdelBeta', 'ImyaParametra', Edit1.Text);
   RegIni.Free;
   end;


procedure TForm1.Button2Click(Sender: TObject); //удаляем
var RegIni:TRegistry;

begin
RegIni:=TRegistry.Create;
 RegIni.RootKey:=HKEY_CURRENT_USER;
  RegIni.DeleteKey('Software\RazdelBeta');

RegIni.Free;


end;

end.
