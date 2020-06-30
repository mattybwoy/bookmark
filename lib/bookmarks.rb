class Bookmarks
  def self.all
  begin
  output = []
  con = PG.connect :dbname => 'bookmark_manager'#, :user => '',
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
end