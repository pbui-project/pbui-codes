# frozen_string_literal: true

require 'sinatra'

set :port, 7284
get '/' do
  sensors = `sensors`
  hddtemp = `hddtemp`
  free = `free -h`

  erb "
<head>
<title>WaifuPaste Stats</title>
<link rel=\"icon\" href=\"https://waifupaste.moe/raw/favicon.png\">
<style>
        body {
            margin: 10px;
            background-image: url(\"https://waifupaste.moe/assets/imgs/texture.png\");
        }
    </style>
</head>
  <pre><code>#{`sensors`}</code></pre>
  <pre><code>#{`hddtemp`}</code></pre>
  <pre><code>#{`free -h`}</code></pre>
  <pre><code>#{`df -h`}</code></pre>
  <pre><code>#{`mpstat`}</code></pre>
  <pre><code>Uptime: #{`uptime`}</code></pre>
  <pre><code>WaifuPaste is serving <pre><code>#{`ls -l /home/akk/www/uploads | wc -l`} files</code></pre>"
end

