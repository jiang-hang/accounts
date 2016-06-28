## README

a rails app , with the support of activeadmin, devise, rolify , cancancan

It demonstrate some samples for activeadmin customization , where the show/index/form pages are illustrated.

the function include:

daily expense, family budget,  family assets, fund etc.


* versions

```
xuyang@debian-xuyang:~/myrails/accounts$ ruby --version
ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-linux]
xuyang@debian-xuyang:~/myrails/accounts$ rails --version
Rails 4.2.6
xuyang@debian-xuyang:~/myrails/accounts$ uname -a
Linux debian-xuyang 3.16.0-4-amd64 #1 SMP Debian 3.16.7-ckt25-1 (2016-03-06) x86_64 GNU/Linux
```

* usage

1. rails s  
1. try http://localhost:3000 , user:admin@example.com, password:password
1. add an admin user
    1. rails console
    1. User.create({email: "aa@bagualu.net", password: "123456"})
    1. User.last.add_role :admin
1. login with the admin account, you can do more within the app

