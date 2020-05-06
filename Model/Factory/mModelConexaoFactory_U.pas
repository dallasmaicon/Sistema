unit mModelConexaoFactory_U;

interface

uses
  mModelConexao_U;

  Type
    TModelConexaoFactory = class(TInterfacedObject, iModelConexaoFactory)
      private
      public
        constructor Create;
        destructor Destroy; override;
        class function New : iModelConexaoFactory;
        function Conexao : iModelConexao;
        function Query : iModelQuery;
    end;

implementation

{ TModelConexaoFactory }

function TModelConexaoFactory.Conexao: iModelConexao;
begin
  Result := TModelFiredacConexao.New;
end;

constructor TModelConexaoFactory.Create;
begin

end;

destructor TModelConexaoFactory.Destroy;
begin

  inherited;
end;

class function TModelConexaoFactory.New: iModelConexaoFactory;
begin
  Result := Self.Create;
end;

function TModelConexaoFactory.Query: iModelQuery;
begin
  Result := TModelFiredacQuery.New(Self.Conexao);
end;

end.
