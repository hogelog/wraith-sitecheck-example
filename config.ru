require "rack"

run(->(env){
  [
    '200',
    {'Content-Type' => 'text/html'},
    ["<p>Hello #{ env["PATH_INFO"] }</p>"]
  ]
})
