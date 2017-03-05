def remove_url_anchor(url)
  url.sub(/#.*/, "")
end

#other ways:
def remove_url_anchor(url)
  url.split('#').first
end

def remove_url_anchor(url)
  url.split(/#/)[0]
end

def remove_url_anchor(url)
  url.split("#").shift
end
