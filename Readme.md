# Faking it as a Data Scientist

"Data Scientist is the sexiest job of the 21st century." - <a href="https://hbr.org/2012/10/data-scientist-the-sexiest-job-of-the-21st-centuryhttp://">HBR</a>

The intent of this post is to give you enough talking points about the 
area to fake your way through 3 dates with a non-data scientist. 

Do committed people also need to feel or appear sexy on a date? In which
case, they may find this useful too.

This post is also on Github so if your date peeks then you can pass it off
as work.  Bonus, tell him / her that it was a merge request and see if you 
get any reaction. ( Merge requests are a term from the software world so if
your date is into software, even if he / she isn't into data science, then 
maybe avoid it. In fact, if your date is well versed with software, then you 
should probably avoid this altogether and stick to the traditional approaches
of being rich, handsome, willing, etc. )

This was originally for a short talk at work where I masquerade as a data 
scientist, in the hope that the bubble around data science bursts before I
actually have to show results. But once I'd compiled it, it seemed like a
waste of effort to not reuse it for a blog post. The blog is the only thing
that I might be able to make money off of after the bubble.

In light of the hullabaloo around Cambridge Analytica ( data security is a 
legitimate concern, but their algorithms' impact on the US elections, as 
reported in the media, is likely vastly exaggerated, ) this is also a good
time to publish this post.







Approach
==============================================================================

- Touch upon a bunch of things related to the machine learning ( ML ) and
 artificial intelligence ( AI ) world.
- Find out enough so that you can Google for more.








Some everyday interactions with ML
==============================================================================

<a href="http://www.slate.com/articles/technology/cover_story/2016/01/how_facebook_s_news_feed_algorithm_works.html">Facebook feeds</a>,
things to note:
- Formulating, data cleaning that went into calculating the interest in posts
- Data gathering, starting from the Tennessee group to whatever complex
beast it is now

Ads / <a href="https://en.wikipedia.org/wiki/Netflix_Prize">recommendations ( Netflix )</a>,
things to note:
- Formulation / problem of measuring results. Nobody can confidently tell
the impact of internet advertising. Do internet ads actually get new 
customers or would the same number of buyers have bought the same product
even if they hadn't seen the ad?

