# vagrant-javaee-wildfly
Forked from [vagrant-javaee-wildfly](https://github.com/Phidelux/vagrant-javaee-wildfly) by [Phidelux](https://github.com/Phidelux).

~~~
This project offers a basic Vagrant setup for JavaEE development environment and a Wildfly Application Server.
~~~

The BOX will be configured:

* __SO__
 : Ubuntu 16.04.
 
* __Oracle JDK__
 : Version 8
 
* __Maven__
 : Latest Version
 
* __Wildfly__
 : Versión

* __Data Base__
 : Postgresql 9.6
 
> > *Note: The configuration is fully customizable.*

## Prerequirements

In order to use this Vagrant configuration, you should install [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/) on your host machine.

## Dependencies

Before you can start using this project, you have to install the *vagrant-reload* plugin:

    $ vagrant plugin install vagrant-reload

In order to check if it was installed succesfull or if it is already installed, you can execute the following command:

    $ vagrant plugin list

## Usage

After you checked out this repository and added the dependencies as explained above, you can setup and start your development VM using the following command:

    vagrant up

## License

This basic setup is lisenced under the Apache 2.0 License.
