require "rack"

run(->(env){
  [
    '200',
    {'Content-Type' => 'text/html'},
    [<<-HTML]
<body style="background: white">
  <p>Hello #{ env["PATH_INFO"] }</p>
</body>
    HTML
  ]
})
