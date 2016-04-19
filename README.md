# atuin-flask-webdev

## Read This first

This container is not meant to be used *as is* but part of the docker-compose
environment started for development in Flask Atuin.

## What is Atuin?

Atuin is a Flask powered web framework built by SCALEBOX, an Italian IT Agency,
that provides a complete web application skeleton.

Goal of Atuin is mantaining the same developing philosopy when dealing with *traditional*
relational database stack and targeting Google App Engine using Datastore.
Usually you only need to change the data codebase and nothing else when porting between the two.

Atuin includes some useful flask extensions for common tasks such as authentication,
localization, caching. Look at the repository for more details. :)

Atuin is free to use for all.

## And this container?

This container starts the web development server. Includes base Atuin dependencies.

It's a base container to derive any custom packages needed in local projects.

## Can I use your container?

Of course. Use as a sample, ask us anything about it. But be careful, this is
made specifically for Atuin.

## Autobuild

This container is auto-built on [Docker Hub](https://hub.docker.com/r/scalebox/atuin-flask-webdev/)
