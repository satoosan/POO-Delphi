unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, cliente;

type
  TFrmPrincipal = class(TForm)
    btnPF: TButton;
    btnPJ: TButton;
    procedure btnPFClick(Sender: TObject);
    procedure btnPJClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

procedure TFrmPrincipal.btnPFClick(Sender: TObject);
var
  cliente: TClientePessoaFisica;

begin
  cliente := TClientepessoaFisica.Create;
  cliente.Nome := 'Heber Stein Mazutti';
  cliente.Email := 'heber@gmail.com';
  cliente.CPF:= '000.000.000-00;';

  showmessage(cliente.ExibirDados());


end;

procedure TFrmPrincipal.btnPJClick(Sender: TObject);

var
  cliente: TClientePessoaJuridica;

begin
cliente := TClientePessoaJuridica.Create;
  cliente.Nome := '99 Coders';
  cliente.Email := 'contato@teste.com';
  cliente.CNPJ:= '12.345.678/0001-00';

  showmessage(cliente.ExibirDados());
end;

{
Resumindo:
-----------------------------------------------------
Abstra  o: Definir os atributos essenciais de um
           cliente (nome, e-mail) e ignorar detalhes espec ficos.

Heran a: Criar TClientePessoaFisica e TClientePessoaJuridica
         que herdam de TCliente.

Polimorfismo: Usar o mesmo m todo (ExibirDados) para clientes
             f sicos e jur dicos, com implementa  es diferentes.

Encapsulamento: Proteger atributos internos, como
              validar o e-mail antes de popular ele.
}


end.

