#!/bin/bash
ps aux | grep -e mysql | grep -v grep | awk '{print $2}' | xargs kill
