object formCadAgendamentos: TformCadAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Agendamentos'
  ClientHeight = 449
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
    Top = 165
    Width = 23
    Height = 13
    Caption = 'Data'
  end
  object Label5: TLabel
    Left = 121
    Top = 165
    Width = 23
    Height = 13
    Caption = 'Hora'
  end
  object Label6: TLabel
    Left = 27
    Top = 221
    Width = 64
    Height = 13
    Caption = 'Especialidade'
  end
  object Label7: TLabel
    Left = 27
    Top = 277
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
    ExplicitWidth = 785
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
      Left = 371
      Top = 28
      Width = 390
      Height = 33
      DataSource = DM.dsAgendamentos
      TabOrder = 0
    end
  end
  object txtid: TDBEdit
    Left = 27
    Top = 128
    Width = 73
    Height = 21
    DataField = 'id'
    DataSource = DM.dsAgendamentos
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 121
    Top = 128
    Width = 256
    Height = 21
    DataField = 'id_paciente'
    DataSource = DM.dsAgendamentos
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsPacientes
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 27
    Top = 184
    Width = 69
    Height = 21
    DataField = 'data'
    DataSource = DM.dsAgendamentos
    MaxLength = 10
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 121
    Top = 184
    Width = 73
    Height = 21
    DataField = 'hora'
    DataSource = DM.dsAgendamentos
    MaxLength = 5
    TabOrder = 4
  end
  object DBComboBox1: TDBComboBox
    Left = 27
    Top = 240
    Width = 167
    Height = 21
    DataField = 'especialidade'
    DataSource = DM.dsAgendamentos
    Items.Strings = (
      'Cardiologista'
      'Nutricionista'
      'Ortopedista')
    TabOrder = 5
  end
  object DBEdit3: TDBEdit
    Left = 27
    Top = 296
    Width = 350
    Height = 21
    DataField = 'medico'
    DataSource = DM.dsAgendamentos
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 408
    Top = 109
    Width = 433
    Height = 324
    DataSource = DM.dsAgendamentos
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Title.Caption = 'Hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Title.Caption = 'Especialidade'
        Visible = True
      end>
  end
end
