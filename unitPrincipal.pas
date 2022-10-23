unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Menus, Vcl.Imaging.jpeg;

type
  TformPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Sistema1: TMenuItem;
    Sair1: TMenuItem;
    Cadastros1: TMenuItem;
    Pacientes1: TMenuItem;
    Agendamentos1: TMenuItem;
    Panel1: TPanel;
    btnPacientes: TBitBtn;
    Image1: TImage;
    btnProfissionais: TBitBtn;
    btnAgendamentos: TBitBtn;
    Profissionais1: TMenuItem;
    procedure Sair1Click(Sender: TObject);
    procedure Pacientes1Click(Sender: TObject);
    procedure Agendamentos1Click(Sender: TObject);
    procedure btnPacientesClick(Sender: TObject);
    procedure btnProfissionaisClick(Sender: TObject);
    procedure btnAgendamentosClick(Sender: TObject);
    procedure Profissionais1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPrincipal: TformPrincipal;

implementation

{$R *.dfm}

uses unitCadPaciente, unitCadAgendamento, unitCadastroProfissionais;

procedure TformPrincipal.Agendamentos1Click(Sender: TObject);
begin
  formCadAgendamentos.ShowModal;
end;

procedure TformPrincipal.Pacientes1Click(Sender: TObject);
begin
  formCadPacientes.ShowModal;
end;

procedure TformPrincipal.Profissionais1Click(Sender: TObject);
begin
  cadProfissionais.ShowModal;
end;

procedure TformPrincipal.Sair1Click(Sender: TObject);
begin
  Application.Terminate;
end;


procedure TformPrincipal.btnProfissionaisClick(Sender: TObject);
begin
  cadProfissionais.ShowModal;
end;

procedure TformPrincipal.btnAgendamentosClick(Sender: TObject);
begin
  formCadAgendamentos.ShowModal;
end;

procedure TformPrincipal.btnPacientesClick(Sender: TObject);
begin
  formCadPacientes.ShowModal;
end;

end.
