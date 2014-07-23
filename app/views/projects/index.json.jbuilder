json.array!(@projects) do |project|
  json.extract! project, :id, :no, :title, :place, :content, :term, :environment, :job, :contract, :business
  json.url project_url(project, format: :json)
end
