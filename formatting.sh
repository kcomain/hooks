#!/bin/bash

fallback() {
  isort $1
  black $1 --line-length=120
}

make lint || fallback
