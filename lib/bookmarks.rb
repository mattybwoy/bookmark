class Bookmarks

  # attr_reader :id, :title, :url

  # def initialize(id:, title:, url:)
  #   @id  = id
  #   @title = title
  #   @url = url
  # end

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
  def self.add(url,title)
    begin
      ENV['RACK_ENV'] == 'test' ? db_name = 'bookmark_manager_test' : db_name = 'bookmark_manager'
      con = PG.connect :dbname => db_name#, :user => 'postgres',
      #:password => ''
      p "#{title}"
      rs = con.exec "INSERT INTO bookmarks (url, title) VALUES ('#{url}', '#{title}')"
      p "#{title}"
      #Bookmark.new(id: result[0]['id'], title: result[0]['title'], url: result[0]['url'])
    rescue PG::Error => e
        puts e.message 

    ensure
      con.close if con

      end

    end
end
