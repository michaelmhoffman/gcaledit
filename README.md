# gcaledit

Bash and Python scripts to demonstrate the gcalcli `agendaupdate` command.

## Installation

`make install-prereqs` to install the Python prerequisites needed.

`make install` to install the scripts. Two of them are Python scripts but it's easier to deal with it this way than to make a proper package that could be installed with pip.

## Scripts

### gcaledit

`gcaledit` is the main script. It uses `gcalcli agenda --tsv` to get event info from your Google Calendar and formats it as a table with one row per event and a column for each event detail. Then, it converts the table to XLSX spreadsheet format and uses an `open` command to open the file in Excel or your spreadsheet application of choice. You will need to supply the `open` command.

Then, `gcaledit` uses `inotifywait` to watch the file for saves. Any save will cause the changes to be written back to your Google Calendar through `gcalcli agendaupdate --tsv`.

### gcaledit workflows

`gcaledit-deadlines`: edit events on a particular calendar where you store all of your deadlines

`gcaledit-meals`: meal planning: edit events on your family calendar that match `Breakfast|Lunch|Dinner|Brunch|Cook`

`gcaledit-zoom`: edit events that match `.zoom.us`. I use this to bulk eliminate extra cruft that goes into these events by default

### helper scripts

`gcal-tab2xlsx`: convert output of `gcalcli agenda --tsv` to XLSX

`gcal-xlsx2csv`: convert XLSX created by `gcal-tab2xlsx` to be a TSV suitable as input to `gcalcli agendaupdate`

## Support

There is no support guaranteed! This may not work at all on any system other than my own. This is mainly here to provide examples. Pull requests might be considered.

## License

MIT License
