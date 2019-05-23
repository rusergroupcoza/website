# South Africa R User Groups
[![Build Status](https://travis-ci.org/rusergroupcoza/website.png?branch=master)](https://travis-ci.org/rusergroupcoza/website) 

## Usage

To use this package, you will first need to get your meetup API key. To
do so, go to this link: <https://secure.meetup.com/meetup_api/key/>

Once you have your key, save it as an environment variable for the
current session by running the following:

``` r
Sys.setenv(MEETUP_KEY = "PASTE YOUR MEETUP KEY HERE")
```

Alternatively, you can set it permanently with the help of
`usethis::edit_r_environ()` by adding the line to your `.Renviron`:

    MEETUP_KEY=PASTE YOUR MEETUP KEY HERE

If you don’t want to save it here, you can input it in each function
using the `api_key` parameter (just be sure not to send any documents
with your key to GitHub 🙊).
