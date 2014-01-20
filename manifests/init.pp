class dev {

  include git
  include supervisor

  include docker
  import 'apache-magento.pp'

}

include dev