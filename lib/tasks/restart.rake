task restart: :environment do
  exec("/opt/nginx/sbin/nginx -s stop")
  exec("/opt/nginx/sbin/nginx")
end
