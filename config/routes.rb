Rails.application.routes.draw do
  resources :gardens, only: :show do
    resources :plants, only: :create
  end

  # POST /gardens/1/plants => to create a Plant in DB and associate it with Garden
end
