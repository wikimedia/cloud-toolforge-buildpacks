uwsgi
=====

The `uwsgi` buildpack configures uwsgi to run as the default launch process
for the built image. It replaces what `webservice-runner` used to do.

It will run unconditionally for Python projects, and requires that a
Python buildpack already be installed.

Users can customize uwsgi's behavior by creating a `uwsgi.ini` file.
