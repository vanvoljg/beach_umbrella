# BeachUmbrella

This is a basic repo which demonstrates slow start time for loading large umbrella
applications.

## Usage

There is a script included, `test.sh`, which can be used to run several different tasks.

Recommended is to run `test.sh trace app_n`, as this will show the worst-case
performance. Comparison to `app_a` may be useful

- `$ test.sh trace <app_name>` - This will trace the usage of
  `:application.ensure_all_started/1-4` and create a log showing the calls of this
  function as well as the parameters used when calling. It will also provide the
  number of times that an exact call was made using the same inputs.

  > <app_name\> must be in the range `app_a..app_n`

  The output log file will be called `msgs_<app_name>.txt`.

  The script will also output the cumulative total of the total number of times
  `:application.ensure_all_started/_` is called during app start.

- `$ test.sh time` - This will go into each directory and time execution. It is
  done in sequential order to show how the start time problem grows as the tree size
  increases.

  A plot of the start time of `app_a` to `app_n` is shown at [time-series.png](time-series.png)
  and shows the increase of start time as the umbrella deps tree grows.

- `$ test.sh graph` - This will generate a flame graph of the function calls the
  BEAM executes during boot of the application.

  > To work, this requires the flamegraph scripts available at
  > [github.com/brendangregg/FlameGraph](https://github.com/brendangregg/FlameGraph)
  >
  > These should be installed and available on your `$PATH`, without extensions
  > (e.g. `stackcollapse-perf` and `flamegraph`).
  >
  > The script will check for the presence of its requirements and show an error
  > if anything is missing.
