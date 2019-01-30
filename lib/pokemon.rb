class Pokemon
  def initialize(id, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
  end

def self.save(id, name, type, db)
  database_connection.execute("INSERT INTO pokemon (id, name, db) VALUES (?, ?, ?)",id, name, db)
  end
end
