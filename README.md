# django-elasticbeanstalk

A simple music website to store and view information about artists and their work. Created with Django and Bootstrap.

The following instructions describe deployment with [AWS Elastic Beanstalk](https://aws.amazon.com/elasticbeanstalk/) using the [Python 3.7 Amazon Linux 2 platform](https://docs.aws.amazon.com/elasticbeanstalk/latest/platforms/platforms-supported.html#platforms-supported.python) and [PostgreSQL on Amazon RDS](https://aws.amazon.com/rds/postgresql/).

![Site Homepage](screenshots/homepage.png?raw=true "Site Homepage")

## Requirements

- An [AWS](https://aws.amazon.com/) account
- [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [PostgreSQL](https://www.postgresql.org)
- The [Elastic Beanstalk CLI](https://github.com/aws/aws-elastic-beanstalk-cli-setup)**
- [Table Plus](https://tableplus.com/) or another database management tool.

** Use the [aws setup scripts](https://github.com/aws/aws-elastic-beanstalk-cli-setup) to install the CLI in a separate environment to avoid dependency conflicts with boto3.

## Deployment Instructions

1. Clone the repo.

```bash
git clone https://github.com/ecmartens/django-elasticbeanstalk.git
```


2. Create a virtual environment for Python 3.7.

```bash
pyenv virtualenv 3.7.6 <environment name>
```


3. Install the Python packages.

```bash
pip install -r requirements.py
```


4. Set default values for your Elastic Beanstalk application.

```bash
eb init
```

You'll be asked to select a region, platform, whether to set up SSH and to select a keypair. Elastic Beanstalk will create a .elasticbeanstalk folder with a config.yml file with your configuration options.


5. Create your EB environment.

```bash
eb create --single --database.engine postgres --database.version 12.3 --envvars AWS_STORAGE_BUCKET_NAME=django-artists-media
```

This creates a single instance environment and provisions your RDS Postgres instance for you. Choose an environment name, DNS name, RDS username and RDS password. Use Postgres version 12.3 to avoid any problems creating tables and copying data to your RDS instance in a later step.

It takes about five minutes to create the environment and your RDS instance.


6. Add your environment URL to Django ALLOWED_HOSTS.

Get your envronment URL through the Elastic Beanstalk console (it will be based on your chosen DNS name) and add it to ALLOWED_HOSTS in [settings.py](https://github.com/ecmartens/django-elasticbeanstalk/blob/master/music/settings.py).

```bash
ALLOWED_HOSTS = ['localhost', 'django-music-dev.us-east-1.elasticbeanstalk.com']
```


7. Set environment variables for DJANGO_DEBUG and DJANGO_SECRET_KEY.

```bash
eb setenv DJANGO_SECRET_KEY=<secret key>
eb setenv DJANGO_DEBUG=<True or False>
```

Note that you don't have to configure environment variables for your RDS instance. Elastic Beanstalk will do this for you.


8. Commit changes.

By default, the Elastic Beanstalk CLI [deploys the latest commit in the current branch](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb3-cli-git.html).

```bash
git add .
git commit -m "elastic beanstalk configuration"
```


9. Allow connections to the RDS instance from your IP.

In order to migrate data, you need to allow connections from your IP address. You can do this by adding a rule to the instance security group.

From the RDS console, click on the VPC security group link for your newly created database. That will take you to EC2 where you can edit inbound rules for the security group. Add a rule to allow TCP traffic on port 5432 from your IP.

![Edit Security Group](screenshots/rds_security_group_add_rule.png?raw=true "Add inbound rule to security group")

As a sanity check before moving on, you can do a quick connection check with telnet. Use your RDS endpoint and port 5432.

```bash
$ telnet asdf.ghjk.us-east-1.rds.amazonaws.com 5432
Trying 52.3.12.206...
Connected to ec2-52-3-12-206.compute-1.amazonaws.com.
Escape character is '^]'.
```


10. Create tables and copy data to the RDS instance.

To start, you'll need to [create a postgres superuser](https://www.postgresql.org/docs/12/app-createuser.html). To make things simple, you can use the same name as your RDS table username.

Create tables and copy data from /postgres/musicdb.sql.

```bash
$ psql -f /postgres/musicdb.sql --host <rds endpoint> --port 5432 --username <username> --password <password> --dbname <database name>
```

Try connecting with TablePlus to verify the tables were created and populated with data. You should see the tables shown here.

![Table Plus Screenshot](screenshots/table_plus_screenshot.png?raw=true "Tables")


11. Deploy

```eb deploy```

After this, you should be able to go to your environment URL in your browser and view the site.


12. Optional - create super user and use the admin site.

If you want to create a Django super user and visit the admin site, you'll need to log into your instance and run the createsuperuser command.

You can connect to the instance with the SSH command line utility. You'll need the public DNS of your instance (can be found through the EC2 console) and the path to the private key you specified during setup.

```
SSH -i <path to private key> ec2-user@<public domain of your instance>
```

Once logged into the instance, you'll need to activate the virtual environment, cd to the root project directory and run the Django createsuperuser command.

```
source /var/app/venv/staging-LQM1lest/bin/activate
cd /var/app/current
python manage.py createsuperuser
```

Now you can visit the admin site at url/admin.
