Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "(:locale)", :locale => /en|fr|ja/ do
    root 'static_pages#index'

    get 'credits', to: 'static_pages#credits'
    get 'resume', to: 'resume#resume', defaults: {format: 'html'}
    get 'img_jpg', to: 'static_pages#img_jpg', defaults: {format: 'jpg'}
    post 'contact', to: 'static_pages#contact'
  end
end
