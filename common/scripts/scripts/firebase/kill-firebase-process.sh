#!/bin/bash

lsof -t -i :8080 | xargs kill -9
lsof -t -i :4000 | xargs kill -9
lsof -t -i :9150 | xargs kill -9
lsof -t -i :6001 | xargs kill -9

