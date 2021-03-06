unit mModelEntidadeFornecedor_U;

interface

uses
  mModelConexao_U, Data.DB;

  Type
    TModelEntidadeFornecedor = class(TInterfacedObject, iModelEntidade)
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

{ TModelEntidadeFornecedor }

constructor TModelEntidadeFornecedor.Create;
begin
  FQuery := TModelConexaoFactory.New.Query;
end;

function TModelEntidadeFornecedor.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := TDataSet(FQuery.Query);
end;

destructor TModelEntidadeFornecedor.Destroy;
begin

  inherited;
end;

procedure TModelEntidadeFornecedor.ExecSQL(AParam, AValue: string);
begin
  FQuery.ExecSQL('INSERT INTO FORNECEDOR (' + AParam + ') VALUES (' + AValue + ');');
end;

class function TModelEntidadeFornecedor.New: iModelEntidade;
begin
  Result := Self.Create;
end;

procedure TModelEntidadeFornecedor.Open(aFiltro: string);
begin
  FQuery.Open('SELECT * FROM FORNECEDOR', aFiltro);
end;

function TModelEntidadeFornecedor.ProximoRegsitro: Integer;
begin
  FQuery.ProximoRegsitro('FORNECEDOR');
end;

end.
