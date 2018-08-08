Rails.application.routes.draw do
  get 'welcome/index'
  
  resources :events

  root 'welcome#index'
  
  scope '/api' do
    scope '/v1' do
      scope '/events' do
        get '/' => 'api#index'
        post '/' => 'api#create'
        scope '/new' do
          get '/' => 'api#new'
        end
        scope '/:id' do
          get '/' => 'api#show'
          patch '/' => 'api#update'
          put '/' => 'api#update'
          delete '/' => 'api#destroy'
          scope '/edit' do
            get '/' => 'api#edit'
          end
        end
      end
    end
  end
end 