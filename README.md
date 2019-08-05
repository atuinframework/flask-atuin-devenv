# Flask Atuin development environment: flask-atuin-devenv

This docker container is meant to be used as the development environment for the [SCALEBOX]'s [Flask Atuin] framework.


## What is Atuin?

Atuin is a Flask powered web framework built by [SCALEBOX], an Italian IT Agency, that provides a complete web application skeleton.

Goal of Atuin is mantaining the same developing philosophy when dealing with *traditional* relational database stack and targeting Google App Engine using Datastore. Usually you only need to change the data codebase and nothing else when porting between the two.

Atuin includes some useful flask extensions for common tasks such as authentication, localization, caching. Look at the repository for more details. :)

Atuin is free to use for all.


## What is flask-atuin-devenv container useful for?

This development environment is handy to quick start any project based on the [Flask Atuin] Web Framework. Basically, it just starts a web server for the local development.

**It's highly recommended to use this container through the execution of the complete development environment
of Flask Atuin also made up by the [atuin-tools] container.**

Look at [Flask Atuin] for more information. 


## Autobuild

This container is auto-built on [Docker Hub]

[SCALEBOX]: https://www.scalebox.it
[Flask Atuin]:https://github.com/atuinframework/flask-atuin
[atuin-tools]: https://github.com/atuinframework/atuin-tools
[Docker Hub]: https://hub.docker.com/r/atuinframework/flask-atuin-devenv/
