package 'vim-nox'
template "/tmp/file" do
  local true
  source "#{release_path}/deploy/templates/file.erb"
  user "deploy"
  group "www-data"
  mode "0644"
  action :create
  variables(se: node["web-app"]["servlet"].map { |servlet| servlet["servlet-name"] })
end


hell.each { |key, value| puts "#{key} : #{value}" }