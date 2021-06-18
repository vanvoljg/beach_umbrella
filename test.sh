#!/usr/bin/env bash

cmd=${1}
apps=(a b c d e f g h i j k l m n)

case $cmd in
  time)
    mix deps.get
    mix compile

    for i in ${apps[@]}; do
      pushd apps/app_${i} > /dev/null

      date
      time mix

      popd > /dev/null
      echo
    done
    exit
    ;;

  graphs)
    if [[ -z $(command -v perf) ]]; then
      echo "the 'perf' command is required"
    fi
    if [[ -z $(command -v stackcollapse-perf) ]]; then
      echo "the 'stackcollapse-perf' command is required"
    fi
    if [[ -z $(command -v flamegraph) ]]; then
      echo "the 'flamegraph' command is required"
    fi

    mix deps.get
    mix compile

    for i in ${apps[@]}; do
      pushd apps/app_${i} > /dev/null

      echo "profiling ${i}..."
      ERL_FLAGS="+JPperf true +S 1" perf record --call-graph lbr -o perf.data mix run
      rm -f perf.data.old
      echo "creating flame graph..."
      perf script | stackcollapse-perf | flamegraph > out.svg
      echo "==> apps/app_${i}/out.svg"
      rm -f perf.data

      popd > /dev/null
      echo
    done
    exit
    ;;

  *)
    echo -E "usage: test.sh <time|graphs>"
    exit
    ;;
esac

