object Consultas: TConsultas
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consultas'
  ClientHeight = 487
  ClientWidth = 661
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object lblConsulta: TLabel
    Left = 240
    Top = 17
    Width = 125
    Height = 13
    Caption = 'Digite o Nome do Paciente'
  end
  object opcoes: TRadioGroup
    Left = 8
    Top = 8
    Width = 209
    Height = 57
    Caption = 'Op'#231#245'es de Consulta'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Paciente'
      'M'#233'dico')
    TabOrder = 0
    OnClick = opcoesClick
  end
  object txtConsulta: TEdit
    Left = 244
    Top = 36
    Width = 409
    Height = 21
    TabOrder = 1
  end
  object btnBusca: TButton
    Left = 8
    Top = 71
    Width = 641
    Height = 42
    Caption = 'Realizar Consulta'
    TabOrder = 2
    OnClick = btnBuscaClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 134
    Width = 641
    Height = 345
    DataSource = DM.dsQueryAgendamento
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Paciente'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 223
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'dataconsulta'
        Title.Caption = 'Data da Consulta'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome_1'
        Title.Caption = 'M'#233'dico'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 117
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Title.Caption = 'Especialidade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end>
  end
end
