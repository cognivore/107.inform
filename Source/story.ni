"'107': A simulator of consciousness" by Jonn

[Rabbit hole: https://gchq.github.io/CyberChef/#recipe=To_Morse_Code('-/.','Space','Line%20feed')&input=ZmluZC56aXAuZW5jb2RlZC5hcy5oZXguYW5kLnRyYW5zbGF0ZWQuaW50by5tb3JzZS5jb2RlLmluLm1pc2MuYXJ0ZWZhY3RzLmRpcmVjdG9yeQ]
[https://www.meridianoutpost.com/resources/etools/calculators/calculator-morse-code.php?]
[https://morsecode.world/international/decoder/audio-decoder-adaptive.html]

Include Modified Exit by Emily Short.
Include Flexible Logger by Peter Orme.
Include Smarter Parser by Aaron Reed.

[Should be library functions I guess]

A fixation is a kind of value. The fixations are debilitated, obsessed, focused, attentive, mindful and carefree.
The player has a fixation.

A thing has some text called reminder. The reminder of a thing is usually "nothing in particular springs to mind".
A thing can be thought-of or unthought-of. A thing is usually unthought-of.
A thing can be affecting or unaffecting. A thing is usually unaffecting.
A person can be interacted-with or uninteracted-with. A person is usually uninteracted-with.
A thing can be upper or downer. A thing is usually downer.

Part I - The Library

Considering is an action applying to one thing.
Understand "think about [something]" as considering.
Check considering:
	if noun is thought-of:
		say "You have already thought about [noun]." instead.
Carry out considering:
	say "Hmm... [reminder of noun].";
	if noun is unaffecting:
		debug "Unaffecting...";
	otherwise if noun is downer:
		debug "Fixation intensifies...";
		intensify player fixation;
	otherwise if noun is upper:
		debug "Fixation is abaded...";
		abade player fixation;
	debug "now noun is thought-of.";
	now noun is thought-of.

To intensify (someone - person) fixation:
	journal someone fixation;
	if someone is obsessed:
		now fixation of someone is debilitated;
	otherwise if someone is focused:
		say "It makes you remember something your colleague said. Damn, it feels like everything makes you think about work!";
		now fixation of someone is obsessed;
	otherwise if someone is attentive:
		say "You notice a pattern... It brings thoughts about quantitative research that you do at work to the forefront of your mind.";
		now fixation of someone is focused;
	otherwise if someone is mindful:
		say "You draw parallel with something you have been doing at work today. Hah, maybe you should tell your colleagues about this thought.";
		now fixation of someone is attentive;
	journal someone fixation.
		
To abade (someone - person) fixation:
	journal someone fixation;
	if someone is obsessed:
		say "It calms you down enough for the thoughts about work to stop jumping all over the place.";
		now fixation of someone is focused;
	otherwise if someone is focused:
		say "You push thoughts about work away for a moment to enjoy fresh air.";
		now fixation of someone is attentive;
	otherwise if someone is attentive:
		say "You manage to care less about work and get to be present, as they say... Zen and all.";
		now fixation of someone is mindful;
	otherwise if someone is mindful:
		now fixation of someone is carefree;
	journal someone fixation.

To journal (someone - person) fixation:
	if someone is debilitated:
		debug "debilitated";
	if someone is obsessed:
		debug "obsessed";
	if someone is focused:
		debug "focused";
	if someone is attentive:
		debug "attentive";
	if someone is mindful:
		debug "mindful";
	if someone is carefree:
		debug "carefree".

Every turn when player is obsessed:
	say "You are about to be overwhelmed with work-related thoughts.

Thinking about something that won't remind you of work would be beneficial, otherwise escape mechanisms may kick in."

Every turn when player is focused:
	say "It's hard to enjoy life thinking about work. If only you could think about something else."

Part II - London, Tutorial

At a Peculiar Crossroad is a room.
Instead of looking in Peculiar Crossroad: do nothing.
Delaying banner text is a truth state that varies. Delaying banner text is initially true.
For printing the banner text when delaying banner text is true: do nothing.

Python programming language is a scenery in a Peculiar Crossroad.
Python is affecting. Python is downer. Reminder of python is "You're fairly sure it's not a good fit for high-assurance software".

Scala programming language is a scenery in a Peculiar Crossroad.
Scala is affecting. Scala is downer. Reminder of scala is "Why are they rewriting chunks of functionality from Scala to Python? Maybe doing it the other way around would have been wiser?.".

Inform programming language is a scenery in a Peculiar Crossroad.
Inform is affecting. Inform is upper. Reminder of inform is "You wonder what language is this game you live written in... Ah, it feels so much better to choose your own adventure rather than doing enterprise-y tasks".
Understand "life" as inform programming language.

The wind is a scenery in a Peculiar Crossroad.
Reminder of wind is "It's so unnoticable, you almost have to force yourself to draw attention to it".
Understand "street", "weather" as wind.

The cathedral is a scenery in a Peculiar Crossroad.
Reminder of the cathedral is "The cathedral is awe-inspiring. Built to witness the rise and fall of civilizations. You normally aren't moved by sightseeing in the cities you live, but even you wouldn't blame the locals for staring at its glory".

The office is a scenery in a Peculiar Crossroad.
The office is affecting. The office is downer. Reminder of the office is "The office is marginally more tolerable than how it was portrayed the series with the same name".
Understand "workplace" as the office.

The group of kids are a people in a Peculiar Crossroad.
Description of kids is "A girl who makes the most ambitious tricks stands up among the kids showing off their skateboarding skills. On a rare ocassion when she tumbles, she gets up immediately and completes the failed trick."
Kids are affecting. Kids are upper. Reminder of kids is "It's always great to watch facial expressions of people who are concentrating on something. The girl with the skateboard has an expression of determination and finesse".
Understand "girl", "skaters" as kids.
[or "skate" or "skateboard" or "skateboards"]
After asking kids about "tricks":
	if kids are uninteracted-with:
		abade player fixation;
		now kids are interacted-with;
		say "The girl says that she loves skateboarding and it helps her to express herself. She gives you her skateboard and you skate a little bit. It was fun!";
		move player to Garden;
	otherwise: 
		say "The girl smiles at you and makes an ollie."
After asking kids about "skate":
	if kids are uninteracted-with:
		abade player fixation;
		now kids are interacted-with;
		say "The girl says that she loves skateboarding and it helps her to express herself. She gives you her skateboard and you skate a little bit. It was fun!";
		move player to Garden;
	otherwise: 
		say "The girl smiles at you and makes an ollie."
After asking kids about "skateboard":
	if kids are uninteracted-with:
		abade player fixation;
		now kids are interacted-with;
		say "The girl says that she loves skateboarding and it helps her to express herself. She gives you her skateboard and you skate a little bit. It was fun!";
		move player to Garden;
	otherwise: 
		say "The girl smiles at you and makes an ollie."


The vegetation is a scenery in a Peculiar Crossroad.
The vegetation is affecting. The vegetation is upper. Reminder of the vegetation is "Ah, garden is really pretty. Sitting down staring at it could calm down the noise in your head...".
Understand "flowers", "greenery", "garden" as the vegetation.

Reminder of player is "Just living my life".

When play begins:
	now the level of the default logger is off level;
	now the fixation of the player is focused;
	say "It was one of those days at the office, boring and intense at the same time. Your eyes are sore and the natural light feels weird after spending a day in a lamp-lit environment. These things keep you thinking about work. You'd better figure out the solution to another problem that plagues your Python code base.

Red traffic light rushes you as you speed up to cross the two lanes that go from the cathedral passage to a small garden. After you crossed the street, you stop and look around. What would you like to think about?";
	now the command prompt is "think about ".

After reading a command when the command prompt is "think about ":
	let Resp be player's command;
	if Resp matches the text "lamp":
		say "Are these lamps bright and artificial... But it doesn't matter, we stare at the screens all day anyways.";
		intensify player fixation;
	[ TODO: friends, ...???] 
	[ !!!! SPECIAL CASE !!!! ]
	otherwise if (Resp matches "programming"):
		say "Which do you mean, Python programming language, Scala programming language or Inform programming language?";
		reject the player's command;
	[ !!!! END OF SPECIAL CASE !!!! ]
	otherwise if (Resp matches "nothing"):
		say "You try your best to free your mind.";
		abade player fixation;
	otherwise if (Resp matches "roses"):
		say "With mixed feelings, you remember how a person you have studied with sent you roses for your virtual graduation. Still better than thinking about work.";
		abade player fixation;
	otherwise if (Resp matches the text "garden") or (Resp matches the text "vegetation") or (Resp matches the text "flowers") or (Resp matches the text "greenery"):
		say "Ah, garden is really pretty. Sitting down staring at it could calm down the noise in your head...";
		abade player fixation;
	otherwise if (Resp matches the text "crossing") or (Resp matches the text "crossroad"):
		say "You think about peculiar crossroads in life... Decisions that change everything; people who are close and those drifting apart from you...";
		abade player fixation;
	otherwise if (Resp matches the text "traffic") or (Resp matches the text "road") or (Resp matches the text "lane"):
		say "There was not much traffic. Where there was a lot of traffic is in the work E-Mail...";
		intensify player fixation;
	otherwise if (Resp matches "city") or (Resp matches the text "building"):
		say "Sightseeing in this part of the world is not your favorite past-time. A city is a city, you live here, go to work here...";
		intensify player fixation;
	otherwise:
		debug "Fallback in tutorial!";
		change the text of the player's command to "think about [Resp]";
	if player's command matches the text "think about":
		debug "Here we should try to execute the command '[player's command]'";
		make no decision;
	otherwise:
		now the command prompt is "> ";
		now delaying banner text is false;
		say banner text;
		move vegetation to Garden;
		move player to Garden;
		reject the player's command.
		
After considering something when player is in a Peculiar Crossroad:
	now the command prompt is "> ";
	now delaying banner text is false;
	debug "Executed fallback and moving player to the garden now";
	say banner text;
	move vegetation to Garden;
	move player to Garden.

Part III - London, Perception

Bronhood Garden is a room.  "You are by a garden, surrounded by comfy-looking benches. The vegetation starts to wither, but still provides a majestic centerpiece to the backdrop of an old, half-destroyed church to the west. The ruins clearly underwent restoration, making it seem that the demise of the church was natural."

The bench is here. "Benches are already dry, even though you are pretty sure that it was raining this morning."
The bench is enterable and a supporter.
The bench is fixed in place.
The description of the bench is "It would be nice to sit here and enjoy fresh air for a bit... Given how stressful the day at work was."

After reading a command when the player is in the Garden:
	let Resp be player's command;
	if Resp matches "enter":
		move player to Bronhood Church;
		reject the player's command;
	otherwise:
		make no decision;

A meditation is a scenery in Garden.
The printed name of meditation is "sitting down and thinking".
After entering the bench:
	if meditation is unthought-of:
		say "You find a completely dry spot and sit down. In the back of your mind you have thoughts about the ongoing effort to rewrite some stuff from Scala to Python at work, but these thoughts wax and wane as the autumn wind caresses the vines and stems. You notice some kids trying skateboard tricks. It's quite relaxing to be here.";
		move python to the Garden;
		move scala to the Garden;
		move inform to the Garden;
		move wind to the Garden;
		move kids to the Garden;
		now meditation is thought-of;
	otherwise:
		say "Sitting here got kind of boring, besides it's rather cold...";
		move player to the Garden.
		

After considering something when player is on a bench:
	debug "Thinking on a bench (in the garden)";
	say "After meditating on the bench for a little while, you get up to stretch your legs.";
	move python to a Peculiar Crossroad;
	move scala to a Peculiar Crossroad;
	move inform to a Peculiar Crossroad;
	move kids to a Peculiar Crossroad;
	move player to the Garden, without printing a room description;
	make no decision.

Instead of going inside in Garden:
	move player to Church.

Bronhood Church is a room. "You carefully enter a seventeenth century church through a heavy door of organic glass and dark plastic. Behind your back, lies the picturesque garden. In front of you, you see a pleasant interior."

The plastic door is a closed door. "A plastic door that looks rather out of place is embedded into the ruins of a seventeenth century church."
The plastic door is west of the Garden and east of the Church.

The eclectic interior is a scenery in the Church. "The Church has an eclectic interior to match the fascade. The interior is pretty, but you clearly can't do much here except to appreciate it... Or the janitor's work."
Eclectic interior is affecting. Eclectic interior is upper. Reminder of eclectic interior is "You take a moment to appreciate the modern interior which is fused with the carcass of the old building. It is obviously designed with a lot of artistic thought."
Understand "church", "architecture" as eclectic interior when the player is in the Church.

The janitor is a man in the Church. Janitor wears blue overalls. Janitor is carrying a mop. "You see a janitor who is doing just enough for you to deduce his occupation."
Janitor is affecting. Janitor is downer. Reminder of janitor is "You consider janitor's enthusiasm. It's very relatable.".

To leave church:
	move player to Garden.
	
Instead of going outside: leave church.
Instead of exiting: leave church.


Passage by the Hospital is north of Garden. "The path links the peaceful square to the south to a more chaotic place. Path to the Tom's Square paved with polished rusty-grey tiles bends northwest."

After going to Passage for the first time:
	say "The space in front of the hospital is a stage to a diverse group of lethargic sitters and amble walkers. A doctor throws an empty coffee cup into a bin and disappears into the hospital entrance.";
	intensify player fixation;

The crowd is people in Passage. "All kinds of people fill the grounds by the entrance to the hospital."
The description of the crowd is "The facial expressions of the people you can make out show a broad spectrum of emotions. There are black lines on this spectrogram though: joy and happiness."
The crowd is affecting. The crowd is upper. The reminder of crowd is "Even though the sorrow prevails in this composition, watching people is inspiring".
The entrance is a scenery in Passage. "Automatic doors are eager to let people in and out of the building. You're not eager to walk through them though."
Joy is a scenery in Passage.
Joy is affecting. Joy is upper. The reminder of joy is "This year surely was better than the last. Hopefully, the next one will be even better!".

The doctor is a scenery in Hospital.
Doctor is affecting. Doctor is downer. Reminder of doctor is "This doctor seemed determined. He must enjoy his work.."

Instead of going inside in Hospital:
	say "Gladly, you are in good health.";

Understand "people", "amble walkers", "amble", "walkers", "lethargic sitters", "lethargic", "sitters" as the crowd.

Tom's Square is a room with printed name "Tom's Square (on the way Home)".
Tom's Square is northwest of Passage.

After going to Tom's Square for the first time:
	say "In the middle of the square, a couple of trees still hold to their leafs. They stand tall protected by the transparent shield of the office building. You look at the reflection of the dimming grey sky in the glass facade. So many offices...";
	now player is debilitated;

Every turn when player is debilitated:
	end the story saying "The swarm of work-related thoughts overwhelms you. You hurry home and do everything possible to distract yourself... Better not stay up too late, there's more work tomorrow...";

Every turn when player is carefree:
	end the story finally saying "You manged to discard all the pesky thoughts about work. After all, you know that you'll always have https://md110.se/options.pdf"

[A bench in a park, noise and OTHERS are around][verb think]
[puzzle -- stop thinking about work]
[think about plane]

[A castle-looking building] [turns out to be the Uni]
[solve an aerospace puzzle]
[think about friend]

[Solve some party puzzle]
[think about far]

[Go through a SEA landscape]
[find some art after solving action-adventure puzzle]
[think about art]

[Go to lonlieness where art is coping]
[A bench in a park, noise and OTHERS are around][verb make]
[Think about others]