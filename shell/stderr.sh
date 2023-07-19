#!/bin/bash

# stderrをファイルにリダイレクトする
ls -l /nonexistent_directory 2> 'output/stderr.txt'
