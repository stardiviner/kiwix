#!/usr/bin/ruby

STARTTIME = Time.now

# Global defines
LANG    = "fr"
RTL     = false
PROJECT = "encyclopedia-reference"
MASTER = "encyclopedia"
NAMESPAC= {:id => 104, :name => "Référence"}
UNIQID  = Time.now.strftime "%Y-%m-%d"
UNIQFD  = "/home/reg/var/#{LANG}/#{PROJECT}_#{UNIQID}"
MDWKFD  = "/var/www/reg.kiwix.org/wiki"
DBICON  = "DBI:Mysql:reg_#{LANG}_encyclopedia"
DBIUSER = "reg"
DBIPASS = "reg"
BLOCK_SIZE	= 10485760 # 10MB

require "./#{LANG}_common.rb"

INCLUDED_NS << {:raw => "Portail", :url => "Portail", :ns => "portal"}
INCLUDED_NS << {:raw => "Référence", :url => "R%C3%A9f%C3%A9rence", :ns => "reference"}

EXCLUDED_NS << {:raw => "Discussion Portail", :url => "Discussion_Portail"}
EXCLUDED_NS << {:raw => "Projet", :url => "Projet"}
EXCLUDED_NS << {:raw => "Projet", :url => "Projet"}
EXCLUDED_NS << {:raw => "Discussion Projet", :url => "Discussion_Projet"}
EXCLUDED_NS << {:raw => "Discussion Référence", :url => "Discussion_R%C3%A9f%C3%A9rence"}

require "../crawler.rb"

hello()

puts "Duration: #{(Time.now - STARTTIME) /60} mn."
