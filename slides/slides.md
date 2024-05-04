---
theme: default
title: A Reluctant Powersheller
info: |
  ## A Reluctant Powersheller
  A story of learning and using Powershell

  ps.bowmanjd.com
highlighter: shiki
drawings:
  presenterOnly: true
  persist: false
mdc: true
transition: slide-left
class: text-center
hideInToc: true
---

# Reluctant Powersheller

<div class="justify-center flex">

![Powershell logo](/logo-powershell-core.svg)

</div>

## How I unintentionally learned to love Powershell

ps.bowmanjd.com

<!--
It is an honor to be here. I am Jonathan Bowman. I am a hobbyist developer. I have also been a teacher, preacher, web developer, IT director, CRM consultant, and now I write SQL all day at Cargas. Cargas is the most humane and thoughtful place I have ever worked with technology, and I am proud to be there. I get excited about Vim, Linux, Python, bash, Rust, even trying to learn a little Go these days (the language, not the game). And today I am sharing with you about Powershell, which I am ambivalent about. But I have grown to a place where I have to say: I like Powershell. I recommend Powershell for a variety of use cases. And I genuinely enjoy working with the syntax.
-->

---
class: text-center
hideInToc: true
---

<div class="justify-center flex">

![qr code for ps.bowmanjd.com](/qrcode.svg)

</div>

# ps.bowmanjd.com

<!--

This is the link to this slide deck as well as a repo with a couple example scripts in it, and my contact info. Feel free to reach out any time.

-->

---
layout: full
---

<Toc minDepth="1" maxDepth="1" style="font-size: 60%"></Toc>

---
layout: center
hideInToc: true
---

<SlidevVideo autoplay autoreset='slide'>
  <source src="intro.webm" type="video/webm" />
</SlidevVideo>

---
layout: quote
---

> I searched my .bash_history for the line with the highest ratio of special characters to regular alphanumeric characters, and the winner was: `cat out.txt | grep -o "[[(].*[])][^)]]*$"` ... I have no memory of this and no idea what I was trying to do, but I sure hope it worked.