Uber pricing ( Couldn't find a link. But you get it, right? )
- As an exercise, think of the data that must be relevant? Day of week, 
prices previously accepted / rejected, origin, destination, trip 
distance, what else? 

Trading
- Author bias. I have low interest in finance. Easy to imagine what it would be.
- Look it up, there will be plenty of material.

<a href="https://research.googleblog.com/2017/11/fused-video-stabilization-on-pixel-2.html">Image stabilisation ( on Google Pixel )</a>
Tl;DR - the bike video towards the bottom of the page





Some cool ML results
==============================================================================

<a href="https://www.youtube.com/watch?v=qv6UVOQ0F44">Mario playing</a>
- Maps a simplified screen layout to the action keys
- Evolves the mapping by trying out different mappings, seeing which ones
are more successful, making random changes, additionsm, merges of the
more succesful mappings to generate new mappings, iterating until the 
mapping can clear the level
- Likely that the final mapping will work for some other Mario levels too,
but not necessary all.

AI art - 
<a href="https://arxiv.org/pdf/1508.06576v2.pdf">Paintings</a>, page 5, and
<a href="https://www.youtube.com/watch?v=LSHZ_b05W7o/">Music</a>
- Is this true creativity or is it just analysing patterns in existing
examples of human creativity and rehashing? Is that how human creativity
also works? What is human creativity anyway?
- Lots of chatbots, analysing tweets, etc. happening nowadays but language
processing isn't the the same as comprehension. Detecting sarcasm is still
a very tricky problem.

<a href="https://www.youtube.com/watch?v=Q14tkD5__dE">Autonomous driving</a>
- Maybe the first time that ML will have real time, high impact interactions
in large volumes with the chaotic physical world. 
- Sudden jump from the more controlled physical spaces, just controlling 
things on a computer, or making only recommendations to a person who 
eventually decides how to act.

<a href="https://medium.com/intuitionmachine/the-alien-look-of-deep-learning-generative-design-5c5f871f7d10">Designing parts</a>

<a href="https://www.alphagomovie.com/">AlphaGo</a>
- Much harder than Chess.
- As an example of the efforts towards general AI, look up <a href="https://www.wired.com/story/alphabets-latest-ai-show-pony-has-more-than-one-trick/" target="_blank">AlphaZero</a>

<a href="https://en.wikipedia.org/wiki/Foundation_series">The Foundation Series</a> - sci-fi which predicts where we might be going?













Some ML fails
==============================================================================


Bad training data - <a href="https://gizmodo.com/here-are-the-microsoft-twitter-bot-s-craziest-racist-ra-1766820160">Microsoft's racist twitter bot</a>
- Most algorithms are extremely sensitive to training data and data scientists
go to great lengths to data-proof their algorithms.

Fragility - <a href="http://www.bbc.com/news/technology-41845878">Fooling image recognition with a single pixel</a>

Unpleasant results - <a href="https://www.propublica.org/article/machine-bias-risk-assessments-in-criminal-sentencing">Racism in the justice system</a>
- Algorithmic decisions, especially when taken by black box sort of systems,
are harder to accept and correct.


Edge cases - <a href="http://www.foxnews.com/tech/2017/01/06/tv-news-report-prompts-viewers-amazon-echo-devices-to-order-unwanted-dollhouses.html"> Alexa takes instructions from the TV</a>
- Very often, models fail because of behaviour that has not been considered
because it wasn't present in the training data or nobody imagined that sort
of use case.

Wrong application - <a href="https://www.technologyreview.com/s/602955/neural-network-learns-to-identify-criminals-by-their-faces/">Linking criminals to facial features</a>
- Everything is not an ML problem. Some problems are probably better avoided.










Some ML debates and discussions
==============================================================================


<a href="https://openai.com/about/">ML good vs. evil debate</a>:
- What if AI becomes some evil superpower?

<a href="https://www.theguardian.com/inequality/2017/aug/08/rise-of-the-racist-robots-how-ai-is-learning-all-our-worst-impulses">Human / author biases in algorithms</a>:
- Google photos was labelling black people as gorillas

<a href="https://www.youtube.com/watch?v=bOpf6KcWYyw">Trolley dilemma</a>:
- This has become famous in the the context of what an autonomous vehicle
should do in a similar situation.

<a href="https://techcrunch.com/2017/09/19/flippy-the-hamburger-cooking-robot-gets-its-first-restaurant-gig/">ML vs minimum wage</a>:
- Automation was already taking away jobs, now ML could potentially take away
more. What do we need to do to ensure that vast numbers of people aren't 
left unemployed while a few have access to robots, ML, etc. and control
most things.
- Bill Gates recently proposed ( or sided ) with taxes for robots.

<a href="https://techcrunch.com/2017/04/30/algorithmic-accountability/">Transparency of algorithms</a>:
- Europe is trying to impose accountability on algorithms such that anybody 
who has been the recipient of an algorithmic decision can demand to know
what led to the decision.










What is ML?
==============================================================================

The main utility of computer programs is that they do calculations faster
than it would take to do by hand. Solving problems in an earlier era, would
involve us testing different configurations of the same algorithm, or
different algorithms, by modifying or writing new programs for each of them.
ML offers ways to incorporate this rework of the code into the program
itself so that the program can find a solution to the problem with no human 
intervention. The human, as of 2018, still writes the program but then the
program runs and finds an answer by itself. 

The reality is a little fuzzier than that. Even in the early days, some 
smart people would have automated some of their guessing and today's ML,
programs still need a lot of hand holding in various ways. It's hard to pick
a well-defined point in time which can mark the start of ML.

In fact, if you look past the hype, ML is just a shiny new name for
techniques used in age old fields like statistics, optimisation,
forecasting, etc. What has definitely changed though is that advancements
in those techniques and improved computing ability allows us to take on
tougher problems. It's like moving from a spade to a bulldozer. We dug 
before bulldozers also, just that we got much better at it.

Most of ML is not sexy
------------------------------------------------------------------------------
Most of one's time goes into 
- Formulation: in some cases it isn't easy to measure something directly
 so how do you account for it or incorporate it into your models? eg. 
 without a human reading it, it's hard to classify a tweet as having a
 positive, negative, or neutralsentiment. Instead, people use a crowd
 sourced dataset of sentiments of words to assign sentiments to each word in
 the tweet and then take the majority word sentiment across the tweet as the
 sentiment of the tweet. This will fail sometimes but it works often enough.
- Data gathering: data may not be easily available for the problem we're
 trying to solve. Or maybe only partial data is available.
- Data cleaning: the data may be missing some information, may have invalid
 values, etc.
- Incorporating domain knowledge: Just having data isn't enough. Sometimes 
 the user may be able to add to the data with their awareness and 
 understanding of the world. Take the tweet sentiment problem again, a
 tweet which goes, "This is great! sarcasm" would get assigned a positive
 sentiment by our majority word sentiment algorithm unless we add an 
 exception for the word sarcasm, which takes the opposite of the majority 
 sentiment.
- Making the data more amenable to the algorithms: Eg. algorithms are usually
 built to play with numerical data so when presented with categorical data, 
 we work within a lesser choice of algorithms or map categorical data to 
 numerical data somehow. eg. we could convert a variable which has values 
 A, B, or C, to twovariables, one carrying a True or False for A, and one 
 carrying a T/F for B. False for both would imply C.
- Debugging: code almost never works correctly the first time

Very little time is spent chilling, waiting for a machine to learn. 

A lot of time is then spent on iterations, when we look at the results, try 
to figure out any tweaks which might improve the results or some other aspect
of performance, and try them out until we're happy ( or at least not 
disappointed ) with it.

