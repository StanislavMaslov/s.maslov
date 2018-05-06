def application(env, start_response):
    start_response('200 OK', [('Content-Type', 'text/html')])
    return [b'<h1>Hello! My name is Stas, from Kiev, Ukrane.</h1> <h2>I love to learm something new. I love sports, I play hockey. I like active leisure on the narure, tourism.</h2>']
