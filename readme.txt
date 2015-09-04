usefull commands

run it inside IEx (Interactive Elixir) as:
$ iex -S mix phoenix.server

-----------------------------
S3
Digiramp.Avatar.store("/Users/synthmax/Pictures/squared/fifties/lauren-bacall-2.jpg")


----------------------------
postgresql
$ psql
$ \connect digiramp_2_dev
$ \d
$ \d users



----------------------------
migrations 

$ mix ecto.gen.migration add_comments_table

http://hexdocs.pm/ecto/0.6.0/Ecto.Migration.html

http://www.phoenixframework.org/v0.13.1/docs/mix-tasks

http://www.phoenixframework.org/v0.13.1/docs/mix-tasks#section-ecto-specific-mix-tasks



---------------------------
Noticed I had to restart after running migration

--------------------------
Simple stuff I want to do
make operations on the db
.for_each do



--------------------------
Blue sky
user select an avatar and hits save


--------------------------
Environment variables
Application.get_env(:arc, :access_key_id)
