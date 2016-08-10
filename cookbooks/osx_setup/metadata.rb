# -*- coding: utf-8 -*-
name 'osx_setup'
maintainer 'Sean Fisk'
maintainer_email 'sean@seanfisk.com'
source_url 'https://github.com/seanfisk/personal-chef-repo'
issues_url 'https://github.com/seanfisk/personal-chef-repo/issues'
license 'Apache 2.0'
description 'Setup my personal OS X operating system'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.1.0'
supports 'mac_os_x'
%w(homebrew dmg mac_os_x).each do |cookbook|
  depends cookbook
end
