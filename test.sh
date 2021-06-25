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

  graph)
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

  trace)
    if [[ -z ${2} ]]; then
      echo "specify an app to trace"
      exit 1
    fi

    mix deps.get &> /dev/null
    mix compile &> /dev/null

    echo "tracing ${2}"

    mix load_all_apps ${2} > messages.txt

    sort messages.txt | uniq -c | sort -nr > msgs_${2}.txt
    rg -c ':application.ensure_all_started' messages.txt > counts_${2}.txt
    cat counts_${2}.txt
    ;;

  *)
    echo -E "usage: test.sh <time|graph|trace>"
    exit
    ;;
esac

