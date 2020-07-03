# Bookmark Project

**First user story**
- As a user
- So that I can view my bookmarks
- I would like to see a list of bookmarks

**Second user story**
- As a time-pressed user
- So that I can save a website
- I would like to add the site's address and title to bookmark manager

**Third user story**
- As a user
- So I can remove my bookmark from Bookmark Manager
- I want to delete a bookmark

Progress so far
Links can be added to the bookmark manager along with a title.
Titles will now be displayed instead of the url and now provide a link to the specified website.
Latest, first two user stories have been completed next step will be to add the functionality of deleting bookmarks to the database.

**Ruby gems required**
- pg
- sinatra
- rack
- capybara
- rspec
- rubocop
-simplecov

## Database installation instructions
PostgreSQL installation required, to load up database for manual viewing enter psql bookmark_manager into terminal.
PostgreSQL is a relational database run on a server that can be used with Ruby.
 - CREATE DATABASE bookmark_manager
 - CREATE TABLE bookmark
Column names id, url and title

