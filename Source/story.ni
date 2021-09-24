"107" by Jonn and George

[Rabbit hole: https://gchq.github.io/CyberChef/#recipe=To_Morse_Code('-/.','Space','Line%20feed')&input=ZmluZC56aXAuZW5jb2RlZC5hcy5oZXguYW5kLnRyYW5zbGF0ZWQuaW50by5tb3JzZS5jb2RlLmluLm1pc2MuYXJ0ZWZhY3RzLmRpcmVjdG9yeQ]
[https://www.meridianoutpost.com/resources/etools/calculators/calculator-morse-code.php?]
[https://morsecode.world/international/decoder/audio-decoder-adaptive.html]

Include Modified Exit by Emily Short.
Include Flexible Logger by Peter Orme.

Part I - London

At a Peculiar Crossroad is a room.
Instead of looking in Peculiar Crossroad: do nothing.
Delaying banner text is a truth state that varies. Delaying banner text is initially true.
For printing the banner text when delaying banner text is true: do nothing.
A fixation is a kind of value. The fixations are obsessed, focused, attentive and mindful.
The player has a fixation.
		
When play begins:
	now the level of the default logger is every level;
	now the fixation of the player is focused;
	say "It was one of those days at the office, boring and intense at the same time. Your eyes are sore and the natural light feels weird after spending a day in a lamp-lit environment.

Red traffic light rushes you as you speed up to cross the two lanes that go from the cathedral passage to a small garden. After you crossed the street, you stop and look around. What would you like to think about?";
	now the command prompt is "think about ".

After reading a command when the command prompt is "think about ":
	let Resp be player's command;
	if Resp matches the text "lamp":
		say "Are these lamps bright and artificial... But it doesn't matter, we stare at the screens all day anyways.";
		intensify player fixation;
	otherwise if (Resp matches the text "garden") or (Resp matches the text "vegetation") or (Resp matches the text "flowers") or (Resp matches the text "greenery"):
		say "Ah, garden is really pretty. Sitting down staring at it could calm down the noise in your head...";
		abade player fixation;
	otherwise if (Resp matches the text "crossing") or (Resp matches the text "traffic") or (Resp matches the text "road"):
		say "There was not much traffic. Where there was a lot of traffic is in the work E-Mail...";
		intensify player fixation;
	otherwise:
		say "You think about it, but can't quite focus as your thoughts drift back to the suspicious trading alerts you are working on...";
		intensify player fixation;
	now the command prompt is "> ";
	now delaying banner text is false;
	say "


	";
	say banner text;
	move player to Garden;
	reject the player's command.

Bronhood Garden is a room.  "You are by a garden, surrounded by comfy-looking benches. The vegetation starts to wither, but still provides a majestic centerpiece to the backdrop of an old, half-destroyed church to the west. The ruins clearly underwent restoration, making it seem that the demise of the church was natural."

The bench is here. "Benches are already dry, even though you are pretty sure that it was raining this morning."
The bench is enterable and a supporter.
The bench is fixed in place.
The description of the bench is "It would be nice to sit here and enjoy fresh air for a bit... Given how stressful the day at work was."

Understand "church" as west.

Bronhood Church is west of Garden. "You carefully enter a seventeenth century church through a heavy door of organic glass and dark plastic. Behind your back, lies the picturesque garden."

To leave church:
	move player to Garden.
	
Instead of going outside: leave church.
Instead of exiting: leave church.

[Instead of out: east.
Instead of back: east.]
[TODO: Support "out" / "get out"]

Passage by the Hospital is north of Garden. "The path from the peaceful square to the south brings you to a more chaotic place. Path to the Tom's Square paved with polished rusty-grey tiles bends northwest."

After going to Passage for the first time:
	say "The space in front of the hospital is a stage to a diverse group of lethargic sitters and amble walkers. A doctor throws an empty coffee cup into a bin and disappears into the hospital entrance.";
	intensify player fixation;

The crowd is here. "All kinds of people fill the grounds by the entrance to the hospital."
The description of the crowd is "The facial expressions of the people you can make out show a broad spectrum of emotions. There are black lines on this spectrogram though: joy and happiness."
The entrance is a scenery in Passage. "Automatic doors are eager to let people in and out of the building. You're not eager to walk through them though."

Instead of going inside:
	say "Gladly, you aren't sick.".

Understand "people", "amble walkers", "amble", "walkers", "lethargic sitters", "lethargic", "sitters" as the crowd.

[Should be library functions I guess]

To intensify (someone - person) fixation:
	if someone is obsessed:
		end the story saying "The swarm of thoughts overwhelms you. You hurry home and do everything possible to distract yourself... Better not stay up too late, there's more work tomorrow...";
	otherwise if someone is focused:
		say "It makes you remember something your colleague said. Damn, it feels like everything makes you think about work!";
		now fixation of someone is obsessed;
	otherwise if someone is attentive:
		say "You see a pattern... It brings thoughts about quantitative research that you do at work to the forefront of your mind.";
		now fixation of someone is focused;
	otherwise if someone is mindful:
		say "You draw parallel with something you have been doing at work today. Hah, maybe you should tell your colleagues about this thought.";
		now fixation of someone is attentive.
		
To abade (someone - person) fixation:
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
		say "Work, schmork... Your thoughts drift to organising a trip to the fancy skyscraper spa... Ah, life is great!";

To journal (someone - person) fixation:
	if someone is obsessed:
		debug "obsessed";
	if someone is focused:
		debug "focused";
	if someone is attentive:
		debug "attentive";
	if someone is mindful:
		debug "mindful".

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