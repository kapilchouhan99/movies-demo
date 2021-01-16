# movies-demo

This is a [Ruby on Rails](https://rubyonrails.org/) based implementation of the **Movies list**.


## Built with

- Ruby 2.6.1

- Rails 5.2.0
  

## Quick Start

You need to have bundler installed in your system.

**Step 1:** You can install it by typing:

```bash
$ gem install bundler
```


**Step 2:** Open of a terminal window in the root of the project **/movies-demo** and type :

```bash
$ bundle install
$ rails db:create
$ rails db:migrate
```
**Step 3:** Run rake task

```bash
$ rails import_csv:import_movie_review
```


**Step 4:** Run the server:

```bash
$ rails s
```