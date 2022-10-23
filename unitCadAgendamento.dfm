object formCadAgendamentos: TformCadAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Agendamentos'
  ClientHeight = 400
  ClientWidth = 859
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 27
    Top = 109
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label4: TLabel
    Left = 121
    Top = 109
    Width = 41
    Height = 13
    Caption = 'Paciente'
  end
  object Label3: TLabel
    Left = 27
    Top = 155
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label5: TLabel
    Left = 121
    Top = 155
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label6: TLabel
    Left = 345
    Top = 201
    Width = 64
    Height = 13
    Caption = 'Especialidade'
  end
  object Label7: TLabel
    Left = 27
    Top = 201
    Width = 33
    Height = 13
    Caption = 'M'#233'dico'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 859
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 27
      Top = 28
      Width = 156
      Height = 25
      Caption = 'Agendamentos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 445
      Top = 28
      Width = 390
      Height = 33
      DataSource = DM.dsAgendamentos
      TabOrder = 0
    end
  end
  object btnConsultas: TButton
    Left = 560
    Top = 180
    Width = 275
    Height = 57
    Caption = 'Consultar Agendamentos'
    TabOrder = 1
    OnClick = btnConsultasClick
  end
  object DBGrid2: TDBGrid
    Left = 27
    Top = 262
    Width = 808
    Height = 120
    DataSource = DM.dsAgendamentos
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 121
    Top = 128
    Width = 376
    Height = 21
    DataField = 'idpaciente'
    DataSource = DM.dsAgendamentos
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsPacientes
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 27
    Top = 128
    Width = 78
    Height = 21
    DataField = 'idpaciente'
    DataSource = DM.dsAgendamentos
    TabOrder = 4
  end
  object txtData: TDBEdit
    Left = 27
    Top = 174
    Width = 78
    Height = 21
    DataField = 'dataconsulta'
    DataSource = DM.dsAgendamentos
    TabOrder = 5
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 27
    Top = 220
    Width = 312
    Height = 21
    DataField = 'idprofissional'
    DataSource = DM.dsAgendamentos
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsProfissionais
    TabOrder = 6
  end
  object DBEdit3: TDBEdit
    Left = 345
    Top = 220
    Width = 152
    Height = 21
    DataField = 'especialidade'
    DataSource = DM.dsProfissionais
    ReadOnly = True
    TabOrder = 7
  end
  object Button1: TButton
    Left = 560
    Top = 117
    Width = 275
    Height = 57
    Caption = 'Inserir Agendamento'
    TabOrder = 8
    OnClick = Button1Click
  end
end
