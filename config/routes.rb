Rails.application.routes.draw do
  root 'replacer#main'

  post 'replace', to: 'replacer#replace'
end
