name "dev"
description "Environment Development"
cookbook "apache", "= 0.1.5"
override_attributes({
  "author" => { "name" => "Rajendra Atmuri"}
})
