object cadProfissionais: TcadProfissionais
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Profissionais'
  ClientHeight = 344
  ClientWidth = 815
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
    Left = 47
    Top = 103
    Width = 99
    Height = 13
    Caption = 'Nome do Profissional'
  end
  object Label3: TLabel
    Left = 8
    Top = 103
    Width = 11
    Height = 13
    Caption = 'ID'
  end
  object Label4: TLabel
    Left = 8
    Top = 159
    Width = 64
    Height = 13
    Caption = 'Especialidade'
  end
  object Busca: TLabel
    Left = 488
    Top = 103
    Width = 28
    Height = 13
    Caption = 'Busca'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 815
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitLeft = -7
    object Label1: TLabel
      Left = 27
      Top = 28
      Width = 266
      Height = 25
      Caption = 'Cadastro de Profissionais'
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
      DataSource = DM.dsProfissionais
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 7
    Top = 216
    Width = 800
    Height = 120
    DataSource = DM.dsProfissionais
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBEdit1: TDBEdit
    Left = 47
    Top = 122
    Width = 417
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsProfissionais
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 122
    Width = 33
    Height = 21
    DataField = 'id'
    DataSource = DM.dsProfissionais
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 178
    Width = 456
    Height = 21
    DataField = 'especialidade'
    DataSource = DM.dsProfissionais
    TabOrder = 4
  end
  object Edit1: TEdit
    Left = 488
    Top = 122
    Width = 320
    Height = 21
    TabOrder = 5
    Text = 'Edit1'
  end
end
