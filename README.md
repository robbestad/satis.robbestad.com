#satis.robbestad.com


This repo is located satis.robbestad.com under /web/satis.robbestad.com/current

The following line in crontab is executed every 2 minutes, and updates the repo with the lates
changes from Github

  * * * * * /var/www/satis/current/update.sh > /var/www/satis/current/update.cron.log 2>&1

####First time installation

To create a fresh satis repo from scratch all you need to do is;

1. clone this repo
2. run composer.phar install
3. run update.sh
4. make sure the public catalog is accessible through HTTP
5. setup update.sh to be run to crontab so the repo is updated.


####Crontab @ root:

    */2 * * * * /web/satis.robbestad.com/current/update.sh >  /web/satis.robbestad.com/update.cron.log 2>&1


####Deploy:

If you want to deploy a new version of this, do:

    cd /web/satis.robbestad.com/
    rm -rf master
    git clone https://github.com/svenanders/satis.robbestad.com master
    cd master
    composer.phar install
    sh update.sh
    
or simply run

    sh /web/satis.robbestad.com/update.sh
    

####Adding more private github repos to Satis

Edit the file satis.json and deploy it

####Using the satis repos in your repo

To use the packages from satis you need to add satis.sol.no as a repo in your composer.json file.

    "repositories": [
        {
            "type": "composer",
            "url": "http://satis.robbestad.com"
        }
    ],
    
And then you can just add the packages as with packagist. Eg:

    "require": {
        "svenanders/SarDatabases" : "dev-master"
    },


