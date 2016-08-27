# `payload` Server
> :heavy_dollar_sign: A payload server build by Suriyaa Kudo.

## Installation
1. Open two terminals.
2. Type this in the first terminal:
```shell
bundle install
ruby server.rb
```

3. And type this in the second terminal (See [#1][issue1]):
```shell
ngrok http 8972
```

4. Copy the url of `ngrok` / second terminal and go to https://github.com/SuriyaaKudoIsc/payload/settings/hooks in GitHub repo settings (See [#2][issue2]).

## Usage
Since we set up our webhook to listen to events dealing with `Issues`, go ahead and create a new Issue on the repository you're testing with. Once you create it, switch back to your terminal. You should see something like this in your output:

```shell
~/Developer/platform-samples/hooks/ruby/configuring-your-server $ ruby server.rb
== Sinatra/1.4.4 has taken the stage on 4567 for development with backup from Thin
>> Thin web server (v1.5.1 codename Straight Razor)
>> Maximum connections set to 1024
>> Listening on localhost:4567, CTRL+C to stop
I got some JSON: {"action"=>"opened", "issue"=>{"url"=>"...
```

:tada: Success! You've successfully configured your server to listen to webhooks. Your server can now process this information any way you see fit. For example, if you were setting up a "real" web application, you might want to log some of the JSON output to a database.

[issue1]: https://github.com/SuriyaaKudoIsc/payload/issues/1
[issue2]: https://github.com/SuriyaaKudoIsc/payload/issues/2
