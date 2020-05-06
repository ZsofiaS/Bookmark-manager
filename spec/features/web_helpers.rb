def connect_to_database
  connection = PG.connect(dbname: 'bookmark_manager_test')

  connection.exec("INSERT INTO bookmarks (title, url) VALUES ('Makers', 'http://www.makersacademy.com');")
  connection.exec("INSERT INTO bookmarks (title, url) VALUES ('Test', 'http://www.destroyallsoftware.com');")
  connection.exec("INSERT INTO bookmarks (title, url) VALUES ('Google','http://www.google.com');")
end
