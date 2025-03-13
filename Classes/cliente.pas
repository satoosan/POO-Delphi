unit cliente;

interface

uses
  System.SysUtils;

type
  TCliente = class

  private
    FEmail: string;
    FNome: string;
    procedure SetEmail(const Value: string);

  public
    property Nome: string read FNome write FNome;
    property Email: string read FEmail write SetEmail;
    function ExibirDados(): string; virtual; abstract;
  end;

type
  TClientePessoaFisica = class(TCliente)

  private
    FCPF: string;
  public
    property CPF: string read FCPF write FCPF;
    function ExibirDados(): string; override;
  end;

type
  TClientePessoaJuridica = class(TCliente)

  private
    FCNPJ: string;

  public
  property CNPJ: string read FCNPJ write FCNPJ;
  function ExibirDados(): string; override;
  end;


implementation

function TClientePessoaFisica.ExibirDados: string;
begin
   Result := 'Nome: ' + Nome + ' - CPF: ' + CPF;
end;

{ TClientePessoaJuridica }

function TClientePessoaJuridica.ExibirDados: string;
begin
    Result := 'Nome: ' + Nome + ' - CNPJ: ' + CNPJ;
end;

{ TCliente }

procedure TCliente.SetEmail(const Value: string);
begin
  if Pos('@', Value) = 0 then
    raise Exception.Create('E-mail inválido');

  FEmail := Value;
end;

end.
