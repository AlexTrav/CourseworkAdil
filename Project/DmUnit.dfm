object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 780
  Top = 180
  Height = 723
  Width = 917
  object ADOConnection1: TADOConnection
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 32
  end
  object SelectQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'login'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pwd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select id From Users'
      'Where login = :login and pwd = :pwd and del = 0')
    Left = 40
    Top = 80
    object SelectQuery1id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object SelectQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'login'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pwd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Select id From Admins'
      'Where login = :login and pwd = :pwd and del = 0')
    Left = 40
    Top = 136
    object SelectQuery2id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object InsertQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'login'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pwd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'fio'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Insert into users'
      '(login, pwd, fio)'
      'Values'
      '(:login, :pwd, :fio)'
      '')
    Left = 120
    Top = 80
    object AutoIncField1: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object InsertQuery2: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'login'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pwd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'fio'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Insert into admins'
      '(login, pwd, fio)'
      'Values'
      '(:login, :pwd, :fio)'
      '')
    Left = 120
    Top = 136
    object AutoIncField2: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object UsersDataSource: TDataSource
    DataSet = SelectQuery3
    Left = 216
    Top = 192
  end
  object AdminsDataSource: TDataSource
    DataSet = SelectQuery4
    Left = 216
    Top = 248
  end
  object SelectQuery3: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Users'
      '')
    Left = 40
    Top = 192
    object SelectQuery3id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SelectQuery3login: TWideStringField
      FieldName = 'login'
      Size = 30
    end
    object SelectQuery3pwd: TWideStringField
      FieldName = 'pwd'
      Size = 30
    end
    object SelectQuery3fio: TWideStringField
      FieldName = 'fio'
      Size = 50
    end
    object SelectQuery3del: TBooleanField
      FieldName = 'del'
    end
    object SelectQuery3balance: TIntegerField
      FieldName = 'balance'
    end
  end
  object SelectQuery4: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Admins'
      '')
    Left = 40
    Top = 248
    object SelectQuery4id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SelectQuery4login: TWideStringField
      FieldName = 'login'
      Size = 30
    end
    object SelectQuery4pwd: TWideStringField
      FieldName = 'pwd'
      Size = 30
    end
    object SelectQuery4fio: TWideStringField
      FieldName = 'fio'
      Size = 50
    end
    object SelectQuery4del: TBooleanField
      FieldName = 'del'
    end
  end
  object UpdateQuery3: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'login'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pwd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'fio'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'balance'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'update users'
      'set'
      '  login = :login,'
      '  pwd = :pwd,'
      '  fio = :fio,'
      '  balance = :balance'
      'WHERE'
      '  id = :id')
    Left = 336
    Top = 192
    object AutoIncField3: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object UpdateQuery4: TADOQuery
    Connection = ADOConnection1
    Parameters = <
      item
        Name = 'login'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'pwd'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'fio'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'update Admins'
      'set'
      '  login = :login,'
      '  pwd = :pwd,'
      '  fio = :fio'
      'WHERE'
      '  id = :id'
      ''
      '')
    Left = 336
    Top = 248
    object AutoIncField5: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
  end
  object SelectQuery5: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Magic_tricks'
      'Where del = 0')
    Left = 40
    Top = 304
    object SelectQuery5id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SelectQuery5tricks: TWideStringField
      FieldName = 'tricks'
      Size = 35
    end
    object SelectQuery5price: TIntegerField
      FieldName = 'price'
    end
    object SelectQuery5count: TIntegerField
      FieldName = 'count'
    end
    object SelectQuery5photo: TWideStringField
      FieldName = 'photo'
      Size = 35
    end
    object SelectQuery5inf: TWideStringField
      FieldName = 'inf'
      Size = 75
    end
    object SelectQuery5delivery_price: TIntegerField
      FieldName = 'delivery_price'
    end
    object SelectQuery5del: TBooleanField
      FieldName = 'del'
    end
  end
  object TricksDataSource: TDataSource
    DataSet = SelectQuery5
    Left = 216
    Top = 304
  end
  object InsertQuery5: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tricks'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'price'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'count'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'photo'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'inf'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'delivery_price'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Insert into Magic_tricks'
      '(tricks, price, [count], photo, inf, delivery_price)'
      ' Values '
      '(:tricks, :price, :count, :photo, :inf, :delivery_price)'
      '')
    Left = 336
    Top = 304
  end
  object UpdateDeletedQuery5: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'del'
        Attributes = [paNullable]
        DataType = ftBoolean
        Size = 1
        Value = Null
      end
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Update Magic_tricks set'
      'del = :del'
      'WHERE id = :id')
    Left = 449
    Top = 304
  end
  object SelectQuery6: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'user_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select d.*, m.photo From Delivery d, Magic_tricks m'
      'Where d.del = 0 and d.user_id = :user_id and d.tricks_id = m.id')
    Left = 40
    Top = 360
    object SelectQuery6id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SelectQuery6tricks_id: TIntegerField
      FieldName = 'tricks_id'
    end
    object SelectQuery6delivery_date: TDateTimeField
      FieldName = 'delivery_date'
    end
    object SelectQuery6delivery_price: TIntegerField
      FieldName = 'delivery_price'
    end
    object SelectQuery6delivery_status: TBooleanField
      FieldName = 'delivery_status'
    end
    object SelectQuery6country: TWideStringField
      FieldName = 'country'
      Size = 35
    end
    object SelectQuery6city: TWideStringField
      FieldName = 'city'
      Size = 35
    end
    object SelectQuery6adress: TWideStringField
      FieldName = 'adress'
      Size = 35
    end
    object SelectQuery6phone: TWideStringField
      FieldName = 'phone'
      Size = 13
    end
    object SelectQuery6count: TIntegerField
      FieldName = 'count'
    end
    object SelectQuery6user_id: TIntegerField
      FieldName = 'user_id'
    end
    object SelectQuery6del: TBooleanField
      FieldName = 'del'
    end
    object SelectQuery6photo: TWideStringField
      FieldName = 'photo'
      Size = 35
    end
  end
  object DeliveryDataSource: TDataSource
    DataSet = SelectQuery6
    Left = 216
    Top = 360
  end
  object InsertQuery6: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tricks_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'delivery_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'delivery_price'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'delivery_status'
        Attributes = [paNullable]
        DataType = ftBoolean
        Size = 1
        Value = Null
      end
      item
        Name = 'country'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'city'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'adress'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'phone'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'count'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'user_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Insert into Delivery'
      
        '(tricks_id,delivery_date, delivery_price, delivery_status, count' +
        'ry, city, adress, phone, [count], user_id)'
      ' Values '
      
        '(:tricks_id, :delivery_date, :delivery_price, :delivery_status, ' +
        ':country, :city, :adress, :phone, :count, :user_id)'
      '')
    Left = 336
    Top = 360
  end
  object UpdateDeletedQuery6: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'del'
        Attributes = [paNullable]
        DataType = ftBoolean
        Size = 1
        Value = Null
      end
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Update Delivery set'
      'del = :del'
      'WHERE id = :id')
    Left = 449
    Top = 360
  end
  object SelectQuery61: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select d.*, m.photo From Delivery d, Magic_tricks m'
      'Where d.del = 0 and d.tricks_id = m.id')
    Left = 112
    Top = 360
    object SelectQuery61id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SelectQuery61tricks_id: TIntegerField
      FieldName = 'tricks_id'
    end
    object SelectQuery61delivery_date: TDateTimeField
      FieldName = 'delivery_date'
    end
    object SelectQuery61delivery_price: TIntegerField
      FieldName = 'delivery_price'
    end
    object SelectQuery61delivery_status: TBooleanField
      FieldName = 'delivery_status'
    end
    object SelectQuery61country: TWideStringField
      FieldName = 'country'
      Size = 35
    end
    object SelectQuery61city: TWideStringField
      FieldName = 'city'
      Size = 35
    end
    object SelectQuery61adress: TWideStringField
      FieldName = 'adress'
      Size = 35
    end
    object SelectQuery61phone: TWideStringField
      FieldName = 'phone'
      Size = 13
    end
    object SelectQuery61count: TIntegerField
      FieldName = 'count'
    end
    object SelectQuery61user_id: TIntegerField
      FieldName = 'user_id'
    end
    object SelectQuery61del: TBooleanField
      FieldName = 'del'
    end
    object SelectQuery61photo: TWideStringField
      FieldName = 'photo'
      Size = 35
    end
  end
  object DeliveryDataSource61: TDataSource
    DataSet = SelectQuery61
    Left = 280
    Top = 360
  end
  object UpdateQuery6: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'delivery_status'
        Attributes = [paNullable]
        DataType = ftBoolean
        Size = 1
        Value = Null
      end
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Update Delivery set'
      'delivery_status = :delivery_status'
      'WHERE id = :id')
    Left = 553
    Top = 360
  end
  object SelectQuery7: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'user_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select * From Orders'
      'Where del = 0 and user_id = :user_id')
    Left = 40
    Top = 416
    object SelectQuery7id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SelectQuery7tricks_id: TIntegerField
      FieldName = 'tricks_id'
    end
    object SelectQuery7price: TIntegerField
      FieldName = 'price'
    end
    object SelectQuery7delivery_date: TDateTimeField
      FieldName = 'delivery_date'
    end
    object SelectQuery7count: TIntegerField
      FieldName = 'count'
    end
    object SelectQuery7user_id: TIntegerField
      FieldName = 'user_id'
    end
    object SelectQuery7Del: TBooleanField
      FieldName = 'Del'
    end
  end
  object OrdersDataSource: TDataSource
    DataSet = SelectQuery7
    Left = 216
    Top = 416
  end
  object InsertQuery7: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'tricks_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'price'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'delivery_date'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'count'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'user_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Insert into Orders'
      '(tricks_id, price, delivery_date, [count], user_id)'
      ' Values '
      '(:tricks_id, :price, :delivery_date, :count, :user_id)'
      '')
    Left = 336
    Top = 416
  end
  object UpdateDeletedQuery7: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'del'
        Attributes = [paNullable]
        DataType = ftBoolean
        Size = 1
        Value = Null
      end
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Update Orders set'
      'del = :del'
      'WHERE id = :id')
    Left = 449
    Top = 416
  end
  object DeleteQuery6: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'user_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Delete from Orders'
      'Where user_id= :user_id')
    Left = 561
    Top = 416
  end
  object InsertQuery66: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Insert into Order_arh'
      '(id, tricks_id, price, delivery_date, user_id, del)'
      'Select id, tricks_id, price, delivery_date, user_id, del'
      'From Orders'
      ''
      '')
    Left = 648
    Top = 416
  end
  object UpdateQueryBalance: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'balance'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'update users'
      'set'
      '  balance = :balance'
      'WHERE'
      '  id = :id')
    Left = 744
    Top = 416
  end
  object SelectQuery8: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select *  From Cash')
    Left = 40
    Top = 472
    object SelectQuery8id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SelectQuery8order_id: TIntegerField
      FieldName = 'order_id'
    end
    object SelectQuery8cash: TIntegerField
      FieldName = 'cash'
    end
    object SelectQuery8user_id: TIntegerField
      FieldName = 'user_id'
    end
    object SelectQuery8del: TBooleanField
      FieldName = 'del'
    end
  end
  object CashDataSource: TDataSource
    DataSet = SelectQuery8
    Left = 216
    Top = 472
  end
  object InsertQuery8: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Insert into Cash (order_id, cash, user_id)'
      'select id, price, user_id'
      'from Orders'
      '')
    Left = 336
    Top = 472
  end
  object SelectQuery9: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Video_tricks'
      'Where del = 0')
    Left = 40
    Top = 536
    object SelectQuery9id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SelectQuery9video: TWideStringField
      FieldName = 'video'
      Size = 25
    end
    object SelectQuery9cost: TIntegerField
      FieldName = 'cost'
    end
    object SelectQuery9inf: TWideStringField
      FieldName = 'inf'
      Size = 50
    end
    object SelectQuery9del: TBooleanField
      FieldName = 'del'
    end
  end
  object VideoDataSource: TDataSource
    DataSet = SelectQuery9
    Left = 216
    Top = 536
  end
  object InsertQuery9: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'video'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'cost'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'inf'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Insert into Video_tricks'
      '(video, [cost], inf)'
      ' Values '
      '(:video, :cost, :inf)'
      '')
    Left = 336
    Top = 536
  end
  object UpdateDeletedQuery8: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'del'
        Attributes = [paNullable]
        DataType = ftBoolean
        Size = 1
        Value = Null
      end
      item
        Name = 'id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Update Video_tricks set'
      'del = :del'
      'WHERE id = :id')
    Left = 449
    Top = 536
  end
  object SelectQuery10: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From My_Video'
      'Where del = 0')
    Left = 40
    Top = 592
    object SelectQuery10id: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object SelectQuery10video_id: TIntegerField
      FieldName = 'video_id'
    end
    object SelectQuery10video: TWideStringField
      FieldName = 'video'
      Size = 35
    end
    object SelectQuery10inf: TWideStringField
      FieldName = 'inf'
      Size = 50
    end
    object SelectQuery10del: TBooleanField
      FieldName = 'del'
    end
  end
  object MyVideoDataSource: TDataSource
    DataSet = SelectQuery10
    Left = 216
    Top = 592
  end
  object InsertQuery10: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'video_id'
        Attributes = [paNullable]
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'video'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'inf'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'Insert into My_Video'
      '(video_id, video, inf)'
      ' Values '
      '(:video_id, :video, :inf)'
      '')
    Left = 336
    Top = 592
  end
  object ReportQuery: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * From Cash')
    Left = 528
    Top = 64
    object ReportQueryid: TAutoIncField
      FieldName = 'id'
      ReadOnly = True
    end
    object ReportQueryorder_id: TIntegerField
      FieldName = 'order_id'
    end
    object ReportQuerycash: TIntegerField
      FieldName = 'cash'
    end
    object ReportQueryuser_id: TIntegerField
      FieldName = 'user_id'
    end
    object ReportQuerydel: TBooleanField
      FieldName = 'del'
    end
  end
  object frxReport1: TfrxReport
    Version = '4.1.38'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44328.956422268500000000
    ReportOptions.LastChange = 44330.941129895830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 528
    Top = 16
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 53.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 25.677180000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1id: TfrxMemoView
          Left = 2.000000000000000000
          Top = 2.362089999999995000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."id"]')
          ParentFont = False
        end
        object frxDBDataset1order_id: TfrxMemoView
          Left = 159.000000000000000000
          Top = 2.362089999999995000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'order_id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."order_id"]')
          ParentFont = False
        end
        object frxDBDataset1user_id: TfrxMemoView
          Left = 291.000000000000000000
          Top = 2.362089999999995000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'user_id'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."user_id"]')
          ParentFont = False
        end
        object frxDBDataset1cash: TfrxMemoView
          Left = 458.000000000000000000
          Top = 2.362089999999995000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'cash'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."cash"]')
          ParentFont = False
        end
        object frxDBDataset1del: TfrxMemoView
          Left = 592.000000000000000000
          Top = 2.362089999999995000
          Width = 41.574830000000000000
          Height = 18.897650000000000000
          DataField = 'del'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = []
          Memo.UTF8 = (
            '[frxDBDataset1."del"]')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        Height = 22.677180000000000000
        Top = 264.567100000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          HAlign = haRight
          Memo.UTF8 = (
            '[Page#]')
        end
      end
      object Header1: TfrxHeader
        Height = 22.677180000000000000
        Top = 132.283550000000000000
        Width = 718.110700000000000000
        object Memo3: TfrxMemoView
          Left = 2.000000000000000000
          Top = 0.716450000000009000
          Width = 100.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169)
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 159.000000000000000000
          Top = 0.716450000000009000
          Width = 104.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#183#1056#176#1056#1108#1056#176#1056#183#1056#176)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 458.000000000000000000
          Top = 0.716450000000009000
          Width = 127.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#8221#1056#181#1056#1029#1057#1034#1056#1110#1056#1105)
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 592.000000000000000000
          Top = 0.716450000000009000
          Width = 127.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1032#1056#1169#1056#176#1056#187#1056#181#1056#1029#1056#1109' '#1056#187#1056#1105)
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Left = 291.000000000000000000
          Top = 0.716450000000009000
          Width = 150.488250000000000000
          Height = 22.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -19
          Font.Name = 'Times New Roman'
          Font.Style = [fsBold]
          Memo.UTF8 = (
            #1056#1113#1056#1109#1056#1169' '#1056#1111#1056#1109#1056#1108#1057#1107#1056#1111#1056#176#1057#8218#1056#181#1056#187#1057#1039)
          ParentFont = False
        end
      end
      object Memo2: TfrxMemoView
        Left = 2.000000000000000000
        Top = 18.000000000000000000
        Width = 126.251097134195100000
        Height = 46.897650000000000000
        DisplayFormat.DecimalSeparator = ','
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          #1056#1115#1057#8218#1057#8225#1056#181#1057#8218' '#1056#1109#1057#8218)
        ParentFont = False
      end
      object SysMemo1: TfrxSysMemoView
        Left = 114.237152865804900000
        Top = 18.000000000000000000
        Width = 126.251097134195100000
        Height = 46.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -27
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        Memo.UTF8 = (
          '[DATE]')
        ParentFont = False
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = ReportQuery
    Left = 600
    Top = 16
  end
end
