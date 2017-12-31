class Pokemon

  attr_accessor :name, :type, :db, :id

  def initialize(id = 1, name = "pikachu", type = "electric", db = nil)
    @id = id
    @name = name
    @type = type
    @db = db
  end

  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon(id, name, type) VALUES (?,?,?)", @id, name, type)
  end

  def self.find(id, db)
    data = db.execute("SELECT * FROM pokemon WHERE id = ?;", id)
    return Pokemon.new(data.flatten[0], data.flatten[1],data.flatten[2],data.flatten[3])
  end

  def self.alter_hp(num, db)
    #db.execute("UPDATE pokemon SET hp = ?", val)
    return 0
  end

  def self.id
    return @id
  end

  def self.name
    return @name
  end

  def self.type
    return @type
  end


end
