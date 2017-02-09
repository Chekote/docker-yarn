A [Docker](https://www.docker.com) image for [Yarn](https://yarnpkg.com).

To use the container with a project, do the following:

* Copy the bin directory into your project.

* Ensure that your profile PATH includes `./bin` and that it takes priority over
any other directory that may include a composer executable:

`PATH=./bin:$PATH`

Now whenever you are in your project's directory, you can simply execute
`yarn` as you would with a typical yarn installation, and the command
will execute in the container instead:

`yarn --help`

Docker Hub : https://hub.docker.com/r/chekote/yarn/
