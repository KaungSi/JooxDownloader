< input.txt sed '/#/d' | sed 's/ //g' | sed '/^ *$/d' | sed 's/.*\&songid=//' | sed 's/\==*.*./==/' | sed 's/.*song\///' | sed 's/\/lyr*....//' | sed 's/^/http:\/\/api.joox.com\/web-fcgi-bin\/web_get_songinfo?songid=/' | xargs wget -P ./temp