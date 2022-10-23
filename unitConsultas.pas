unit unitConsultas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TConsultas = class(TForm)
    opcoes: TRadioGroup;
    txtConsulta: TEdit;
    lblConsulta: TLabel;
    btnBusca: TButton;
    DBGrid1: TDBGrid;
    procedure opcoesClick(Sender: TObject);
    procedure btnBuscaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Consultas: TConsultas;

implementation

{$R *.dfm}

uses unitDM;

procedure TConsultas.btnBuscaClick(Sender: TObject);
begin
  DM.queryAgendamento.Close;
  DM.queryAgendamento.SQL.Clear;

  if (opcoes.ItemIndex = 0) then
    begin
      DM.queryAgendamento.SQL.Add('SELECT p.id, p.nome, a.dataconsulta, f.nome, f.especialidade FROM pacientes p JOIN agendamentos a ON p.id = a.idpaciente JOIN profissionais f ON f.id = a.idprofissional WHERE p.nome LIKE :pConsulta ORDER BY p.nome;');
      DM.queryAgendamento.ParamByName('pConsulta').AsString := txtConsulta.Text+'%'
    end

else
     begin
      DM.queryAgendamento.SQL.Add('SELECT p.id, p.nome, a.dataconsulta, f.nome, f.especialidade FROM pacientes p JOIN agendamentos a ON p.id = a.idpaciente JOIN profissionais f ON f.id = a.idprofissional WHERE f.nome LIKE :pConsulta ORDER BY f.nome;');
      DM.queryAgendamento.ParamByName('pConsulta').AsString := txtConsulta.Text+'%'
    end;

  DM.queryAgendamento.Open;
end;

procedure TConsultas.FormActivate(Sender: TObject);
begin
  DM.queryAgendamento.Close;
  DM.queryAgendamento.SQL.Clear;
  DM.queryAgendamento.SQL.Add('SELECT p.id, p.nome, a.dataconsulta, f.nome, f.especialidade FROM pacientes p JOIN agendamentos a ON p.id = a.idpaciente JOIN profissionais f ON f.id = a.idprofissional ORDER BY p.nome;');
  DM.queryAgendamento.Open;
end;

procedure TConsultas.opcoesClick(Sender: TObject);
begin
  if (opcoes.ItemIndex = 0) then
    begin
      lblConsulta.Caption := 'Digite o Nome do Paciente';
    end

    else

    begin
      lblConsulta.Caption := 'Digite o Nome do Médico';
    end;
end;

end.
