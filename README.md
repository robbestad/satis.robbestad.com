sol-satis
=========

Sol's satis repo with config. 

This repo is located in [satis|nexus].sol.no under /var/www/satis/master

the crontab is running the file update.sh each 2 min and is updating the satis repo with the latest changes from github.


####First time installation

To create a fresh satis repo from scratch all you need to do is;

1. clone this repo
2. run composer.phar install
3. run update.sh
4. make sure the public catalog is accessible through HTTP
5. setup update.sh to be run to crontab so the repo is updated.


####Crontab @ root:

    */2 * * * * /var/www/satis/current/update.sh > /var/www/satis/current/update.cron.log 2>&1


####Deploy:

If you want to deploy a new version of this, do:

    cd /var/www/satis/
    rm -rf master
    git clone https://github.com/soldotno/sol-satis.git master
    composer.phar install

as root @ satis.sol.no

####Adding more private github repos to Satis

Edit the file satis.json and deploy it

####Using the satis repos in your repo

To use the packages from satis you need to add satis.sol.no as a repo in your composer.json file.

    "repositories": [
        {
            "type": "composer",
            "url": "http://satis.sol.no"
        }
    ],
    
And then you can just add the packages as if the where on packagist. F.eks:

    "require": {
        "soldotno/sol-logger" : "dev-master"
    },


