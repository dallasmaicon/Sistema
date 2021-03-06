unit mModelEntidadeProduto_U;

interface

uses
  mModelConexao_U, Data.DB;

  Type
    TModelEntidadeProduto = class(TInterfacedObject, iModelEntidade)
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

{ TModelEntidadeProduto }

constructor TModelEntidadeProduto.Create;
begin
  FQuery := TModelConexaoFactory.New.Query;
end;

function TModelEntidadeProduto.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := TDataSet(FQuery.Query);
end;

destructor TModelEntidadeProduto.Destroy;
begin

  inherited;
end;

procedure TModelEntidadeProduto.ExecSQL(AParam, AValue: string);
begin
  FQuery.ExecSQL('INSERT INTO PRODUTO (' + AParam + ') VALUES (' + AValue + ');');
end;

class function TModelEntidadeProduto.New: iModelEntidade;
begin
  Result := Self.Create;
end;

procedure TModelEntidadeProduto.Open(aFiltro: string);
begin
  FQuery.Open('SELECT * FROM PRODUTO', aFiltro);
end;

function TModelEntidadeProduto.ProximoRegsitro: Integer;
begin
  FQuery.ProximoRegsitro('PRODUTO');
end;

end.
