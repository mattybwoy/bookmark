


def test_database(mode)

   begin

    output = []
    con = PG.connect :dbname => 'bookmark_manager_test', :user => 'postgres',
    :password => ''

case mode
    when 'empty' then con.exec "TRUNCATE TABLE bookmarks"
    when 'setup' then con.exec "INSERT INTO bookmarks (url) VALUES ('http://www.test.com')"
end

rescue PG::Error => e
      puts e.message 

  ensure
    con.close if con

  end

end
