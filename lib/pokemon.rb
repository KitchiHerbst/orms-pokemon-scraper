class Pokemon

    attr_accessor :id, :name, :type, :db

    

    def initialize(id:, name:, type:, db:)
        @id=id
        @name=name
        @type=type
        @db=db
    end

    def self.save(name,type,db)
         db.execute("INSERT INTO pokemon (name,type) VALUES (?,?);", name, type)
        #binding.pry
    end

    def self.find(id_num,db)
        #binding.pry
        #pokemon = db.execute("SELECT * FROM pokemon WHERE id = ?",id_bar).flatten
        pokemon = db.execute("SELECT * FROM pokemon WHERE id=?", id_num).flatten
        # id_number = pokemon[0][0]
        # name = pokemon[0][1]
        # type = pokemon[0][2]
        #binding.pry
        Pokemon.new(id: pokemon[0], name: pokemon[1], type: pokemon[2], db: db)
        
        #Pokemon.new(id_number,name, type, db)

        #Pokemon.save(name,type,db)
    end

    
  
end
