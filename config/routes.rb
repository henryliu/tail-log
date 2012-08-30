Rails.application.routes.draw do
  match 'logs' => 'tail_log#index'
end
