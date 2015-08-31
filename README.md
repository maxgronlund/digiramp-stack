# DigiRAMP-stack

A super high performance stack with basic webapp functions and a cool API
It shoul be able to scale to milions and milions transactions without any performance degradation
Ths user to useage of resources like computers and electricity should top notch
I have desided to go for erlang as the underlaying technology.
For the frontend I have desided to try Reactjs hence it has the best scores in benchmarks
I want to be able to build desktop aps and mobile aps with ease as hybrid applications
I want to provide a SDK for HW developers that makes it easy to access the DigiRAMP stack API 

Where I'am

  1. Elixir syntax
  2. Phoenix webframework
  3. Continuous Integration on semaphoreci
  4. Deployment on heroku
  5. Postgresql and ecto running
  
On my todo list is

  1. Fullblown signup up with oAuth2 (I got a version with github running)
  2. Save assets on Amazon s3
  3. Use Elastic transcoding for convertion of images and audio
  4. Integrate Reactjs
  5. Research on https://hadoop.apache.org/


To start the DigiRAMP-stack:

  1. Install dependencies with `mix deps.get`
  2. Create and migrate your database with `mix ecto.create && mix ecto.migrate`
  3. Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: http://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix

[![Build Status](https://semaphoreci.com/api/v1/projects/a8e53317-ff17-494e-99d7-cc31cb368aa0/525713/badge.svg)](https://semaphoreci.com/synthmax/digiramp-stack)