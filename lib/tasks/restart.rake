task restart: :environment do
  %x("/opt/nginx/sbin/nginx -s stop")
  %x("/opt/nginx/sbin/nginx")
end
