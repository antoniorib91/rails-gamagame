# Gama Game

Have you ever played Gama Game? It's a game of general knowledge questions and
answers. It used to be played at #gamagame, an IRC (Internet Relay Chat) channel in the Brasnet network, which no longer exists.

# Challenge

The game consists simply in displaying questions with options to be chosen by
the player. After 10 questions, a score must be displayed.

This app contains a `db/seeds.rb` file. It's a database of questions
(with their answers) that can be used for this exercise. The questions were
extracted from the [Qriusity](https://qriusity.com/) API and are merely used
as development seeds.

The general flow of the game is shown in the GIF at `docs/game-flow.gif`.

## User Stories

There are three user stories to be implemented. Each one has mockups and support
material in the `docs/` directory.

### US01 - Gama Game landing page

This page is the first page presented for players when they access our website.
It must explain a bit about the game and allow players to start playing by a button.

The template is at `docs/landing_page.png` and has the text and
disposition of elements in the page.

**Acceptance Criteria**

 * The page elements must be displayed as described in the template. Spacing (margins and paddings may be approximated, proportions must be kept)
 * Colors or fonts are provided below.
 * Clicking in the `Start` button is expected to do nothing by now.

### US02 - Implement game workflow

When the player clicks the `Start` button in the landing page, a new game should be created and the first game question should be presented with its options. The player then selects an option and clicks `Next`.

The workflow should present ten (10) questions for the player. These game questions should be assigned in a random order based on the list of "questions" already persisted in the database, so that each new game will look like different from the others. The order of the game questions should remain the same once a new game is created. (The workflow page should follow the design in the `docs/question.png` file.)

It is required to keep the state of the game: at anytime the player may refresh
the page and get in the same question (consider to use a database for that). The
application must also to provide an unique URL with the game ID saved in
the stored state.

If the player press `Next` in the last question, nothing should happen by now.

**Acceptance Criteria**

 * The page elements must be displayed as described in the template. Spacing (margins and paddings may be approximated, proportions must be kept)
 * Colors or fonts are provided below.
 * Clicking in the `Start` button in the landing page will start the game workflow.
 * Clicking in the `Next` button shows the next question.
 * The `Next` button must be disabled until an option is selected.

### US003 - Display player score

After answering the last question, when the player clicks `Next`, a page with
the score and a button to start a new game must be presented.

The score is a sum of all the correct-answered questions. So, the maximum score
an user may get is 10.

The "start a new game" action should follow the same rules specified in the US01.

The template for this page is located at `docs/score.png`.

**Acceptance Criteria**

 * The page elements must be displayed as described in the template. Spacing (margins and paddings may be approximated, proportions must be kept)
 * Colors or fonts are provided below.
 * Clicking in the `Next` button of the last question shows the score page.
 * The score must be between 0 and 10.
 * Clicking in the `Start a new game` button must start over a new game.

# Some UI information

 * Colors used
   * #EFF3F6
   * #2EA1F8
   * #1990EA
   * #1166A5
   * #FFFFFF
   * #E6EAEE
   * #39B54A
   * #34AA44
   * #249533
   * #1E930B
   * #1E9D09
   * #009DDC
   * #EEEEEE
   * #B54C0D
 * Fonts used
   * 'Source Sans Pro' (weights: 300, 400 and 600)
   * sans-serif (fallback)

# Exercise requirements

These are some important requirements for this stage. We'll certainly make a contextual assessment of your app in case they're not fulfilled, but do your best to cover all of them.

* You have to use Ruby and Rails for this coding challenge.
* You have to support modern browsers.
   * You don't need to worry about old browsers compatibility.
* Your application must work
   * Think of our team not only as evaluators but also as your customers. Think of your final upload as a deployment and that our evaluation occurs in production. Favor delivering an application that works correctly over one with complete –but broken– features.
* Give us instructions through the `README.md` file
   * We will set up and use your application, so don't forget to add important instructions for us to get your app up and running smoothly.
* Have a useful and informative Git history
   * The provided ZIP file does not include a `.git/` structure, but we expect you to use Git to version changes during the development. You are supposed to produce code upon the provided code. Feel free to change the code, update any dependencies or install new ones.
   * Divide your work into meaningful commits, we'll assess the steps you've taken to build this exercise.
   * You're the only person who must commit in this repository.
* Write tests
   * Tests play a very important role in our technical culture. We value technical excellence, coding good practices and all efforts to deliver high quality software.
   * Do not worry if you're not experienced with the practice, enjoy the opportunity to exercise it.
* Your test suite must be green
   * A red (broken) test suite causes a lot of frustration in teams and makes it harder to deliver value with the software. It may also be a symptom of buggy software. Favor working tests over incomplete tests! Favor working code over failing code!

# Tips

   * The provided code is a boilerplate Ruby/Rails app.
   * You're allowed to use a CSS framework, although it's not mandatory. We expect to see your CSS skills either in writing your own or in using a CSS framework appropriately.
   * You can use underscore, jQuery or another JS framework to help with DOM manipulation if you need it.
   * React, Vue.js, Angular and other frameworks are a plus, but not required. If you feel comfortable with them, that's OK. Just pay attention to the limited time you have to accomplish the required features described in the `CHALLENGE.md` file.
   * There is a `db/seeds.rb` which has 20 questions to be used during development. Those questions are from [Qriusity API](https://market.mashape.com/hudelabs/qriusity) and are used merely to this challenge.
   * Keep as close as you can from the templates presented in the `docs/` directory.
   * You don't need to strive for 100% code coverage, focus on meaningful tests.
   * For acceptance tests, you can use [Capybara](https://github.com/teamcapybara/capybara).
   * You are allowed to use any Ruby library to help you achieve the project goal.

# What's going to be assessed?

   * Your CSS, JS and HTML skills
   * How you design APIs, controllers, and tests
   * Security issues (pay attention to them!)
   * Organization and zeal for the code
   * Your tests
   * Your Git history
