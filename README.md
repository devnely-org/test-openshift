# test-openshift

I am going to create a new repository within the Laboratory Environment for Wordpress project that I will call test-openshift where all the files referring to the tests in openshift will be.

The repository is part of a project ( "Laboratory Environment for Wordpress")  whose objective  is to create a laboratory environment to work through Openshit 3.11 on a website created with Wordpress. In this repository we create container image mysql database for Wordpress based on Centos7.

# Prerequisites
   - Openshift 3.11
   - git
   - github
   - you want
   
# Running the tests
 
 The tests are developed in openshitf and we will not show their development and performance. If we note that we will do individualized tests for each image and a global one with all the images at play (wordpress and mysql).
 
 I will create a directory for mysql, another for wordpress, another for the project (mysql and wordpress) in addition to another in which documentation is provided.
 
### Diferents deployments

En la rama simple_3 generamos el archivo "wordpress/web-wp.json5" sin persistencia ni la estructura maestro-servidor de la base de datos:


```
$ oc delete all --all -n image-wp
$ oc process -f wordpress/build/web-wp.v1.json  | oc apply -l 'build1 in (web-wp)' -f - 

```

# Contributing

In principle it is a personal and public project.

# Versioning

We use [SemVer](https://semver.org/) for versioning. For the versions available, see the tags on this repository.

# Authors

    . jemiliolopez - Initial work - PurpleBooth


# License

This project is licensed under the MIT License original - see the LICENSE file for details

# Acknowledgments
 To all, who are many and anonymous, who have contributed their knowledge and experience by sharing it with people.



