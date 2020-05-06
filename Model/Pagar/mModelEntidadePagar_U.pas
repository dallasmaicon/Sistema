unit mModelEntidadePagar_U;

interface

uses
  mModelConexao_U, Data.DB;

  type
    TModelEntidadePagar = class(TInterfacedObject, iModelEntidade)
      private
        FQuery : iModelQuery;
      public
        constructor Create;
        destructor Destroy; override;
        class function New : iModelEntidade;
        function DataSet ( aValue : TDataSource ) : iModelEntidade;
        procedure Open(aFiltro: string);
        procedure ExecSQL(AParam, AValue: string);
        function ProximoRegsitro : Integer;
    end;

implementation

uses
  mModelConexaoFactory_U;

{ TModelEntidadePagar }

constructor TModelEntidadePagar.Create;
begin
  FQuery := TModelConexaoFactory.New.Query;
end;

function TModelEntidadePagar.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := TDataSet(FQuery.Query);
end;

destructor TModelEntidadePagar.Destroy;
begin

  inherited;
end;

procedure TModelEntidadePagar.ExecSQL(AParam, AValue: string);
begin
  FQuery.ExecSQL('INSERT INTO CONTASPAGAR (' + AParam + ') VALUES (' + AValue + ');');
end;

class function TModelEntidadePagar.New: iModelEntidade;
begin
  Result := Self.Create;
end;

procedure TModelEntidadePagar.Open;
begin
  FQuery.Open('SELECT * FROM CONTASPAGAR', '');
end;

function TModelEntidadePagar.ProximoRegsitro: Integer;
begin
  Result := FQuery.ProximoRegsitro('CONTASPAGAR');
end;

end.