([Randall Munroe](https://m.xkcd.com/1638/))

---
layout: section
---

# What is a Shell?

---
layout: two-cols-header
---

## Difference: shell and terminal

A terminal \[emulator\] is the device or software application that "wraps" the shell. Examples:

::left::

- Mac: Terminal or [iTerm2](https://iterm2.com/)
- Windows Terminal
- Gnome Terminal, Konsole, xterm, rxvt
- Linux, Mac: [Warp](https://www.warp.dev/)
- Linux, Mac: [Kitty](https://sw.kovidgoyal.net/kitty/)

::right::

- [Alacritty](https://alacritty.org/)
- [Wezterm](https://wezfurlong.org/wezterm/index.html)
- [Hyper](https://hyper.is/)

---
layout: two-cols-header
---

## Shell

An interpreter that provides a command-line user interface for operating systems. Examples:

::left::

- [bash](https://www.gnu.org/software/bash/)
- [zsh](https://www.zsh.org/)
- [tcsh](https://www.tcsh.org/)
- [sh](https://man.freebsd.org/cgi/man.cgi?query=sh)/[ash](https://www.in-ulm.de/~mascheck/various/ash/)/[dash](https://git.kernel.org/pub/scm/utils/dash/dash.git)
- [ksh](http://kornshell.com/)

::right::

- [fish](https://fishshell.com/)
- [Nushell](https://www.nushell.sh/)
- [elvish](https://elv.sh/)
- [xonsh](https://xon.sh/)
- [oils](https://www.oilshell.org/)
- [so many more...](https://github.com/oilshell/oil/wiki/Alternative-Shells)

---
layout: image
image: /shell-unix-programming-env.png
backgroundSize: contain
---

<!--
From the 1984 book _The Unix Programming Environmment_ by Brian Kernighan and Rob Pike:

- Although most users think of the shell as an interactive command interpreter, it is really a programming language in which each statement runs a command. Because it must satisfy both the interactive and programming aspects of command execution, it is a strange language, shaped as much by history as by design. [Both an interactive interpreter, like a REPL (read-eval-print loop), and a programming language. And it evolves over time due to dynamic needs.]
- The range of its application leads to an unsettling quantity of detail in the language, but you don't need to understand every nuance to use it effectively. [Some good encouragement, there. Just wade in or even dive in]

-->

---
layout: two-cols
---

## Typically part of shell

- cd
- ls
- echo
- help
- pwd
- read

::right::

<span v-click>

## Not usually baked-in

- cat
- grep
- tail, head
- more, less
- sed, awk, vi

</span>

<!--

When we use a command-line shell, it is easy to think that all the tools we are using are baked into the shell. But you can change your shell, and keep using the very same grep, and the very same pager you are used to.

This is both a benefit and a problem. Love the personalization, but when it comes to sharing... How to you know which grep your friends have?

-->

---
layout: section
---

# Why another shell?

---

## Option fatigue

Why make another `________________` ?
<br><span v-click>...web framework</span><span v-click> ...shell</span><span v-click> ...flavor of hummus</span>

<v-clicks>

- Diverse needs
- Fun and enjoyment
- Divergence is good
  - (Does consolidation and monopoly serve us well?)
  - Heterogeneity is sometimes (often?) necessary
- Just choose Cinnamon Life

</v-clicks>

---
layout: section
---

# The Windows Automation Gap

---
layout: image
image: /windows-automation.png
backgroundSize: contain
---

<!--
My Powershell story starts before Powershell. And while no one's Powershell experience needs to start with Microsoft Windows anymore, mine did.

In 2004, in my mid-twenties, I stumbled into a job as an IT technician in a school; responsibilities included managing Windows servers. Years before that, I had been bitten by the Linux bug, and was already obsessed with configuring everything with text files, and automating anything with the likes of Bash, Perl, Python. So I came to the world of Windows Servers itching to automate. And the story was not good.

Bottom line: Windows had a miles-wide product gap: it was very difficult, and sometimes impossible, to easily, repeatably, deterministically automate all the things. In fact, sometimes I needed to resort to automating by sending mouse clicks and keyboard shortcuts to specific windows. Microsoft said Windows had a shell. But they always meant a graphical shell. Which looks pretty, but is quite difficult to automate.
-->

---
layout: quote
---

> When Microsoft reached out to me, I said "no."
> 
> "What do you mean, 'no'?"
> 
> "Well, I don't want to talk to you."
> 
> "Well, why not?"
> 
> "Because your software is \[rubbish\] and I don't want to have anything to do with it. I don't want to work with \[rubbish\] software... it's an embarrassment."

(Jeffrey Snover, inventor of Powershell, on how he came to Microsoft)

<!--
And so the story of Powershell begins.
-->

---
layout: image
image: /shell-of-an-idea.jpg
backgroundSize: contain
---

<!-- 
By the way, if you like to read about promising technologies being birthed in dysfunctional organizations, you might find this book interesting.

Or, if, like me, you just like to read historical non-fiction about command-line shells.
-->

---
layout: center
hideInToc: true
---

```powershell
# List all users in the "Students" Organizational Unit
Get-ADUser -Filter * -SearchBase "OU=Students,OU=UserAccounts,DC=SCHOOL,DC=ORG"

# List the IP addresses of all computers with a name that starts with DC
Get-ADComputer -Filter 'Name -like "DC*"' -Properties IPv4Address, IPv6Address
```

<!--
My first encounter with Powershell was twelve years later, as an IT director in another school. It was a Windows Active Directory environment. Sometimes I just didn't want to fire up a bloated GUI application to do a thing, or I wanted more control, and I found that this thing called Powershell had moved in to fill the Windows automation product gap I had noticed earlier. 

So I used commands, on occasions, like `Get-ADUser` and `Get-ADComputer`. And assorted other Active Directory commands to query and update users and computers. Just right there on the command line, and occasionally in short scripts. I treated it like a helpful toy.

-->

---
layout: image
image: /ansible.svg
backgroundSize: contain
---

[Using Ansible with Windows](https://docs.ansible.com/ansible/latest/os_guide/windows_usage.html)

<!--

We had far more Linux servers than we had Windows servers, though, and I started to learn Ansible, a popular configuration management tool. And, lo and behold, Ansible also had some support (quite a bit more now) for Windows!

- For Linux, BSD, Mac, and the like, Ansible uses Python under the hood
- For Windows, Ansible uses Powershell. So, maybe this Powershell thing wasn't just a joke.

That was one of my first moments of "maybe Powershell deserves a deeper look..."

And soon I found myself turning to Powershell more and more often to interact and automate.

-->

---
layout: image
image: /windows-admin.jpg
backgroundSize: contain
---

<!--
And that is a starting place for many Powershell users. They are strung out IT people just trying to get handle on things.

Powershell is much bigger than that, as I find out later. But if you do a casual web search, most of your results will be that exact category: desperate Windows administrators, in dire need of real control and automation.

-->

---

## Use case #1

- You "have a friend" who could use a little more automation
- Some of what they need to automate is Windows...
- ...or they struggle with bash 🤭😲🧑‍💻

<!--

There are a lot of people who do not write code. Who do not think they can write code. And they start because they want to make their system administration a little easier. And Powershell is that gentle on-ramp for writing computer programs to make life better.

There are people who might not pick up bash, but they might just pick up Powershell. The same argument could be made for Python or Ruby. Or a newer shell like fish, Nushell, etc.

-->

---
layout: section
---

# A Gentle On-Ramp

<!--

A few things I noticed about Powershell right from the beginning:

- It was comprehensive. All the levers are available. Unlike earlier experiences, where you could do some automation, but for real control you had to open a window and grip the mouse. Powershell commands covered every feature, and sometimes more than the UI.
- I had a network engineer who started using Powershell. That was a head-scratcher for me because he knew perfectly good Python. One day he comments something like, "you know, I really like Powershell. I can really get things done."
- I think he was referring to the systemic coverage I already called out, but also the ease with which one can learn Powershell because it is elegantly and deliberately designed

-->

---

## cmdlets

- `Verb-Noun`
- Find all the verbs with the `Get-Verb` command
- Nouns might be anything
- Example: `Import-Csv`
- Example: `Add-Content`
- (the word "cmdlets" has great SEO)

---

## [Get-Help](https://learn.microsoft.com/powershell/module/microsoft.powershell.core/get-help)

- Use `Get-Help` command to access documentation
- `Get-Help Get-Command` finds help for the command `Get-Command`
- `Help` is the same as `Get-Help`, but paged.
- `Help array` searches for docs about arrays
- `Help about_*` will show results that start with "about_"
- `Help -Online Get-Member` opens a web page about `Get-Member`
- `Help -Examples Invoke-RestMethod` shows examples for `irm` 
- `Update-Help` to periodically update the local docs

<!--

Powershell has a ton of very verbose and very discoverable documentation, built in, updateable, and online.

-->

---
layout: center
---

<SlidevVideo autoplay autoreset='slide'>
  <source src="pshelp.webm" type="video/webm" />
</SlidevVideo>

<!--
Get-Help (or Help if you want to view it with a pager) can be followed with a command name.

In this case, `Get-Help`. Currently, there are only a few pages, and a note about "only partial help". So, we enter `Get-Help` and the docs download.

Now, the same help article is much more verbose, including examples.
-->

---
layout: fact
---

[learn.microsoft.com/powershell/](https://learn.microsoft.com/powershell/){style="font-size: 200%"}

---
layout: image-right
image: /ps-month.jpg
backgroundSize: contain
---

[Learn Powershell<br>in a Month of Lunches](https://www.manning.com/books/learn-powershell-in-a-month-of-lunches)

<!--

I am currently reading this now and find I am learning new things in every chapter. But it is designed to be hospitable for those that have no programming experience.

-->

---
layout: two-cols-header
layoutClass: gap-16
---

## Laid back and folksy: Powershell MVA videos

::left::

![Getting Started with Powershell 3.0](/getting-started-with-powershell.png){style="height:200px"}

[Getting Started with PowerShell 3.0](https://learn.microsoft.com/en-us/shows/GetStartedPowerShell3/)
<br>([also on Youtube](https://www.youtube.com/watch?v=UVUd9_k9C6A&list=PL7T06JEc5PF6kusr3cg6eYqCAiU6ezVj5&index=2))

::right::

![Advanced Tools * Scripting with Powershell 3.0](/advanced-tools-and-scripting.png){style="height:200px"}

[Advanced Tools & Scripting with PowerShell 3.0](https://learn.microsoft.com/en-us/shows/advpowershell3/)
<br>([also on Youtube](https://www.youtube.com/watch?v=K4YDHFalAK8&list=PL7T06JEc5PF6kusr3cg6eYqCAiU6ezVj5&index=1))


---
layout: image-left
image: /powershell-101.png
backgroundSize: contain
---

## Powershell 101 book

- [Read online for free](https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/00-introduction)
- [Also on LeanPub](https://leanpub.com/powershell101)

---
layout: image-right
image: /learnps.png
backgroundSize: contain
---

## Learn X in Y Minutes

[learnxinyminutes.com/docs/powershell](https://learnxinyminutes.com/docs/powershell)

---
layout: image
image: /powershell-marketing.png
backgroundSize: contain
---

<!--

- So Powershell is intended to be easy to learn for Windows Admins who may have little experience with coding or command line.
- what does a marketing team do when told to promote a command-line shell?
- "Those who don't automate are doomed to repeat themselves" -- love this quote. Is true to the powershell community. It isn't competing so much with other shells, as it is competing with the practice of "clicking through your problems" which is rampant in Windows admin culture.

-->

---
layout: image
image: /modernize-democratize.png
backgroundSize: contain
---

<!--

- The API for windows infrastructure
- Powershell is open source and cross-platform

-->

---
layout: section
---

# Cross-platform, Open Source

---

## Use case #2

- You want to share a shell script and trust that it will work on a variety of platforms, even Windows
- Maybe you write a bash script _and_ a Powershell script...
- Or if all your friends already have Powershell...

<!--

I often find myself in a software shop where I am the lone Linux person. So, if I am surrounded by Mac people, and I want to share a script, I will make sure it works in zsh, or whatever runtimes I can count on, such as Python or Node.

If surrounded by Windows people, powershell is a great choice. They can just run it. And I can still develop it on my OS of choice.
-->

---

## Open Source

- [github.com/PowerShell/PowerShell](https://github.com/PowerShell/PowerShell)
- [github.com/MicrosoftDocs/PowerShell-Docs](https://github.com/MicrosoftDocs/PowerShell-Docs)

---

## Installation on various platforms

- Windows: `winget install Microsoft.PowerShell`
- Mac: `brew install powershell/tap/powershell`
- Any: `docker run -it mcr.microsoft.com/powershell`
- Linux: [add the repo then install via package manager](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-linux)
- Nix: `nix-shell -p powershell`

<!--
Powershell 5 is pre-installed on Windows. But the current cross-platform version is Powershell 7. This can be installed on Windows with winget, Mac with brew, or you can run in docker. Microsoft has instructions for Linux, as it varies by distribution, such as Debian, Ubuntu, Redhat or derivative, Alpine, Arch, etc.
-->

---

## Editors

- VS Code with [Powershell extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell)
- Neovim works well (suggested plugins: mason, nvim-lspconfig (use `powershell_es`), mason-lspconfig
- [Sublime with LSP](https://github.com/sublimelsp/LSP-PowerShellEditorServices)
- [In LSP mode for Emacs](https://emacs-lsp.github.io/lsp-mode/page/lsp-pwsh/)
- Language Server: [github.com/PowerShell/PowerShellEditorServices](https://github.com/PowerShell/PowerShellEditorServices)

<!--

Powershell and VS Code certainly seem made for each other. I enjoy writing Powershell in Neovim. Any editor with LSP support should be able to work with the PowerShellEditorServices language server.

-->

---
layout: fact
---

## Use case #3

You or an accomplice needs to accomplish a specific task for which Powershell has a relevant and well-maintained module or script.

---
layout: two-cols-header
---

## Powershell Gallery at [powershellgallery.com](https://www.powershellgallery.com/)

::left::

- [dbatools.io](https://dbatools.io/)
- [pester.dev](https://pester.dev/) (Testing framework)
- [PSPGP](https://github.com/EvotecIT/PSPGP)
- [Posh-ACME](https://poshac.me/docs/) (Let's Encrypt)
- [ImportExcel](https://github.com/dfinke/ImportExcel)
- [powershell-yaml](https://github.com/cloudbase/powershell-yaml)
- [platyPS](https://github.com/PowerShell/platyPS) (docs in Markdown)
- [Pansies](https://github.com/PoshCode/Pansies) (colors and emojis!)

::right::

- [MailoZaurr](https://github.com/EvotecIT/MailoZaurr) (SMTP, IMAP...)
- [SimplySql](https://github.com/mithrandyr/SimplySql) (various db engines)
- [PSWriteHTML](https://github.com/EvotecIT/PSWriteHTML)
- [PS-TextTable](https://github.com/jjcarrier/PS-TextTable) (text to objects)
- [PS-TableUI](https://github.com/jjcarrier/PS-TableUI) (TUI item selector)
- [Pode](https://badgerati.github.io/Pode/) (web framework!?)
- [Az](https://learn.microsoft.com/en-us/powershell/azure/)
- [PSScriptAnalyzer](https://github.com/PowerShell/PSScriptAnalyzer)

---
layout: section
---

# Community

<!--

For me, the hospitality of a language community is almost as important as the syntax and features of the language itself.

In my experience, the Powershell community has been impressively welcoming and helpful.

-->

---

## Discussions, Blogs...

- [discord.com/invite/powershell](https://discord.com/invite/powershell)
- [powershell.slack.com](https://powershell.slack.com/)
- [Official Community blog](https://devblogs.microsoft.com/powershell-community/)
- [reddit.com/r/PowerShell/](https://www.reddit.com/r/PowerShell/)
- [powershell.org](https://powershell.org/)

---

## Streams

- [Research Triangle Powershell Users Group](https://www.youtube.com/c/rtpsug)
- [@PowershellOrg](https://www.youtube.com/@PowershellOrg)

---

## The Powershell Podcast by PDQ

[The Powershell Podcast](https://www.pdq.com/resources/the-powershell-podcast/)

---
layout: section
---

# Wikipedia search client

<!-- 

The language features themselves have caused me to warm up to Powershell more than anything. So I thought I would write and incredibly useful tool in front of your very eyes. And, as we go, highlight some bits of the language I have found attractive.

So, let's build a Wikipedia search client

-->

---

```powershell
Invoke-WebRequest "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=5&q=linksto:Shell_(computing)"
```

```txt {hide|all|3-4}
StatusCode        : 200
StatusDescription : OK
Content           : {"pages":[{"id":21255,"key":"North_Korea","title":"North Korea","excerpt":"North Korea, officially the Democratic People's Republic of Korea (DPRK), 
                    is a country in East Asia. It constitutes the north…
RawContent        : HTTP/1.1 200 OK
                    Date: Fri, 19 Apr 2024 00:31:53 GMT
                    Server: mw1404.eqiad.wmnet
                    X-Content-Type-Options: nosniff
                    Cache-Control: no-cache
                    Access-Control-Allow-Origin: *
                    Vary: Accept-Encoding
                    Age: 0
                    X-Cac…
Headers           : {[Date, System.String[]], [Server, System.String[]], [X-Content-Type-Options, System.String[]], [Cache-Control, System.String[]]…}
Images            : {}
InputFields       : {}
Links             : {}
RawContentLength  : 2096
RelationLink      : {}
```

<!--

`Invoke-WebRequest` is a built-in Powershell cmdlet that functions a little like curl or wget, if you are familiar with those command-line http clients. Here we give it an API URL for Wikipedia, asking it to return a list of articles that link to the Shell (computing) article.

And you might expect it to return JSON response body. I kinda does...

[click] But it returns an object, not just text. In this output, on the left we see property names, on the right their values, such as headers, content length, and so on.

[click] This Content property looks like it has the desired JSON response. How do we get just that?

-->

---

````md magic-move
```powershell
Invoke-WebRequest "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=5&q=linksto:Shell_(computing)"
```

```powershell
(Invoke-WebRequest "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=5&q=linksto:Shell_(computing)")
```

```powershell
(Invoke-WebRequest "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=5&q=linksto:Shell_(computing)").Content
```
````

```ansi{hide|all|all}{maxHeight:'26.5rem'}
{"pages":[{"id":21255,"key":"North_Korea","title":"North Korea","excerpt":"North Korea, officially the Democratic People's Republic of Korea (DPRK), is a country in East Asia. It constitutes the northern half of the Korean Peninsula","matched_title":null,"description":"Country in East Asia","thumbnail":{"mimetype":"image/svg+xml","width":60,"height":30,"duration":null,"url":"//upload.wikimedia.org/wikipedia/commons/thumb/5/51/Flag_of_North_Korea.svg/60px-Flag_of_North_Korea.svg.png"}},{"id":18890,"key":"Microsoft_Windows","title":"Microsoft Windows","excerpt":"Microsoft Windows is a product line of proprietary graphical operating systems developed and marketed by Microsoft. It is grouped into families and sub-families","matched_title":null,"description":"Computer operating systems","thumbnail":null},{"id":20640,"key":"MacOS","title":"MacOS","excerpt":"macOS (/ˌmækoʊˈɛs/ MAK-oh-ESS), originally Mac OS X, previously shortened as OS X, is an operating system developed and marketed by Apple since 2001. It","matched_title":null,"description":"Operating system for Apple computers","thumbnail":null},{"id":6097297,"key":"Linux","title":"Linux","excerpt":"Linux (/ˈlɪnʊks/ LIN-uuks) is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system kernel first released","matched_title":null,"description":"Family of Unix-like operating systems","thumbnail":{"mimetype":"image/svg+xml","width":60,"height":71,"duration":null,"url":"//upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/60px-Tux.svg.png"}},{"id":22194,"key":"Operating_system","title":"Operating system","excerpt":"An operating system (OS) is system software that manages computer hardware and software resources, and provides common services for computer programs.","matched_title":null,"description":"Software that manages computer hardware resources","thumbnail":{"mimetype":"image/svg+xml","width":60,"height":89,"duration":null,"url":"//upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Operating_system_placement.svg/60px-Operating_system_placement.svg.png"}}]}
```

<!--

Well, one way to do that is to encapsulate the command in parentheses...

[click] Now we can consider which property we want to pull out. I believe it was the Content property.

[click] This should give us just the content body...

[click] And there it is. The resulting blob of good old JSON.

[click] This is, for me, something that made Powershell a little offensive, but in the long term keeps drawing me in. While it can handle text input and output just fine, it's native inputs and outputs are typically in object form. We'll see more how the object-oriented nature of the outputs is both weird and helpful.

-->

---

````md magic-move
```powershell
(Invoke-WebRequest "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=5&q=linksto:Shell_(computing)").Content
```

```powershell {all|1-2|3|4-5|all}
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-WebRequest $url
$response.Content
```

```powershell
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-WebRequest $url
$body = $response.Content | ConvertFrom-Json
$body
```
````

```ansi{hide|all|1-2}{maxHeight:'26.5rem'}
pages
-----
{@{id=21255; key=North_Korea; title=North Korea; excerpt=North Korea, officially the Democratic People's Republic of Korea (DPRK), is a country in East Asia. It constitute…
```

<!--

Let's evolve this script by introducing variables for flexibility and readability.

[click] Let's look at what we have done...

[click] query and limit are now their own variables

[click] Interpolating those variables in a string is fairly straightforward

[click] And our response is a variable as well. 

[click] Note that the response is still just raw JSON text though. Let's parse that JSON so we can better reference the values it contains...

[click] There are a lot of built in converters in Powershell, ConvertFrom-Json is one we are using here. The body should now look like an object.

[click] Which it is.

[click] It has a single property, `pages`

-->

---

````md magic-move

```powershell
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-WebRequest $url
$body = $response.Content | ConvertFrom-Json
$body
```

```powershell
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-RestMethod $url
$body = $response.Content | ConvertFrom-Json
$body
```

```powershell
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-RestMethod $url
```

```powershell
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-RestMethod $url
$pages = $response.pages
$pages
```
````

<div v-click>
```ansi{all}{maxHeight:'21.5rem'}
id            : 21255
key           : North_Korea
title         : North Korea
excerpt       : North Korea, officially the Democratic People's Republic of Korea (DPRK), is a country in East Asia. It constitutes the northern half of the Korean Peninsula
matched_title : 
description   : Country in East Asia
thumbnail     : @{mimetype=image/svg+xml; width=60; height=30; duration=; url=//upload.wikimedia.org/wikipedia/commons/thumb/5/51/Flag_of_North_Korea.svg/60px-Flag_of_North_Korea.svg.png}

id            : 18890
key           : Microsoft_Windows
title         : Microsoft Windows
excerpt       : Microsoft Windows is a product line of proprietary graphical operating systems developed and marketed by Microsoft. It is grouped into families and sub-families
matched_title : 
description   : Computer operating systems
thumbnail     : 

id            : 20640
key           : MacOS
title         : MacOS
excerpt       : macOS (/ˌmækoʊˈɛs/ MAK-oh-ESS), originally Mac OS X, previously shortened as OS X, is an operating system developed and marketed by Apple since 2001. It
matched_title : 
description   : Operating system for Apple computers
thumbnail     : 

id            : 6097297
key           : Linux
title         : Linux
excerpt       : Linux (/ˈlɪnʊks/ LIN-uuks) is a family of open-source Unix-like operating systems based on the Linux kernel, an operating system kernel first released
matched_title : 
description   : Family of Unix-like operating systems
thumbnail     : @{mimetype=image/svg+xml; width=60; height=71; duration=; url=//upload.wikimedia.org/wikipedia/commons/thumb/3/35/Tux.svg/60px-Tux.svg.png}

id            : 22194
key           : Operating_system
title         : Operating system
excerpt       : An operating system (OS) is system software that manages computer hardware and software resources, and provides common services for computer programs.
matched_title : 
description   : Software that manages computer hardware resources
thumbnail     : @{mimetype=image/svg+xml; width=60; height=89; duration=; url=//upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Operating_system_placement.svg/60px-Operating_system_placement.svg.png}
```
</div>

---

```powershell
$pages | Format-Table
```

<div v-click>
```text{all}{maxHeight:'26.5rem'}
     id key               title             excerpt
     -- ---               -----             -------                                                                                                                         
  21255 North_Korea       North Korea       North Korea, officially the Democratic People's Republic of Korea (DPRK), is a country in East Asia. It constitutes the norther…
  18890 Microsoft_Windows Microsoft Windows Microsoft Windows is a product line of proprietary graphical operating systems developed and marketed by Microsoft. It is group…
  20640 MacOS             MacOS             macOS (/ˌmækoʊˈɛs/ MAK-oh-ESS), originally Mac OS X, previously shortened as OS X, is an operating system developed and markete…
6097297 Linux             Linux             Linux (/ˈlɪnʊks/ LIN-uuks) is a family of open-source Unix-like operating systems based on the Linux kernel, an operating syste…
  22194 Operating_system  Operating system  An operating system (OS) is system software that manages computer hardware and software resources, and provides common services…
```
</div>

---

```powershell
$pages | Get-Member
```

<div v-click>
```text{all}{maxHeight:'26.5rem'}
   TypeName: System.Management.Automation.PSCustomObject

Name          MemberType   Definition
----          ----------   ----------
Equals        Method       bool Equals(System.Object obj)
GetHashCode   Method       int GetHashCode()
GetType       Method       type GetType()
ToString      Method       string ToString()
description   NoteProperty string description=Country in East Asia
excerpt       NoteProperty string excerpt=North Korea, officially the Democratic People's Republic of Korea (DPRK), is a country in East Asia. It constitutes the northern …
id            NoteProperty long id=21255
key           NoteProperty string key=North_Korea
matched_title NoteProperty object matched_title=null
thumbnail     NoteProperty System.Management.Automation.PSCustomObject thumbnail=@{mimetype=image/svg+xml; width=60; height=30; duration=; url=//upload.wikimedia.org/wikip…
title         NoteProperty string title=North Korea
```
</div>

---

```powershell
$body.pages.GetType()
```

<div v-click>
```text{all}{maxHeight:'26.5rem'}
IsPublic IsSerial Name                                     BaseType
-------- -------- ----                                     --------
True     True     Object[]                                 System.Array
```
</div>

---

````md magic-move
```powershell
$pages | ConvertTo-Html
```

```powershell
$pages | ConvertTo-Html -Fragment
```

```powershell
$pages | ConvertTo-Html -Fragment -Property Key, Title, Description
```
````

<div v-click>
```html
<table>
<colgroup><col/><col/><col/></colgroup>
<tr><th>key</th><th>title</th><th>description</th></tr>
<tr><td>North_Korea</td><td>North Korea</td><td>Country in East Asia</td></tr>
<tr><td>Microsoft_Windows</td><td>Microsoft Windows</td><td>Computer operating systems</td></tr>
<tr><td>MacOS</td><td>MacOS</td><td>Operating system for Apple computers</td></tr>
<tr><td>Linux</td><td>Linux</td><td>Family of Unix-like operating systems</td></tr>
<tr><td>Operating_system</td><td>Operating system</td><td>Software that manages computer hardware resources</td></tr>
</table>
```
</div>

---

<table>
<colgroup><col/><col/><col/></colgroup>
<tr><th>key</th><th>title</th><th>description</th></tr>
<tr><td>North_Korea</td><td>North Korea</td><td>Country in East Asia</td></tr>
<tr><td>Microsoft_Windows</td><td>Microsoft Windows</td><td>Computer operating systems</td></tr>
<tr><td>MacOS</td><td>MacOS</td><td>Operating system for Apple computers</td></tr>
<tr><td>Linux</td><td>Linux</td><td>Family of Unix-like operating systems</td></tr>
<tr><td>Operating_system</td><td>Operating system</td><td>Software that manages computer hardware resources</td></tr>
</table>

---

````md magic-move
```powershell
$pages = $pages | Select-Object -Last 4
```

```powershell
$pages = $pages | Select-Object -Last 4 | Sort-Object -Property key
```

```powershell
$pages = $pages | Select-Object -Last 4 | Sort-Object -Property key
$pages
```

```powershell
$pages = $pages | Select-Object -Last 4 | Sort-Object -Property key
$pages.title
```
````

<div v-click>
```text
Linux
MacOS
Microsoft Windows
Operating system
```
</div>

---
layout: none
---

````md magic-move
```powershell
$query = "linksto:Shell_(computing)"
$limit = 5
$url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
$response = Invoke-RestMethod $url
$pages = $response.pages | Sort-Object -Property title
$pages
```

```powershell
function Find-WikipediaArticle
{
  $query = "linksto:Shell_(computing)"
  $limit = 5
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages.title
}
```

```powershell
function Enter-RabbitHole
{
  $query = "linksto:Shell_(computing)"
  $limit = 5
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages.title
}
```

```powershell
function Enter-RabbitHole
{
  param($query, $limit)
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages.title
}
```

```powershell
function Enter-RabbitHole
{
  param(
    $query,
    $limit = 5
  )
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages.title
}
```

```powershell
function Enter-RabbitHole
{
  param(
    [string] $query,
    [int] $limit = 5
  )
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages.title
}
```

```powershell
function Enter-RabbitHole
{
  param(
    [Parameter(Mandatory)]
    [string]
    $query,

    [int]
    $limit = 5
  )
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages.title
}
```

```powershell
function Enter-RabbitHole
{
  param(
    [Parameter(Mandatory, ValueFromPipeline)]
    [string]
    $query,

    [int]
    $limit = 5
  )
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages.title
}
```

```powershell
function Enter-RabbitHole
{
  param(
    [Parameter(Mandatory, ValueFromPipeline, HelpMessage="Please enter Wikipedia search query")]
    [string]
    $query,

    [int]
    $limit = 5
  )
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages.title
}
```

```powershell
function Enter-RabbitHole
{
  param(
    [Parameter(Mandatory, ValueFromPipeline, HelpMessage="Please enter Wikipedia search query")]
    [string]
    $query,

    [int]
    $limit = 5
  )
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages | Select-Object -Property title
}
```

```powershell
function Enter-RabbitHole
{
  param(
    [Parameter(Mandatory, ValueFromPipeline, HelpMessage="Please enter Wikipedia search query")]
    [string]
    $query,

    [int]
    $limit = 5
  )
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages | Select-Object -Property title, @{Name='url'; Expression = { "https://en.wikipedia.org/wiki/$($_.key)" }} 
}
```

```powershell
<#
.SYNOPSIS
List English Wikipedia articles using the given search query.
.DESCRIPTION
Yearning for a Wikipedia click-spiral, but can't stand to leave the terminal until you absolutely have to?
With this Powershell script, query to your heart's content from the comfort of the command line.
.EXAMPLE
Enter-RabbitHole -limit 20 "linksto:Shell_(computing)"
.LINK
https://github.com/bowmanjd/pstalk/tree/main/slides/snippets
#>
function Enter-RabbitHole
{
  param(
    [Parameter(Mandatory, ValueFromPipeline, HelpMessage="Please enter Wikipedia search query")]
    [string]
    $query,
    [int]
    $limit = 5
  )
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages | Select-Object -Property title, @{Name='url'; Expression = { "https://en.wikipedia.org/wiki/$($_.key)" }} 
}
```

```powershell
<#
.SYNOPSIS
List English Wikipedia articles using the given search query.
.DESCRIPTION
Yearning for a Wikipedia click-spiral, but can't stand to leave the terminal until you absolutely have to?
With this Powershell script, query to your heart's content from the comfort of the command line.
.EXAMPLE
Enter-RabbitHole -limit 20 "linksto:Shell_(computing)"
.LINK
https://github.com/bowmanjd/pstalk/tree/main/slides/snippets
#>
function Enter-RabbitHole
{
  param(
    # Query to search for, such as what you would enter in a Wikipedia search online
    [Parameter(Mandatory, ValueFromPipeline, HelpMessage="Please enter Wikipedia search query")]
    [string]
    $query,
    # How many results to retrieve and display
    [int]
    $limit = 5
  )
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$query"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages | Select-Object -Property title, @{Name='url'; Expression = { "https://en.wikipedia.org/wiki/$($_.key)" }} 
}
```

```powershell {all|12,28|14-22|25|23|26-27|1-11,15,19|all}{lines:true}
<#
.SYNOPSIS
List English Wikipedia articles using the given search query.
.DESCRIPTION
Yearning for a Wikipedia click-spiral, but can't stand to leave the terminal until you absolutely have to?
With this Powershell script, query to your heart's content from the comfort of the command line.
.EXAMPLE
Enter-RabbitHole -limit 20 "linksto:Shell_(computing)"
.LINK
https://github.com/bowmanjd/pstalk/tree/main/slides/snippets
#>
function Enter-RabbitHole
{
  param(
    # Query to search for, such as what you would enter in a Wikipedia search online
    [Parameter(Mandatory, ValueFromPipeline, HelpMessage="Please enter Wikipedia search query")]
    [string]
    $query,
    # How many results to retrieve and display
    [int]
    $limit = 5
  )
  $escapedQuery = [uri]::EscapeDataString($query)
  $url = "https://en.wikipedia.org/w/rest.php/v1/search/page?limit=$limit&q=$escapedQuery"
  $response = Invoke-RestMethod $url
  $pages = $response.pages | Sort-Object -Property title
  $pages | Select-Object -Property title, @{Name='url'; Expression = { "https://en.wikipedia.org/wiki/$($_.key)" }} 
}
```
````

---
layout: center
---

<SlidevVideo autoplay autoreset='slide'>
  <source src="rabbithole.webm" type="video/webm" />
</SlidevVideo>

---
layout: fact
---

Thank you
