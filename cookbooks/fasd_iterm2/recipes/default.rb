#
# Cookbook:: fasd_iterm2
# Recipe:: default
#
# Copyright:: 2018, Sean Fisk
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

package 'fasd'
homebrew_cask 'iterm2'

git 'clone repo' do
  repository node['fasd_iterm2']['repo_url']
  destination node['fasd_iterm2']['repo_path']
  notifies :run, 'execute[installer]'
  # Note: Must clone this as root as the temp directory is owned by root
end

execute 'installer' do
  command 'yes | ./install --num-dirs 500'
  cwd node['fasd_iterm2']['repo_path']
  user node['fasd_iterm2']['user']
  action :nothing
end
