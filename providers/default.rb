
def whyrun_supported?
  true
end

action :clone do
  converge_by('cloning repo') do

    remote_path = new_resource.remote_path
    local_path = new_resource.local_path
    user = new_resource.user
    source = new_resource.source

    directory local_path do
      recursive true
    end

    execute 'cloning repo' do
      cwd new_resource.local_path
      command "bzr branch #{source}:~#{user}/#{remote_path}"
      action :run
      creates ::File.join(local_path, ::File.basename(remote_path), '.bzr')
    end
    Chef::Log.warn 'cloned the repo'
  end
  new_resource.updated_by_last_action(true)
end
