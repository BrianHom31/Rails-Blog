Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # 7 deadly routes
  #index
  get     "/users"           =>    "users#index", as: "users"
  #sign up:
  get     "/signup"            =>  "users#new", as: "new_user"
  post    "/users"           =>    "users#create"
  get     "/users/:id"       =>    "users#show", as: "user"
  get     "/users/:id/edit"  =>    "users#edit", as: "edit_user"
  put     "/users/:id"       =>    "users#update"
  patch   "/users/:id"       =>    "users#update"
  delete  "/users/:id"       =>    "users#destroy"

  # login
  get     "/login"              =>  "users#login_form"
  post    "/login"              =>  "users#create_login"

  # logout
  get     "/logout"             =>  "users#logout"

resources :posts
resources :comments
#####################################################################

#   # 7 deadly routes
#   get     "/posts"           =>    "posts#index", as: "posts"
#   get     "/posts/new"       =>    "posts#new", as: "new_post"
#   post    "/posts"           =>    "posts#create"
#   get     "/posts/:id"       =>    "posts#show", as: "post"
#   get     "/posts/:id/edit"  =>    "posts#edit", as: "edit_post"
#   put     "/posts/:id"       =>    "posts#update"
#   patch   "/posts/:id"       =>    "posts#update"
#   delete  "/posts/:id"       =>    "posts#destroy"
# ######################################################################
#
#   # 7 deadly routes
#   get     "/comments"           =>    "comments#index", as: "comments"
#   get     "/comments/new"       =>    "comments#new", as: "new_comment"
#   post    "/comments"           =>    "comments#create"
#   get     "/comments/:id"       =>    "comments#show", as: "comment"
#   get     "/comments/:id/edit"  =>    "comments#edit", as: "edit_comment"
#   put     "/comments/:id"       =>    "comments#update"
#   patch   "/comments/:id"       =>    "comments#update"
#   delete  "/comments/:id"       =>    "comments#destroy"

end
