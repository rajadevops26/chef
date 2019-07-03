#
# Cookbook:: chef_dk
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Rese
file 'root/sample.txt' do

	action :delete

	content "this is my first file deletion\n"

end


