# Bookmark Project

```
- As a user
- So that I can view my bookmarks
- I would like to see a list of bookmarks


- As a time-pressed user
- So that I can save a website
- I would like to add the site's address and title to bookmark manager


- As a user
- So I can remove my bookmark from Bookmark Manager
- I want to delete a bookmark
```

## Objective
To create a bookmark manager using ruby, sinatra and postgreSQL.
The browser will act as an interface for the bookmark manager and allow the user to create, store and retrieve bookmarks from the database.

## Progress 
Links can be added to the bookmark manager along with a title.
Titles will now be displayed instead of the url and now provide a link to the specified website.
First two user stories have been completed next step will be to add the functionality of deleting bookmarks to the database.

## Improvements
- Implement the delete bookmark function



**Ruby gems required**
- pg
- sinatra
- rack
- capybara
- rspec
- rubocop
- simplecov

## Installation
PostgreSQL installation required, to load up database for manual viewing enter psql bookmark_manager into terminal.
PostgreSQL is a relational database run on a server that can be used with Ruby.
 - connect to psql
 - ```CREATE DATABASE bookmark_manager```
 - ```\c bookmark_manager```
 - ```CREATE TABLE bookmark```
Column names id, url and title

Test database also created 

## Collaborators
mattybwoy, stupot1, Joanne0330,  alessa-lou, avirene, JoshuaNg2332
