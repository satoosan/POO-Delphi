# POO com Delphi

## Descrição
Este projeto implementa uma hierarquia de classes para representar clientes de um sistema, diferenciando entre clientes pessoa física e pessoa jurídica. O código está escrito em Delphi/Object Pascal.

## Estrutura do Projeto
O projeto consiste em um arquivo principal (`cliente.pas`), que define as classes:

### 1. `TCliente`
- Classe base para representar um cliente.
- Possui os atributos:
  - `Nome`: Nome do cliente.
  - `Email`: E-mail do cliente, com validação para garantir um formato correto.
- Métodos:
  - `ExibirDados()`: Método abstrato que deve ser sobrescrito pelas classes derivadas.

### 2. `TClientePessoaFisica`
- Herda de `TCliente`.
- Adiciona o atributo:
  - `CPF`: Cadastro de Pessoa Física.
- Implementa:
  - `ExibirDados()`: Retorna uma string formatada com nome e CPF.

### 3. `TClientePessoaJuridica`
- Herda de `TCliente`.
- Adiciona o atributo:
  - `CNPJ`: Cadastro Nacional da Pessoa Jurídica.
- Implementa:
  - `ExibirDados()`: Retorna uma string formatada com nome e CNPJ.

## Exemplo de Uso
Segue um exemplo de como instanciar e utilizar as classes:

```delphi
var
  ClientePF: TClientePessoaFisica;
  ClientePJ: TClientePessoaJuridica;
begin
  ClientePF := TClientePessoaFisica.Create;
  ClientePF.Nome := 'João Silva';
  ClientePF.CPF := '123.456.789-00';
  ClientePF.Email := 'joao@email.com';
  Writeln(ClientePF.ExibirDados);

  ClientePJ := TClientePessoaJuridica.Create;
  ClientePJ.Nome := 'Empresa XYZ';
  ClientePJ.CNPJ := '12.345.678/0001-99';
  ClientePJ.Email := 'contato@empresaxyz.com';
  Writeln(ClientePJ.ExibirDados);

  ClientePF.Free;
  ClientePJ.Free;
end.
```

## Requisitos
- Delphi 10 ou superior.
- Conhecimento em Programação Orientada a Objetos (POO) com Delphi.

