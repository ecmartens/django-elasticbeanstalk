# django-elasticbeanstalk# django-elasticbeanstalk

A simple music site created with Django and Bootstrap to store and view information about artists and their work.

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
