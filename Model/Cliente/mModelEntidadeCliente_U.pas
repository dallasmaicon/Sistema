unit mModelEntidadeCliente_U;

interface

uses
  mModelConexao_U, Data.DB;

  type
    TModelEntidadeCliente = class(TInterfacedObject, iModelEntidade)
      private
        FQuery : iModelQuery;
      public
        constructor Create;
        destructor Destroy; override;
        class function New : iModelEntidade;
        function DataSet ( aValue : TDataSource ) : iModelEntidade;
        procedure Open(aFiltro: string);
        procedure ExecSQL(AParam, AValue: string);
        function ProximoRegsitro: Integer;
    end;

implementation

uses
  mModelConexaoFactory_U;

{ TModelEntidadeCliente }

constructor TModelEntidadeCliente.Create;
begin
  FQuery := TModelConexaoFactory.New.Query;
end;

function TModelEntidadeCliente.DataSet(aValue: TDataSource): iModelEntidade;
begin
  Result := Self;
  aValue.DataSet := TDataSet(FQuery.Query);
end;

destructor TModelEntidadeCliente.Destroy;
begin

  inherited;
end;

procedure TModelEntidadeCliente.ExecSQL(AParam, AValue: string);
begin
  FQuery.ExecSQL('INSERT INTO CLIENTE (' + AParam + ') VALUES (' + AValue + ');');
end;

class function TModelEntidadeCliente.New: iModelEntidade;
begin
  Result := Self.Create;
end;

procedure TModelEntidadeCliente.Open(aFiltro: string);
begin
  FQuery.Open('SELECT * FROM CLIENTE', aFiltro);
end;

function TModelEntidadeCliente.ProximoRegsitro: Integer;
begin
  FQuery.ProximoRegsitro('CLIENTE');
end;

end.
