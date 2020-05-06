unit mModelEntidadesFactory_U;

interface

uses
  mModelConexao_U;

  type
      TModelEntidadesFactory = class(TInterfacedObject, iModelEntidadeFactory)
      private
        FProduto    : iModelEntidade;
        FCliente    : iModelEntidade;
        FFornecedor : iModelEntidade;
        FPagar      : iModelEntidade;
      public
        constructor Create;
        destructor Destroy; override;
        class function New  : iModelEntidadeFactory;
        function Produto    : iModelEntidade;
        function Cliente    : iModelEntidade;
        function Fornecedor : iModelEntidade;
        function Pagar      : iModelEntidade;
      end;

implementation

uses
  mModelEntidadeProduto_U, mModelEntidadeCliente_U, mModelEntidadeFornecedor_U,
  mModelEntidadePagar_U;

{ TModelEntidadesFactory }

constructor TModelEntidadesFactory.Create;
begin

end;

destructor TModelEntidadesFactory.Destroy;
begin

  inherited;
end;

function TModelEntidadesFactory.Fornecedor: iModelEntidade;
begin
  if not Assigned(FFornecedor) then
    FFornecedor := TModelEntidadeFornecedor.New;
  Result := FFornecedor;
end;

class function TModelEntidadesFactory.New: iModelEntidadeFactory;
begin
  Result := Self.Create;
end;

function TModelEntidadesFactory.Pagar: iModelEntidade;
begin
  if not Assigned(FPagar) then
    FPagar := TModelEntidadePagar.New;
  Result := FPagar;
end;

function TModelEntidadesFactory.Produto: iModelEntidade;
begin
  if not Assigned(FProduto) then
    FProduto := TModelEntidadeProduto.New;
  Result := FProduto;
end;

function TModelEntidadesFactory.Cliente: iModelEntidade;
begin
  if not Assigned(FCliente) then
    FCliente := TModelEntidadeCliente.New;
  Result := FCliente;
end;

end.
