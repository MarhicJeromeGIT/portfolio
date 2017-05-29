Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope "(:locale)", :locale => /en|fr|ja/ do
    root 'static_pages#index'

    get 'credits', to: 'static_pages#credits'
    get 'resume', to: 'resume#resume', defaults: {format: 'html'}
    get 'stocks_jpg', to: 'static_pages#stocks_jpg', defaults: {format: 'jpg'}
    get 'blog_jpg', to: 'static_pages#blog_jpg', defaults: {format: 'jpg'}
    get 'iknow_jpg', to: 'static_pages#iknow_jpg', defaults: {format: 'jpg'}
    post 'contact', to: 'static_pages#contact'
  end
end
