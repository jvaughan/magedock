#!/usr/bin/env ruby
# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.require_plugin 'vagrant-librarian-puppet'

Vagrant.configure('2') do |config|
  config.vm.box = 'ubuntu-12.04-docker'
  config.vm.box_url = 'https://oss-binaries.phusionpassenger.com/vagrant/boxes/ubuntu-12.04.3-amd64-vbox.box'

  config.librarian_puppet.puppetfile_dir = 'puppet'
  config.librarian_puppet.resolve_options = { :force => true }

  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'manifests'
    puppet.manifest_file = 'init.pp'
    puppet.module_path = 'puppet/modules'
  end

end
