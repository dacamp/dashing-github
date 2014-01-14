##Preview

![](http://i.imgur.com/TVEgvie.png)
![](http://i.imgur.com/Du2Bgts.png)
![](http://i.imgur.com/q6dVN4j.png)

## Description

Simple [Dashing](http://shopify.github.com/dashing) widget (and associated job) to display GitHub Status. Uses [GitHubs Status API](https://status.github.com/)

##Dependencies

[httparty](http://rubygems.org/gems/httparty)

Add it to dashing's gemfile:

    gem 'httparty'
    
and run `bundle install`. Everything should work now :)

##Usage

To use this widget, copy `github_status.html`, `github_status.coffee`, and `github_status.scss` into the `/widgets/github_status` directory. Put the `github_status.rb` file in your `/jobs` folder.

You'll also need various images from GitHub [InvertoCat](https://status.github.com/images/invertocat.png), [Good Logo](https://status.github.com/images/logo-good.png), [Minor Logo](https://status.github.com/images/logo-minor.png), and [Major Logo](https://status.github.com/images/logo-major.png).  *Download* them. Please do not leech them from Github for each request you make to your widgit! Download them, and put the files in your `/assets/images` folder

To include the widget in a dashboard, add the following snippet to the dashboard layout file:

    <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-id="github_status" data-view="GithubStatus" data-title="GitHub Status"></div>
    </li>

##Settings

Status is fetched every minute, which maybe a bit much. You can change that by editing the job schedule.