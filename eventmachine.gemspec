# -*- encoding: utf-8 -*-
$:.unshift File.expand_path("../lib", __FILE__)
require "em/version"


Gem::Specification.new do |s|
  s.name = 'eventmachine'
  s.version = '2.5.0.beta'
  s.homepage = 'http://rubyeventmachine.com'
  s.rubyforge_project = 'eventmachine'
  s.licenses = ["Ruby", "GPL"]

  s.authors = ["Francis Cianfrocca", "Aman Gupta"]
  s.email   = ["garbagecat10@gmail.com", "aman@tmm1.net"]

  s.files = `git ls-files`.split("\n")
  s.extensions = ["ext/extconf.rb", "ext/fastfilereader/extconf.rb"]

  s.add_development_dependency 'test-unit', '~> 2.0'
  s.add_development_dependency 'rake-compiler', '~> 0.8.3'
  s.add_development_dependency 'yard', ">= 0.8.5.2"
  s.add_development_dependency 'bluecloth' unless RUBY_PLATFORM =~ /java/

  s.summary = 'Ruby/EventMachine library'
  s.description = "EventMachine implements a fast, single-threaded engine for arbitrary network
communications. It's extremely easy to use in Ruby. EventMachine wraps all
interactions with IP sockets, allowing programs to concentrate on the
implementation of network protocols. It can be used to create both network
servers and clients. To create a server or client, a Ruby program only needs
to specify the IP address and port, and provide a Module that implements the
communications protocol. Implementations of several standard network protocols
are provided with the package, primarily to serve as examples. The real goal
of EventMachine is to enable programs to easily interface with other programs
using TCP/IP, especially if custom protocols are required."

  s.rdoc_options = ["--title", "EventMachine", "--main", "README.md", "-x", "lib/em/version", "-x", "lib/jeventmachine"]
  s.extra_rdoc_files = ["README.md"] + `git ls-files -- docs/*`.split("\n")
end
