name             'rs_terminator'
maintainer       'Ryan_Cragun'
maintainer_email 'ryan@rightscale.com'
license          'Apache 2.0'
description      'Installs/Configures rs_terminator'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.0.1'

supports "ubuntu"
supports "centos"
supports "redhat"

#depends "rightscale"

recipe "rs_terminator::default", "Installs rs_terminator gem"
recipe "rs_terminator::setup_client", "Configures Server as a Terminator client"
recipe "rs_terminator::setup_server", "Configures Terminator as a Terminator Server"

attribute "rs_terminator/client/safe_tag",
  :display_name => "Safe Tag",
  :description => 
    "A tag or array of tags that prevents the Terminator from terminating" +
    " a taggable Resource" +
    "\n Example: rs_terminator:save=true",
  :required => "optional",
  :default => "rs_terminator:save=true",
  :recipes => [
    "rs_terminator::setup_client",
    "rs_terminator::setup_server",
  ]
