# Bozo

Bozo is a simple Ruby on Rails based Web Blog application. Some of the features are :

  - Secure Login / Registration using 'devise' Gem
  - Uses foundation as front-end framework
  - Uses Haml for Short Codes
  - View all posts 
  - Like / Unline (only if Logged in)
  - Show number of Likes
  - Comments (yet to come)
  - Posts by category
  - Edit / Delete Your Own Post



### Tech

Bozo uses a number of open source projects to work properly:

* [Jquery] - a popular javascript Library
* [Foundation] - front end framework
* [devise] - secure login / registration
* [rails] - back end framework based on ruby
* [act_as_votable] - for keeping count of likes

And of course Bozo itself is open source with a [public repository][bozo]
 on GitHub.

### Installation

You need Gulp installed globally:

```sh
git init
git add remote bozo https://github.com/pratyushcrd/Bozo_rails_blog_app.git
git pull bozo master
```
If you use MySQL. 
(Change the database name, user and password in config/database.yml)
```sh
rake db:setup
```
Otherwise make corresponding changes in config/database.yml

### Development

Want to contribute? Great!

Bozo uses Rails + Haml for fast developing.
Pull the source, make changes and do a push request.

### Todos

 - User Profiles
 - Better design
 - More Features (thinking) :)

License
----


**Free Software, Hell Yeah!**

[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. There is no need to format nicely because it shouldn't be seen. Thanks SO - http://stackoverflow.com/questions/4823468/store-comments-in-markdown-syntax)


   [bozo]: <https://github.com/pratyushcrd/Bozo_rails_blog_app>
   [git-repo-url]: <https://github.com/joemccann/dillinger.git>
   [john gruber]: <http://daringfireball.net>
   [@thomasfuchs]: <http://twitter.com/thomasfuchs>
   [df1]: <http://daringfireball.net/projects/markdown/>
   [marked]: <https://github.com/chjj/marked>
   [Ace Editor]: <http://ace.ajax.org>
   [node.js]: <http://nodejs.org>
   [Twitter Bootstrap]: <http://twitter.github.com/bootstrap/>
   [keymaster.js]: <https://github.com/madrobby/keymaster>
   [jQuery]: <http://jquery.com>
   [@tjholowaychuk]: <http://twitter.com/tjholowaychuk>
   [express]: <http://expressjs.com>
   [AngularJS]: <http://angularjs.org>
   [Gulp]: <http://gulpjs.com>
   
   [PlDb]: <https://github.com/joemccann/dillinger/tree/master/plugins/dropbox/README.md>
   [PlGh]:  <https://github.com/joemccann/dillinger/tree/master/plugins/github/README.md>
   [PlGd]: <https://github.com/joemccann/dillinger/tree/master/plugins/googledrive/README.md>
   [PlOd]: <https://github.com/joemccann/dillinger/tree/master/plugins/onedrive/README.md>


