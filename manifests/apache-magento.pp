include 'docker'



#exec { 'build apache-magento':
#  command   => "/usr/bin/docker build -t jvaughan/apache-magento .",
#  cwd       => "/vagrant/docker/apache-magento"
#}
#
#exec {'clear-shit-out':
#  #command => "/usr/local/bin/killshit.sh"
#  command => "/bin/ls"
#}


#docker::build { 'thingy':
#  image_name  => 'jvaughan/apache-magento',
#  df_dir      => '/vagrant/docker/apache-magento'
#}

docker::image { 'jvaughan/apache-magento':
  ensure                => 'present',
  build_from_dockerfile => true,
  dockerfile_dir        => '/vagrant/docker/apache-magento'
}

docker::run { 'apache-magento':
  image           => 'jvaughan/apache-magento',
  command         => '/bin/sh -c "while true; do echo hello world; sleep 1; done"',
  #ports           => ['49380', '80'],
  use_name        => true,
  restart_service => true,
  #build_from_dockerfile => true,
  #dockerfile_path => '/vagrant/docker/apache-magento'
}


