# JiFi

> **JIRA client with UI menus**

## Screenshots

![Main menu](https://raw.githubusercontent.com/blufor/jifi/master/screenshots/jifi1.png)
![Issues list](https://raw.githubusercontent.com/blufor/jifi/master/screenshots/jifi2.png)
![Issue actions](https://raw.githubusercontent.com/blufor/jifi/master/screenshots/jifi3.png)

## Features

- **Listing issues in a project**
- **Listing projects**
- **Viewing issues**
- **Transitioning issues**
- **Editing issues**
- **Assigning issues**
- Creating issues (WIP)
- `jira-ui` integration (WIP)
- _Commenting issues (TODO)_
- _Linking issues (TODO)_
- _Epics (TODO)_
- _Repositories integration (TODO)_

## Prerequisities

- `rofi`
- `jira` from [Go Jira](https://github.com/go-jira/jira) project
- `notify-send` from GNOME's [libnotify](https://github.com/GNOME/libnotify)

## Install

1. Clone this repo
2. Run `make` from inside the cloned repo. It checks for the prerequisities before install and won't proceed without them

## Configuration

There's a few steps you need to do before you use it. So here we go

### `jira` config

It's located in `~/.jira.config.head` and should contain the following minimal config

```
endpoint: https://jira.domain.com
user: <username in JIRA>
login: <loginname in JIRA>

```

NOTE: User and login are not the same thing

### `jifi` config

It's located in `~/.config/rofi/jifi.sh` and should contain this minimal config

```
PROJECTS=(CS CSI IT ITP) # Your favorite projects (it's a Bash array)
TERMAPP=st               # Your X terminal app
```

### `jira` login

Just run `jira login` to be able to talk to you JIRA instance

### `jifi` cache compile

Running `jira cache` will create cache files so that some of the data that doesn't usually change much don't take time doing API calls.

## Usage

Just run `jifi` and it should work. It's a good idea to bind it to a keyboard shortcut so it's always at hand for you.
