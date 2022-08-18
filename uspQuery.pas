unit uspQuery;

interface

uses
  System.SysUtils, System.Classes, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TspQuery = class(TFDQuery)
  private
    { Private declarations }
    FspCondicoes: TStringList;
    FspTabelas: TStringList;
    FspColunas: TStringList;

  protected
    { Protected declarations }
  public
    { Public declarations }
    function GeraSQL  : string;
  published
    { Published declarations }
    property spColunas: TStringList read FspColunas write FspColunas;
    property spTabelas: TStringList read FspTabelas write FspTabelas;
    property spCondicoes: TStringList read FspCondicoes write FspCondicoes;
  end;

implementation

{ TspQuery }

function TspQuery.GeraSQL : string;
var
   SQL, Colunas, Condicoes : string;
   i : integer;
begin
   try
      if spTabelas.Count > 1 then
        raise exception.create('Deve ser informado apenas uma tabela para realizar a consulta!');

      SQL := 'SELECT ';
      if Trim(spColunas.Text) = String.Empty then
        SQL := SQL + ' * '
      else
        Begin
          if  spColunas.count > 1 then
            for I := 0 to spColunas.Count - 1 do
              begin
                if i = spColunas.Count - 1 then
                   Colunas := Colunas + spColunas.Strings[i]
                else
                   Colunas := Colunas + spColunas.Strings[i] + ','
              end
           else
               colunas := spColunas.Text;
        END;

      if Trim(spCondicoes.Text) <> String.Empty  then
        for i := 0 to spCondicoes.Count - 1 DO
          begin
            if i = 0 then
              Condicoes :=  ' WHERE ' + spCondicoes.Strings[i]
            else
              Condicoes := Condicoes + ' AND ' + spCondicoes.Strings[i]
          end;

      SQL := SQL + Colunas  + ' FROM ' +  spTabelas.Text + Condicoes;
   Finally
     result := SQL;
   end;
end;

end.
