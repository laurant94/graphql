Rails.application.routes.draw do
  if Rails.env.development?
      mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  post "/graphql", to: "graphql#execute"
  resources :blogs
  
  root to: "blogs#scolar"
  get "scolar", to:'blogs#scolar', as: :scolar
end
