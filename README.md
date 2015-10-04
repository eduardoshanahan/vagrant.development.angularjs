# AngularJS Development Instance

This project aims at having a machine ready to do a quick test using AngularJS.

## Development Notes

### Prerequisites

* [git](https://git-scm.com/)
* [Vagrant](https://www.vagrantup.com/)
* [Virtual Box](https://www.virtualbox.org)

You can find the installation instructions for each prerequisite in their own websites.

### Usage

* Clone the project and go to your new directory
```
git clone https://github.org/eduardoshanahan/vagrant.development.angularjs  && cd vagrant.development.angularjs
```

* Remove the existing .git directory and init git fresh
```
rm -rf .git
git init
```

Now you are ready to work.

If you want you can rename the directory too, in my case I usually create a remote repository where to push, and eventually I delete everything in my local machine. When I clone the remote, I get the relevant directory name from the repo.

### Working with Vagrant

* Start Vagrant
```
cd Vagrant
vagrant up
vagrant ssh
```

At that point you will be in a terminal inside you Vagrant machine. The source code located at your `Code` directory will be available in Vagrant at `code`.

* Scaffold your SPA

I am using the Angular generator for Yeoman. To invoke it, go with
```
cd code
yo angular projectName
```
where projectName will be replaced with the name of your project.

* Testing from host

If you want to try the application from your host browser, you will need to change /code/Gruntfile.js on the `connect | options | hostname` from `localhost` to `0.0.0.0`.

Then it should be available in your [browser](http://192.168.65.2:9000).
