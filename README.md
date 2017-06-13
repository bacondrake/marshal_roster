# Marshals roster

Back in 2014 I had to organise students into regular exams (2-3 times a week at that point) as what we called 'marshals'. Their job was to 'marshal' examinees into 20 different rooms, allowing the examinees to focus on what can be a stressful time for them.

This Rails app was something I whipped up so I could manage each marshal in a few ways:

* You can see how many exams a marshal has worked. This way you can ensure you're offering work to others evenly and aren't being accidentally exclusionary.
* You can see how many marshals are rostered for an exam. This is important because each exam could only (and ideally) have 5 marshals working.
* The exam date listing is simple and numbered badges show how many marshals are rostered on.
* Marshal listing is also simple - you can see a list of the names of marshals, with a numbered badge showing how much they have worked, as well as contact information/

At the time I only used this app in development mode. Previously I was managing these marshals from an Excel spreadsheet, which was a nightmare. This app, even though it was never fully completed or pushed to production, saved me a lot of time and stress. From a Rails perspective this was also my first foray into ```has_and_belongs_to_many``` two-way database relationships.

More functionality could be added to the project, which could make it better, such as:
* a 'tentative' status for those who had been rostered on but have not confirmed attendance for the day
* a bulk mail-out email for rostered marshals informing them of their shift - just tick the five you want for that day, click 'send email', and they'll be sent a 'you've been rostered on' email.

---
## Set up in development mode
* Clone the repository with ```git clone git@github.com:bacondrake/marshal_roster.git```
* Run ```bundle install```. May need to run ```bundle``` or ```bundle update``` as this project uses Rails 4.1 as it was the latest version at the time.
* Run database migrations with ```rake db:migrate```.
* You need to seed some data otherwise you can't log in. Chuck ```rake db:seed``` into the console to populate your test data.
* Run ```rails server``` and navigate to ```localhost:3000``` in your browser.
* ```/db/seeds.rb``` has your seeded data. You can see the first four entries are the users that manage the marshals. Admin is an admin (and can add in new users). Jen, Roy and Moss can be used as standard users if you need them.
* Obviously none of the ```seeds.rb``` data contains anyone's real information