
# Introduction

Once installed, you can prefix any bash commands with "reportResult", and when the command finishes running, it'll let you know with a soothing robotic voice. Extra useful for long-running builds that execute in the background.

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

## Extra Linux Steps

Mac comes with a "say" command pre-installed. Your linux distro probably does not. You can install "say" using:

```
sudo apt-get install gnustep-gui-runtime
```

The linux voice is a little less "soothing" and a little more "I'm going to haunt you in your sleep," but hey, still works.

# Usage

Prefix your favorite build commands with "reportResult":

```
reportResult npm build
reportResult yarn build
reportResult mvn clean install
reportResult gradle build
reportResult sleep 10
```

For easier execution, feel free to set up some aliases. There are some examples for you inside "sourceMe.sh" - that's probably a good place to define yours. Here's how they'd work:

```
alias mvn='reportResult mvn'

mvn clean install
# Result gets reported with a soothing voice. Wow.
```

# Customization

For custom success and failure messages, edit the "successLines" and "failureLines" files.

# Contributing

Feel free to open up pull requests to add wonderful messages for everyone to cherish. **Please keep the entries alphabetic to reduce duplicate entries.** Thanks <3

