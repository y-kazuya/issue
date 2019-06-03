Rails.application.routes.draw do


  root to: 'public/pages#all_top'


  namespace :admin do
  end

  scope module: :public do
    get  "/for_company",to: 'pages#for_company'
    get  "/for_student",to: 'pages#for_student'
    get  "/for_city",to: 'pages#for_city'


    resource :contacts, only: [:show,:create]
  end

  namespace :api, {format: 'json'} do
  end
end
