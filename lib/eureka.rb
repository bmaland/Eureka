# -*- coding: utf-8 -*-
# Wrapper for accessing WEKA from JRuby.
# Created by Bjørn Arild Mæland [github.com/Chrononaut]

require "java"

# weka.jar must be on your CLASSPATH
require "weka.jar"

$:.unshift(here = File.dirname(__FILE__))

require "eureka/core"
