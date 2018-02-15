# **Tweet analysis**
##  Description:
The goal of this project is to develop a little application web or desktop that supports the analysis of tweets such as a frequency, vocabulary analysis. Search, statistics and visualisation are possible.
## First tasks:
check the API proposed by Tweeter, look at the example provided in Roassal (that you can find in the Moose http://www.moosetechnology.org distribution) and in the http://agilevisualization.com/, sketches some analyses such as the distributions and trends about a topics. 		
## Possible contacts:
Offray Valdimir Luna Car is a data journalist hacking in Pharo. You can contact him on the Pharo mailing-list or Discord. Alexandre Bergel the author of Roassal can be contacted too.
## Link and resources:
Have a look at the Zinc chapter in Entreprise Pharo, Agile visualisation and the Spec UI framework book available at http://books.pharo.org. Some indian students did a similar projects and they show it on youtube.

# Weekly reports
## First week
Research of Twitter API, looking for and studying some usage examples.
## Second week


#### Possibly usefull stuff to study:
http://smalltalkhub.com/#!/~brackendev/TwitterSDK

https://code.google.com/archive/p/twitter-client/downloads

https://github.com/svenvc/docs/blob/master/zinc/zinc-sso-paper.md   //notworking?

- creating basic classes
- trying to retrieve some tweets from Twitter
- try out the twitter API + its authentication
  we'll probably use application-only OAuth authentication since we dont need to be signed as a user, because we only make use of the Search REST api which doesnt
  require the requests to be made on users behalf -> we dont plan to make any UI, maybe just some simple graphs, so we dont want the user to rely on manually granting 
  the application access to their profiles on Twitter.
- for this we will use Zinc
    - 
- obsolete - changed our minds

## Third week
- studying Spec framework, which we'd like to use for a very simple UI
- studying Agile visualisation - which we will only use if we have some time to spare => which I doubt
- trying to parse some tweets


## Fourth week
- Commiting First version which enables searching for tweets and GUI.
- Implemented Singleton pattern on TwitterAnalyzer class.
- TODO implement seaching users and showing account info.
- TODO some simple analysis of retrieved tweets
- TODO study some visualisation libraries for graphs

## Fifth week
 - Implemented geolocation search
 - GUI minor fixes
 - Discussion using double dispatch, visitor paterns (still have no idea)