Algorithms
------------------------------------------------------------------------------
- Can be a black box ( impossible to interpret ), or hard to interpret, 
 or easy to interpret
- Can have simple parameters or very complex paramters

A frequently encountered trade off is a simple, transparent technique's 
acceptable results vs. complex, black box technique's great results. 
The former will be easier to debug, tweak, etc. but the latter will give
better results. 
B2C will often be latter, B2B former. Because B2B clients can demand 
explanations.

We haven't yet established a standard toolbox or a standard methodology which
is why it is still sort of an art. There are way too many alogrithms and more
and more keep getting discovered / invented all the time. Most of them are 
very good at specific problems but not good at all problems, i.e. we are still 
far from General AI 
( <a href="https://en.wikipedia.org/wiki/Artificial_general_intelligence">Wiki on artificial general intelligence</a>, ctrl + f for AlphaZero in the cool ML results section in this post )

BUT. There are already automated frameworks in the market
which run lots and lots of algos with a variety of configurations and
suggest what's best. Which means even ML jobs could get automated.









Simplifying the ML problem space
==============================================================================

Two types of splits:
- Clustering, classification, regression
- Supervised vs. unsupervised

There is more to this but we'll limit ourselves in interest of time.


Split 1
------------------------------------------------------------------------------
Clustering:
- identifying similarities / groupings of data 
- eg. <a href="http://ogres-crypt.com/public/NetFlix-Streaming-Genres2.html">Netflix clustering</a> done, I think, by people and not an algo.

Classification:
- Given groups of data, finding out what makes something 
part of a particular group 
- eg. If Netflix categorisation was done by people, then figuring out what
factors decide a movie's assignment to specific Netflix category.

Regression:
- Sensitivity of an output to various inputs
- eg. Uber pricing vs DoW, distance, origin, destination, etc.

Clustering and classification are related.
Having done the clustering exercise and found the groupings, some
classification algorithm would be required to back-infer how the clusters
are decided ( which may or may not have the same underlying logic as the
clustering algorithm, eg. when a really heavy algorithm was used to find out 
clusters but the user wants to run something more lightweight on a day to day
basis when assigning clusters to new data ) The classification algorithm can
then be used to assign new data points to the clusters.

Regression and classification are related
Both of them eventually predict an output when fed with an input except in
classification, the intent is primarily to predict the output, whereas in 
regression, the intent is to predict the output by way of explicitly 
evaluating the sensitivites to the input. Classification algorithms may not 
communicate sensitivities as transparently as regression. 


Split 2
------------------------------------------------------------------------------
Supervised
- eg. classification and regression
- It's where you're relating some output with some input

Unsupervised
- eg. clustering
- Where there is no clear right answer. Hard to validate.
- "All models are wrong, some are useful"













Recent buzz
==============================================================================

Primarily around deep learning and reinforcement learning

Deep learning:
- Really big, complex neural networks
- <a href="https://phys.org/news/2017-12-future-hardware-ai.html">Improved hardware</a> helps calibrate such big neural networks: 

<a href="http://playground.tensorflow.org/">Neural networks</a>:
- Have been around for three or four decades 
- Simplified view - task is to come up with matrices, M1, M2, ... Mn, such that 
( ( x * M1 ) * M2 ) ... * Mn ) = Y,
 where X is input and Y is output
- Different problem, different sort of neural network - <a href="http://www.asimovinstitute.org/neural-network-zoo/">some examples</a>
- Very hard to interpret the model

Reinforcement learning:
- It is used to work on problems where it's very hard to
 clearly link inputs / actions to eventual outputs
- For instance, there may be a really large sequence of inputs before which 
 the output is attained and it's hard to ascribe the impact each move had 
 individually to the ouput. Eg. individual moves in a game of chess leading
 to a result.
- It is hypothesised that humans, animals, etc. learn like this. The real
 world is very noisy and it's hard to link each action to the outcome.
- <a href="https://stats.stackexchange.com/questions/144154/supervised-learning-unsupervised-learning-and-reinforcement-learning-workflow">It is soooort of like supervised learning but not really</a> 







Faking it, hands-on
==============================================================================

In case you get asked to demo your abilities.

Setup instructions:
1. <a href ="https://cran.r-project.org">Install R</a>
2. <a href="https://www.rstudio.com">Install Rstudio</a>
3. Open Rstudio while connected to the internet and run the command below:
`install.packages(c('ggplot2','gridExtra'))`

Running instructions:
1. Open Rstudio
2. Open a new file
3. Paste <a href="https://raw.githubusercontent.com/thecomeonman/Faking-it-as-a-Data-Scientist/master/FakingHandsOn.R">this code</a> into that file
4. Press ctrl + enter, one at a time, to run each line / block of code