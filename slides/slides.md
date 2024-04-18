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

## A story of Powershell and growing to respect it

ps.bowmanjd.com

<!--
It is an honor to be here. I am Jonathan Bowman. I am a hobbyist developer. I have also been a teacher, preacher, web developer, IT director, CRM consultant, and now I write SQL all day at Cargas. Cargas is the most humane and thoughtful place I have ever worked with technology, and I am proud to be there. I am also proud of my engagement with Neovim, Linux, Python, bash, Rust, even trying to learn a little Go these days (the language, not the game). And today I am sharing with you about Powershell, which I am ambivalent about. But I have grown to a place where I have to say: I like Powershell. I recommend Powershell for a variety of use cases. And I genuinely enjoy working with the syntax.
-->

---
class: text-center
hideInToc: true
---

<div class="justify-center flex">

![qr code for ps.bowmanjd.com](/qrcode.svg)

</div>

# ps.bowmanjd.com

---

<Toc minDepth="1" maxDepth="2"></Toc>

---
layout: center
---

![shell intro](/intro.gif){v-click}

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
layout: image
image: /powershell-marketing.png
backgroundSize: contain
---

<!--

- what does a marketing team do when told to promote a command-line shell?
- "Those who don't automate are doomed to repeat themselves" -- love this quote. Is true to the powershell community. It isn't competing so much with other shells, as it is competing with the practice of "clicking through your problems" which is rampant in Windows culture.

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

# Open Source

- [github.com/PowerShell/PowerShell](https://github.com/PowerShell/PowerShell)
- [github.com/MicrosoftDocs/PowerShell-Docs](https://github.com/MicrosoftDocs/PowerShell-Docs)

---

# Installation on various platforms

- Windows: `winget install Microsoft.PowerShell`
- Mac: `brew install powershell/tap/powershell`
- Any: `docker run -it mcr.microsoft.com/powershell`
- Linux: [add the repo then install via package manager](https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-linux)
- Nix: `nix-shell -p powershell`

<!--
Powershell 5 is pre-installed on Windows. But the current cross-platform version is Powershell 7. This can be installed on Windows with winget, Mac with brew, or you can run in docker. Microsoft has instructions for Linux, as it varies by distribution, such as Debian, Ubuntu, Redhat or derivative, Alpine, Arch, etc.
-->

---

# Editors

- VS Code with [Powershell extension](https://marketplace.visualstudio.com/items?itemName=ms-vscode.PowerShell)
- Neovim works well (suggested plugins: mason, nvim-lspconfig (use `powershell_es`), mason-lspconfig
- [Powershell for Sublime Text](https://github.com/SublimeText/PowerShell/)
- Language Server: [github.com/PowerShell/PowerShellEditorServices](https://github.com/PowerShell/PowerShellEditorServices)

<!--

Powershell and VS Code certainly seem made for each other. I enjoy writing Powershell in Neovim. There is a Powershell package for Sublime text, although I am uncertain how well it works and how up to date it is. Really, though, any editor with LSP support should be able to work with the PowerShellEditorServices language server.

-->

---
layout: section
---

# Documentation

---

# [Get-Help](https://learn.microsoft.com/powershell/module/microsoft.powershell.core/get-help)

- Use `Get-Help` command to access documentation
- `Get-Help Get-Command` finds help for the command `Get-Command`
- `Get-Help array` searches for docs about arrays
- `Get-Help about_*` will show results that start with "about_"
- `Get-Help -Online Get-Member` opens a web page about `Get-Member`
- `Help` is the same as `Get-Help`, but paged.
- `Update-Help` to periodically update the local docs

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

Explore Online

- [learn.microsoft.com/powershell/](https://learn.microsoft.com/powershell/)
- [powershellgallery.com](https://www.powershellgallery.com/)
- [.NET API browser](https://learn.microsoft.com/en-us/dotnet/api/)

---

# Learn X in Y Minutes

[learnxinyminutes.com/docs/powershell](https://learnxinyminutes.com/docs/powershell)

---

# Community

- [discord.com/invite/powershell](https://discord.com/invite/powershell)
- [powershell.slack.com](https://powershell.slack.com/)
- [Official Community blog](https://devblogs.microsoft.com/powershell-community/)
- [reddit.com/r/PowerShell/](https://www.reddit.com/r/PowerShell/)
- [powershell.org](https://powershell.org/)

---

# Streams

- [Research Triangle Powershell Users Group](https://www.youtube.com/c/rtpsug)
- [@PowershellOrg](https://www.youtube.com/@PowershellOrg)

---
layout: two-cols-header
layoutClass: gap-16
---

# Laid back and folksy: Powershell MVA videos

::left::

![Getting Started with Powershell 3.0](/getting-started-with-powershell.png){style="height:200px"}

[Getting Started with PowerShell 3.0](https://learn.microsoft.com/en-us/shows/GetStartedPowerShell3/)
<br>([also on Youtube](https://www.youtube.com/watch?v=UVUd9_k9C6A&list=PL7T06JEc5PF6kusr3cg6eYqCAiU6ezVj5&index=2))

::right::

![Advanced Tools * Scripting with Powershell 3.0](/advanced-tools-and-scripting.png){style="height:200px"}

[Advanced Tools & Scripting with PowerShell 3.0](https://learn.microsoft.com/en-us/shows/advpowershell3/)
<br>([also on Youtube](https://www.youtube.com/watch?v=K4YDHFalAK8&list=PL7T06JEc5PF6kusr3cg6eYqCAiU6ezVj5&index=1))

---

# The Powershell Podcast by PDQ

[The Powershell Podcast](https://www.pdq.com/resources/the-powershell-podcast/)

---

# Powershell 101 book

- [Available to read online for free](https://learn.microsoft.com/en-us/powershell/scripting/learn/ps101/00-introduction)
- [Also on LeanPub](https://leanpub.com/powershell101)

---

# Notable Powershell Modules

- [dbatools.io](https://dbatools.io/)
- [pester.dev](https://pester.dev/) (Testing framework)
- [PSPGP](https://github.com/EvotecIT/PSPGP)
- [Posh-ACME](https://poshac.me/docs/) (Let's Encrypt)
- [ImportExcel](https://github.com/dfinke/ImportExcel)
- [MailoZaurr](https://github.com/EvotecIT/MailoZaurr) (SMTP, POP3, IMAP...)
- [SimplySql](https://github.com/mithrandyr/SimplySql) to query various db engines
- [PS-TextTable](https://github.com/jjcarrier/PS-TextTable) (Convert text to PS objects)
- [PS-TableUI](https://github.com/jjcarrier/PS-TableUI) (TUI item selector)
- [Pode](https://badgerati.github.io/Pode/) A Powershell web framework!?

---
