maintainer       "RightScale, Inc."
maintainer_email "support@rightscale.com"
license          "Copyright RightScale, Inc. All rights reserved."
description      "Installs the Django application server."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "12.1.0"

supports "centos", "~> 6.2"
supports "ubuntu", "~> 12.04"

depends "app"
depends "web_apache"
depends "db_mysql"
depends "db_postgres"
depends "repo"
depends "rightscale"
depends "python"

recipe  "app_django::default", "Installs the Django application server."
recipe  "app_django::install_custom_python_packages", "Custom python packages to install."
recipe  "app_django::install_required_app_python_packages", "Bundler python packages install. requirement.txt must be present in app directory."
recipe  "app_django::run_custom_django_commands", "Run specific user defined commands. Commands will be executed in the app directory."
