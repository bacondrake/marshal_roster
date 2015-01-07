#Marshals roster

A basic rostering system to keep track of who has marshalled at what exam, who is rostered on to the next exam and how many exams each marshal has done. Very basic functionality at the moment but a big improvement on the manual system used in Excel and Word.

* rails g migration add_name_to_exams name:string => Add optional event name for each exam session (to include different events such as external exams)
* marshal show page should mailto:emailVariable using JavaScript
* Some sort of security would be good => Setup login systems complete with Mailers for lost passwords, etc.
* along the vein of Mailers: consider sending a form 'invitation' email through the click of a button. Pre-rostering would be ideal
* possibly a 'marshals required?' option for exams, to include other meetings that don't need marshals (will eliminate the 'need more marshals' label for exams with marshals < 5)