unit ufTarefa3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient;

type
  TfTarefa3 = class(TForm)
    gpGrid: TGroupBox;
    gdProjetos: TDBGrid;
    pnRodape: TPanel;
    pnCalculos: TPanel;
    lbTotal: TLabel;
    lbTotalDiv: TLabel;
    btnTotal: TButton;
    btnDiv: TButton;
    edTotal: TEdit;
    edTotalDiv: TEdit;
    procedure FormShow(Sender: TObject);
    procedure btnTotalClick(Sender: TObject);
    procedure btnDivClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    cdsProjeto : TClientDataSet;
    dsProjeto: TDataSource;
  public
    { Public declarations }
    procedure geraProjetos;
    procedure geraComponentes;
  end;

var
  fTarefa3: TfTarefa3;

implementation

{$R *.dfm}

{ TfTarefa3 }

procedure TfTarefa3.btnTotalClick(Sender: TObject);
var
   total : double;
begin
  try
     total := 0;

     cdsProjeto.First;
     while not cdsProjeto.Eof do
       begin
         total := total + Round(cdsProjeto.FieldByName('Valor').AsFloat);
         cdsProjeto.Next;
       end;

     edTotal.Text := formatfloat('###,###,##0.00', total);
  finally
  end;
end;

procedure TfTarefa3.btnDivClick(Sender: TObject);
var
   total,
   vlAnterior : double;
begin
   try
     total := 0;

     cdsProjeto.First;
     vlAnterior := cdsProjeto.FieldByName('Valor').AsFloat;
     cdsProjeto.Next;

     while not cdsProjeto.Eof do
        begin
          total  := total + (cdsProjeto.FieldByName('Valor').AsFloat/vlAnterior);
          vlAnterior := cdsProjeto.FieldByName('Valor').AsFloat;
          cdsProjeto.Next;
        end;

     edTotalDiv.Text := formatfloat('###,###,##0.00', total);
   finally
   end;
end;

procedure TfTarefa3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   FreeAndNil(cdsProjeto);
   FreeAndNil(dsProjeto);
   FreeAndNil(fTarefa3);
end;

procedure TfTarefa3.FormShow(Sender: TObject);
begin
  geraComponentes;
  geraProjetos;
end;

procedure TfTarefa3.geraComponentes;
begin
   try
      cdsProjeto := TClientDataSet.Create(nil);
      cdsProjeto.Close;
      cdsProjeto.FieldDefs.Clear;
      cdsProjeto.FieldDefs.add('IdProjeto',ftInteger);
      cdsProjeto.FieldDefs.add('NmProjeto',ftString,100);
      cdsProjeto.FieldDefs.add('Valor',ftFloat);
      cdsProjeto.CreateDataSet;

      dsProjeto := TDataSource.Create(nil);
      dsProjeto.DataSet := cdsProjeto;

      gdProjetos.DataSource := dsProjeto;
   except
   end;
end;

procedure TfTarefa3.geraProjetos;
var i : integer;
begin
  try
    for I := 0 to 10 do
     begin
        cdsProjeto.Insert;
        cdsProjeto.FieldByName('IdProjeto').AsInteger := i;
        cdsProjeto.FieldByName('NmProjeto').AsString  := 'Projeto '+ IntToStr(i);
        cdsProjeto.FieldByName('Valor'    ).AsFloat   := Random(1000);
        cdsProjeto.Post;
     end;

     cdsProjeto.IndexFieldNames := 'IdProjeto';
    (cdsProjeto.fieldbyname('Valor') as TNumericField).DisplayFormat := 'R$ #,###.00';
  finally
  end;
end;

end.
