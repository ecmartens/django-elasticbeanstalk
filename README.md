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
