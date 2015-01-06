
Resqfile stands for **REST, QUEUE, FILE**

Because data can be written any one of these three places.

To install resqfile

```
git clone https://github.com/stormasm/resqfile.git
cd resqfile
bundle install
```

To run resqfile: **Rabbitmq**, **Redis** and **Spn.ee** must first be running

For install instructions to run Spn.ee go
[here].
(https://github.com/spinnakr/spnee-ruby)

After Spn.ee is up and running then go to the lib directory
in the resqfile simulator.

**To run the simulator you must be in the lib directory**

To see the options that you can pass into the simulator:

```
ruby sim.rb -h
```

#### Default Use

To run the resqfile simulator with no options simply run this command

```
ruby sim.rb
```

#### Verbosity

All output from the simulator is available in verbose mode

```
ruby sim.rb -v
```

#### Dimension String

By default the dimension string is **job-skills**.

If you want a different dimension string then you can issue this command.

```
ruby sim.rb -m weather-city
```

#### Number of data points

The default number of data points that get published is 3

To generate more than 3 data points run this command

```
ruby sim.rb -n 10
```

For more details go
[here].
(https://github.com/stormasm/resqfile/blob/master/doc/notes.md)
