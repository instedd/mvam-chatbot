module MvamBot

  module Location

    record Adm0, id : Int32, name : String

    record Adm1, id : Int32, name : String, adm0_id : Int32

    record Mkt, id : Int32, name : String, adm1_id : Int32

  end
end
