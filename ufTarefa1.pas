unit ufTarefa1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uspQuery, Vcl.ComCtrls, Vcl.DBCtrls;

type
  TfTarefa1 = class(TForm)
    lbCondicoes: TLabel;
    spQuery: TspQuery;
    memSQLGerado: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    memColunas: TMemo;
    memTabelas: TMemo;
    Label1: TLabel;
    memCondicoes: TMemo;
    Button1: TButton;
    procedure btnGeraSQLClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fTarefa1: TfTarefa1;

implementation

{$R *.dfm}

procedure TfTarefa1.btnGeraSQLClick(Sender: TObject);
var
   Tabela,
   Coluna,
   Condicao  : TstringList;
begin
   try
     memSQLGerado.Clear;
     Tabela := TStringList.Create;
     Coluna := TStringList.Create;
     Condicao := TStringList.Create;

     Tabela.AddStrings(memTabelas.Lines);
     spQuery.spTabelas := Tabela;

     Coluna.AddStrings(memColunas.Lines);
     spQuery.spColunas := Coluna;

     Condicao.AddStrings(memCondicoes.Lines);
     spQuery.spCondicoes := Condicao;

     memSQLGerado.Lines.Add(spQuery.GeraSQL);
   finally
     FreeAndNil(Tabela);
     FreeAndNil(Coluna);
     FreeAndNil(Condicao);
   end;
end;

procedure TfTarefa1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(fTarefa1);
end;

end.
