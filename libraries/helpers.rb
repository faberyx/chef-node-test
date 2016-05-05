#
# Cookbook Name:: node-test
# Library:: helpers
#
# Copyright (C) 2016 Parallels IP Holdings GmbH
#
# All rights reserved - Do Not Redistribute
#

module Helpers
  def self.calc_md5(str)
    require 'digest/md5'
    'md5' + Digest::MD5.hexdigest(str)
  end

  
end
