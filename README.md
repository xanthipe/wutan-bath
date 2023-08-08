# Wutan Bath Website

Built with [Jekyll](https://jekyllrb.com/) using a modified [Reverie](https://github.com/amitmerchant1990/reverie) theme. 

## Updating Basics

There are two types of file you're likely to have to create/update for the website: a markdown file (which will probably live under `_drafts` or `_posts` and be called something like `foo.md`) or a yaml file (that lives in `_data` and is named something like `foo.yml`).

Both of them use [Markdown](https://kramdown.gettalong.org/syntax.html) with a bit of [Liquid](https://jekyllrb.com/docs/liquid/) to mark up text and turn it into a webpage, just in slightly different ways.

Markdown files are the core of the site; all of the pages and news/blog posts are Markdown with a bit of HTML and a bit of Liquid where we need to do something fancier. Markdown will look very familiar to anyone who's done editorial mark-up on text: _italics_ and *bold* look like \_this\_ and \*this\*, a link has \[text\]\(and a path to point to\), an image \!\[is an excited\]\(link\). A single asterisk at the start of a line is a bullet point, while `1.` at the start of a line is the start of a numbered list.

YAML files are for anything where we need to present something in a consistent format, like the classes or the instructor details. In fact pretty much all of the pages 'read' the YAML files to build themselves rather than having to put all the formatting in by hand. They use Markdown for some of their text, but what makes them different are 'keys' and indents.

For example, `classes.yml` looks like this:

```
- day: Monday
  classes:
    - name: Tai Chi
      start: "18:30"
      end: "20:00"
      instructor: marick-baxter
      location: Central United Reformed Church, Frome Road, Bath BA2 2QN
      map_link: nyw3JWx1VNhMAH2z5
      description: |
        All levels of experience are welcome.
    - name: Kung Fu
      start: "20:00"
      end: "21:30"
      instructor: marick-baxter
      location: Central United Reformed Church, Frome Road, Bath BA2 2QN
      map_link: nyw3JWx1VNhMAH2z5
      description: |
        All levels of experience are welcome.
- day: Tuesday
  classes:
etcetra
```
Each of the bits of text ending in a colon (like `this:`) is a key - this is a bit of data that can be consistently read out by that name. The dashes denote a list, and the indenting of each line says what bits of data belong together (so everything from `name` to `description` in the classes list is all the bits of data to describe a class, and the classes list itself belongs to the day that's part of the day list). As long as the keys and the indents are right, the pages can read the data out and build themselves.

The other important thing to remember is that data in YAML files will get built out in the order you put it in, not any sort of magical sorting!

See YAML File Structure below for details about what each file actually does and how.

### What About Quotes?

If you look on a page that have a blockquote, you'll see something like this:

```
{% include quote.html quote="The first goal of Martial Arts training is to harmonize the body and spirit as one unit."
source="Path of the Complete Martial Artist" author="They Soon Tuan <br /> (Wutan Kung Fu International)" %}
```
This is a special bit of Liquid formatting that pulls in `quote.html` and fills in all the details you've given it. You can't use this directly in a YAML file, alas, but it works perfectly well in news/blog posts and if you need to add one in pages it's relatively easy to add. Literally copy, paste, and change the details over.

## Making Specific Types of Updates

### News Posts

* Create a file under `_drafts` called `post-name-in-kebab-case.md`.
* Copy the header block from an older post to your new file and update the details.
  * Layout is always `post`
  * Title is what you want to call the post.
  * Pick a category from: Classes, Site, History, Journey
  * Pick a tag from: news, blog (this will be used to filter them into the right place later)
* Write the body of the post in Markdown
  * If you're including a link or an image, you should write the path to what you're pointing at as `{{"/page/#anchor" | relative_url }}` so it works wherever on the website.
  * If you want to 'float' an image to the right or left of a piece of text so the text flows around it, use `#right` or `#left` as the anchor and use `{:.clearfix}` at the start of the first line where you'd like the text to go back to normal. Magic will happen.
* Save to commit the changes to the `develop` branch.
  * This kicks off the build process that puts the changes on the staging server - use the Actions tab at the top of the screen to see how it's going.
* Wait about a minute or so, then check your changes on the staging server.
* When you're happy, move your draft post to the `_posts` folder and change the name so it looks like `yyyy-mm-dd-post-name-in-kebab-case.md` where the date part is today's date.
  * Note: It can be a past date, but not a future date for Reasons.
* Create a pull request to merge `develop` to `master` (Pull Requests tab, new pull request, set base to master) and merge.
* Wait for the build to run, check the site has updated!

### Pages

* Open the right data file for the page you want to update - check the page code if you're not sure.
* Make your changes to the file, being careful to keep the keys and indents straight.
  * If you're including a link or an image in a Markdown-friendly value, you should write the path to what you're pointing at as `(../page/#anchor) ` as the page can't handle Liquid via a data file (boo!). The dots mean "go up a level then work back" if you're interested.
  * If you want to 'float' an image to the right or left of a piece of text so the text flows around it, use `#right` or `#left` as the anchor. Magic will happen.
* Save to commit the changes to the `develop` branch.
  * This kicks off the build process that puts the changes on the staging server - use the Actions tab at the top of the screen to see how it's going.
* Wait about a minute or so, then check your changes on the staging server.
* When you're happy, create a pull request to merge `develop` to `master` (Pull Requests tab, new pull request, set base to master) and merge.
* Wait for the build to run, check the site has updated!

## YAML File Structure

Only the more complicated YAML files are listed here - most of them are fairly obvious as to what they do!

### Classes

The `classes.yml` data file holds information on classes and looks like this:

```
- day: Monday
  classes:
    - name: Tai Chi
      start: "18:30"
      end: "20:00"
      instructor: marick-baxter
      location: Central United Reformed Church, Frome Road, Bath BA2 2QN
      map_link: nyw3JWx1VNhMAH2z5
      description: |
        All levels of experience are welcome.
    - name: Kung Fu
      start: "20:00"
      end: "21:30"
      instructor: marick-baxter
      location: Central United Reformed Church, Frome Road, Bath BA2 2QN
      map_link: nyw3JWx1VNhMAH2z5
      description: |
        All levels of experience are welcome.
```
* `day`: The day of the week. At the moment we only don't have any classes on a Sunday, so you should be able to find the right day already set up.
* `name`: What the class is called.
* `start` and `end`: Start and end times of the class. Times are in 24hr format and have to be in quotes to stop confusion over the colon in the time.
* `instructor`: This is what the instructor is called in `instructors.yml` - unless they've been spelled wrong this should just be their name in kebab-case (all lower, hyphen instead of any other punctuation).
* `location`: Where the class is normally held.
* `map_link`: If you find the address on Google Maps and click on 'Share', this is the string of characters at the end of the sharing link.
* `description`: Any extra information about the class. The pipe `|` on the first line allows you to use full Markdown and multiple paragraphs - just make sure your paragraphs have the right indent across all lines!

### Instructors

The `instructors.yml` data file contains all information for an instructor - history, contact details, prices - and looks like this:

```
david-rutherford:
  name: David Rutherford
  description: |
    David was taught Tai Chi and Kung Fu by Andrew Carter, one of They&apos;s high-ranking senior
    instructors in the [Wutan](../school/#wutan) school. When Andrew introduced Wutan to Bath in 1991 &ndash; initially
    with 5-hour sessions on Sunday afternoons &ndash; David completed the Tai Chi short form in 16
    weeks and also began Sensing Hands, Pa Gua, a Stick routine and Wu-style Tai Chi.

    Andrew had to return to the Wutan UK headquarters in Southampton after a year. David
    Rutherford, along with Steve Kruk and Martin Chivers, were determined to continue the
    school&apos;s presence in Bath, so they travelled to Southampton on Sundays for training with
    Master They Soon Tuan, the head of Wutan UK. At Southampton, David continued his training
    and also completed the 8 Palm Pa Gua sequence, Tai Chi Sword form and Broadsword form,
    along with their applications. It is natural to try and emulate your teacher in order to maintain the
    original &lsquo;message&rsquo;, and for years David has structured his class around Andrew&apos;s words and
    methods.
  contact:
    email: david@bathtaichi.co.uk
    phone: 07970 797 482
  prices: |
    £10 on a drop-in basis.

    There is a reduced rate if you are only interested in [Qigong](../arts/#qigong).
```

* `david-rutherford`: This is a special type of key - rather than a repeating one, it's an easy reference for the entire of that instructor. We use the instructor's name in kebab-case (all lower, any punctuation replaced with a hyphen).
* `name`: The instructor's name as it should be seen on screen.
* `description`: The instructor's history and general information. The pipe `|` on the first line allows you to use full Markdown and multiple paragraphs - just make sure your paragraphs have the right indent across all lines!
* `contact`: `email` and `phone` are as described. Please use the spaced formatting for phone numbers though - this makes it look better onscreen.
* `prices`: Information on the pricing structure the instructor uses. The pipe `|` on the first line allows you to use full Markdown and multiple paragraphs - just make sure your paragraphs have the right indent across all lines!


## License

MIT
