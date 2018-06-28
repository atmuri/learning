default["apache"]["sites"]["chefone"] = { "port" => 80, "domain" => "chefone.chef-training.com", "site_title" => "chefone deployment site" }
default["apache"]["sites"]["cheftwo"] = { "port" => 80, "domain" => "cheftwo.chef-training.com", "site_title" => "cheftwo deployment site" }
default["apache"]["sites"]["chefthree"] = { "port" => 80, "domain" => "chefthree.chef-training.com", "site_title" => "chefthree deployment site" }

default["author"]["name"] = "Oracle"

case node["platform"]
when "amazon"
	default["apache"]["package"] = "httpd"
when "ubuntu"
	default["apache"]["package"] = "apache2"
end


