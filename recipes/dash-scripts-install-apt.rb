#
# Cookbook Name:: chef-dash
# Recipe:: dash-scripts-install-pkg
#
# Copyright 2014 pingworks - Alexander Birk und Christoph Lukas
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'apt'
include_recipe 'chef-dash::dash-debian-repo'

package 'dash-scripts' do
  version node['chef-dash']['package']['version']
  options "--force-yes -o Dpkg::Options::='--force-confnew'"
  action :install
end
