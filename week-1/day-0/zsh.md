# ZSH and iTerm2

Now that we have a smarter editor, let's make a smarter terminal!
Right now, our terminal is pretty basic white and black and it doesn't really show us much.
Let's work on upgrading this a good bit.

## iTerm2

When we rand the super installer script we installed a new program called iTerm2.
This is a drop in replacement for the built in Apple Terminal, but it has a lot more options in terms of flexibility and configuration.
So let's start by opening iTerm2.

## Installing zsh

So fare our terminal has been using a program called "bash" to run and interpret all of our input as well as the different commands like `cd`, `mkdir`, `open`, `etc`.
But, there is something better than bash (at least in my opinion) and it will really add to the speed and flexibility of our terminal experience.

The program we'll be installing is called `zsh` which is a drop in replacement for bash, but it has some extra power baked in and some better defaults when it comes to productivity.
To install `zsh`, we just need to go back to our old friend Homebrew:

```
brew install zsh
```

## Installing oh-my-zsh

While zsh can be SUPER powerful, it also can be a pain to get things properly set up.
Oh-My-ZSH is a tool that will configure ZSH and allows for a ton of themes, plugins, and more.


The super installer has pulled in ZSH and a default theme we'll use for this course.

When this finishes running, you'll already notice that your shell prompt is much more colorful.

Now let's make one last change to ZSH before we move on.

- Run `atom ~/.zshrc` to open the ZSH config file in Atom
- Where it says `ZSH_THEME` change it from `robbyrussel` to `doubleend`

This change will let you see the full path of your current session so you won't have to keep running `pwd`.
And it will even show you your current git status and branch!

## Fast Wins with ZSH

One of the biggest wins with ZSH is that our tab completion works ALOT better.
Now instead of getting a terrible "bonk" when you try to tab complete, zsh automatically suggests the file you are looking for.
If there are multiple files that could match your search, then it will suggest all of them and you can tab through each before selecting one with `ENTER`.
Also, one of the big wins for ZSH is that autocomplete is no longer case sensitive, this better matches the fact that by default, Mac hard drives are case-insensitive (although most servers are not).

> **NOTE** Most of these improvements are possible with bash, but zsh saves at least one hit of the TAB button per autocomplete.
> When you are in the terminal all day this adds up to a lot of saved time!

## Theming iTerm

So far, we have our autocomplete working a bit better by using ZSH, but our terminal is still kinda dull looking.
So let's make things a bit better.

- Go to https://github.com/mbadolato/iTerm2-Color-Schemes and choose a color scheme that you like for your terminal (I recommend one with really distinct colors rather than something monochrome, this will save time when scanning terminal output for errors and other messages)
- Run the following command to download the color schemes `git clone git@github.com:mbadolato/iTerm2-Color-Schemes.git ~/.term-colors`
- Open the new `.term-colors` directory: `open ~/.term-colors`
- In finder go to `schemes` and open the color scheme you chose
- Open iTerm Preferences by using `CMD+,`
    + Under "Profiles" and "Colors" click "Load Preset"
    + Find the preset you wanted from the drop down list

## Other iTerm Settings

While we have the iTerm settings open, let's configure a few things:

- Under "General" uncheck "Use Lion-style full screen windows" (Now you can full screen iTerm using `CMD+ENTER`)
- Under "Profiles" and "General" Make sure that "Working Directory" is set to "Reuse Previous Session's Directory"
- Under "Profiles" and "Window" increase the transparency to about 15% (transparency can be toggled with `CMD+U`)
