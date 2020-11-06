
# Introduction

Once installed, you can prefix any bash commands with "reportResult", and when the command finishes running, it'll let you know with a soothing robotic voice. Extra useful for long-running builds that run in the background.

# Installation

Clone this repo into your favorite directory:

```
git clone git@github.com:benzenittini/command-reporter.git
```

Add this line to the end of your ~/.profile (or ~/.bashrc, or ~/.bash_profile):

```
source /your/favorite/directory/command-reporter/sourceMe.sh
```

Restart your terminal to get it all "sourced".

# Usage

Prefix your favorite build commands with "reportResult":

```
reportResult npm build
reportResult yarn build
reportResult mvn clean install
reportResult gradle install
reportResult sleep 10
```

For easier execution, feel free to set up some aliases. There are some placeholders and examples for you inside "sourceMe.sh". Here's how they'd work:

```
alias mvn='reportResult mvn'

mvn clean install
# Result gets reported. Wow.
```

# Customization

For custom success and failure messages, edit the "successLines" and "failureLines" files.

# Contributing

Feel free to open up pull requests to add wonderful messages for everyone to cherish. **Please keep the entries alphabetic to reduce duplicate entries.** Thanks <3

