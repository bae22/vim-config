My VIM Config
=============

## About

This is my personal vim config, mainly used for HTML/JS devlopment using Git.

If you find any of this useful, you are welcome to copy/fork it.

It was designed to run on Linux.

## Installation

After cloning, run

    git submodule update --init

to pull all the submodules. Then follow instructions below to compile any specific plugins

## Requirements

For syntax checking (using Syntastic) this config requires node.js, jshint and tidy.

### Installing Node.js

Install the following packages:

 * build-essential
 * curl
 * libcurl4-openssl-dev

Download the latest node.js code from [Node.js website](http://nodejs.org/#download)

Unarchive it and do the usual ``./configure && make && make install``

Install the Node.js Package Manager

    curl http://npmjs.org/install.sh | sudo sh

Install jshint

    sudo npm install jshint -g

Symlink the .jshintrc to the home dir

## Plugins

### Autoclosetag

### Command-t

Requires ruby and ruby-dev

Compile it with

    rake make

### Fugitive

### MatchIt

### NerdCommenter

### NerdTree

### Snipmate and Snippets

### Supertab

### Syntastic

### Tcomment

### Vim colors solarized

### Vim easymotion

### Vim sparkup

### Vim surround
