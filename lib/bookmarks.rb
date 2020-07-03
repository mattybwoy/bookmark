class Bookmarks

  attr_reader :id, :title, :url

  def initialize(id, title, url)
    @id  = id
    @title = title
    @url = url
  end

  def self.all
    begin
      ENV['RACK_ENV'] == 'test' ? db_name = 'bookmark_manager_test' : db_name = 'bookmark_manager'
      con = PG.connect :dbname => db_name#, :user => 'postgres',
      #:password => ''
      rs = con.exec("SELECT * FROM bookmarks;")
      rs.map { |row|Bookmarks.new(row['id'], row['title'], row['url'] ) }

    rescue PG::Error => e
        puts e.message 

    ensure
      con.close if con

    end

  end
  def self.add(title, url)
    begin
      ENV['RACK_ENV'] == 'test' ? db_name = 'bookmark_manager_test' : db_name = 'bookmark_manager'
      con = PG.connect :dbname => db_name#, :user => 'postgres',
      #:password => ''
      rs = con.exec "INSERT INTO bookmarks (title, url) VALUES ('#{title}','#{url}')"
      #Bookmark.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
    rescue PG::Error => e
        puts e.message 

    ensure
      con.close if con

      end

    end
end
