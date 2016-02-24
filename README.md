# Jekyll style guide

[![Build Status](https://travis-ci.org/benbalter/jekyll-style-guide.svg?branch=master)](https://travis-ci.org/benbalter/jekyll-style-guide)

## Introduction

### What is this thing?

An opinionated guide to common Jekyll design patterns and anti-patterns.

### Why write this?

Jekyll's incredibly flexible, but in some instances, the lack of common conventions make things harder for users.

For one, there are many common design patterns that are still relatively unknown to new users (e.g., using `permalink: /about/` in `about.md`, rather than creating `/about/index.md`).

For another, when writing a plugin or theme intended to be used across sites, should it look for `site.title` or `site.name`? `site.description` or `site.tagline`? Moar options, moar problems.

This style guide aims to make it easier to create awesome Jekyll sites by codifying and surfacing Jekyll best practices.

### Current status

This document is an early draft intended to collect feedback. Once a 1.0 is reached, it'd be cool to create a Jekyll site to display the rules and/or a Jekyll linter to enforce site-wide styles.
