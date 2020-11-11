node agent.example.com {
  class { 'postgresql::server':
    postgres_password => 'temporarypenguin',
  }
  postgresql::server::db { 'mydatabasename':
    user     => 'dev',
    password => postgresql_password('dev', 'devpass'),
  }
  include apache
}

node default {
  include ntp
}
