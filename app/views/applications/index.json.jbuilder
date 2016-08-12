json.array! @applications, partial: 'applications/application', as: :application, def fomat_time(time)
  time.to_s.sub(/^(\d{1,2})(\d{2})$/,'\1:\2')
end