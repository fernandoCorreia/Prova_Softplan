unit uMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, ufTarefa1, ufTarefa2, ufTarefa3,
  Vcl.StdCtrls;

type
  TfMenuPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Menu: TMenuItem;
    tarefa11: TMenuItem;
    tarefa21: TMenuItem;
    tarefa31: TMenuItem;
    procedure tarefa11Click(Sender: TObject);
    procedure tarefa21Click(Sender: TObject);
    procedure tarefa31Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMenuPrincipal: TfMenuPrincipal;

implementation

{$R *.dfm}

procedure TfMenuPrincipal.tarefa11Click(Sender: TObject);
begin
   fTarefa1 :=  TfTarefa1.Create(self);
   fTarefa1.Show;
end;

procedure TfMenuPrincipal.tarefa21Click(Sender: TObject);
begin
   fTarefa2 := TfTarefa2.Create(self);
   fTarefa2.Show;
end;

procedure TfMenuPrincipal.tarefa31Click(Sender: TObject);
begin
   fTarefa3 := TfTarefa3.Create(self);
   fTarefa3.Show;
end;

end.
