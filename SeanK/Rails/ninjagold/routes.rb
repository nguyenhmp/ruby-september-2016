Rails.application.routes.draw do
  post 'rpgs/farm' => 'rpgs#farm'

  post 'rpgs/cave' => 'rpgs#cave'

  post 'rpgs/house' => 'rpgs#house'

  post 'rpgs/casino' => 'rpgs#casino'

  root 'rpgs#index'
end
