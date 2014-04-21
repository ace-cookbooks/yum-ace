repo = yum_repository 'ace' do
  repositoryid node['yum']['ace']['repositoryid']
  description node['yum']['ace']['description']
  baseurl node['yum']['ace']['baseurl']
  enabled node['yum']['ace']['enabled']
  gpgcheck node['yum']['ace']['gpgcheck']
  priority node['yum']['ace']['priority']

  action :nothing
  source 's3_repo.erb'
end

# Run at compile time
repo.run_action(:create)
