# -*- coding: utf-8 -*-
# Wrapper for accessing WEKA from JRuby.
# Created by Bjørn Arild Mæland [github.com/Chrononaut]

require "java"

# weka.jar must be on your CLASSPATH
require "weka.jar"

# TODO to sep. file
import "weka.classifiers.meta.FilteredClassifier"
import "weka.classifiers.trees.J48"

import "weka.classifiers.lazy.IBk"

import "weka.filters.unsupervised.attribute.Remove"

$:.unshift(here = File.dirname(__FILE__))

require "eureka/core"
