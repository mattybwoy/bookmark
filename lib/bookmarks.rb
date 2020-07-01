class Bookmarks

  def self.all
    begin
      ENV['RACK_ENV'] == 'test' ? db_name = 'bookmark_manager_test' : db_name = 'bookmark_manager'
      con = PG.connect :dbname => db_name#, :user => 'postgres',
      #:password => ''
      rs = con.exec("SELECT * FROM bookmarks;")
      rs.map { |row|row['title'] }

    rescue PG::Error => e
        puts e.message 

    ensure
      con.close if con

    end

  end
  def self.add(input, title)
    begin
      ENV['RACK_ENV'] == 'test' ? db_name = 'bookmark_manager_test' : db_name = 'bookmark_manager'
      con = PG.connect :dbname => db_name#, :user => 'postgres',
      #:password => ''
      rs = con.exec "INSERT INTO bookmarks (url, title) VALUES ('#{input}', '#{title}')"

    rescue PG::Error => e
        puts e.message 

    ensure
      con.close if con

      end

    end
end
