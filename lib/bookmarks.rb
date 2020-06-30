class Bookmarks

  def self.all
    begin
      ENV['RACK_ENV'] == 'test' ? db_name = 'bookmark_manager_test' : db_name = 'bookmark_manager'
      output = []
      con = PG.connect :dbname => db_name#, :user => 'postgres',
      #:password => ''
      rs = con.exec "SELECT * FROM bookmarks"
      rs.each do |row|
        output <<  row['url']
      end
      output

    rescue PG::Error => e
        puts e.message 

    ensure
      con.close if con

    end

  end
  def self.add(input)
    begin
      ENV['RACK_ENV'] == 'test' ? db_name = 'bookmark_manager_test' : db_name = 'bookmark_manager'
      con = PG.connect :dbname => db_name#, :user => 'postgres',
      #:password => ''
      rs = con.exec "INSERT INTO bookmarks (url) VALUES ('#{input}')"

    rescue PG::Error => e
        puts e.message 

    ensure
      con.close if con

      end

    end
end
