#
# Cookbook Name:: rs_terminator
# Recipe:: setup_client
#
# Copyright (C) 2013 Ryan_Cragun
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

rightscale_marker

tags = node[:rs_terminator][:client][:safe_tag]

log "Setting rs_terminator safety tag(s): #{tags.inspect}"
tags.is_a?(Array) ? (tags.each {|tag| right_link_tag(tag)}) : right_link_tag(tags)
