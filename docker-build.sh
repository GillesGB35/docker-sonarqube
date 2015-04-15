#!/bin/bash -e

user=orangesignal
repo=sonarqube
images=$(docker images $user/$repo)
vername='SONARQUBE_VERSION'

function buildAndPushIfNeed() {
  local build_dir=$1
  local latest=$2
  local build_ver=$(cat $build_dir/Dockerfile | grep "^ENV $vername" | cut -d ' ' -f3)
  echo "building $$user/$repo:$build_ver"

  # build
  local before_image_id=$(echo $images | grep $build_ver | awk '{print $3}')
  docker build -t $user/$repo:$build_ver $build_dir
  local after_image_id=$(echo $images | grep $build_ver | awk '{print $3}')

  if test $before_image_id != $after_image_id; then
    # push
    echo "$user/$repo:$build_ver $before_image_id -> $after_image_id"
    docker push $user/$repo:$build_ver

    if test "$latest" != ''; then
      docker tag $user/$repo:$build_ver $user/$repo:latest
      docker push $user/$repo:latest
    fi
  else
    echo "$user/$repo:$build_ver no change"
  fi
}

base_dir=$(dirname ${BASH_SOURCE:-$0})

buildAndPushIfNeed $base_dir/3.7
buildAndPushIfNeed $base_dir/4.0
buildAndPushIfNeed $base_dir/4.1
buildAndPushIfNeed $base_dir/4.2

buildAndPushIfNeed $base_dir/4.5 latest
