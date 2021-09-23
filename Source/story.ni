"107" by Jonn and George

[Rabbit hole: https://gchq.github.io/CyberChef/#recipe=To_Morse_Code('-/.','Space','Line%20feed')&input=ZmluZC56aXAuZW5jb2RlZC5hcy5oZXguYW5kLnRyYW5zbGF0ZWQuaW50by5tb3JzZS5jb2RlLmluLm1pc2MuYXJ0ZWZhY3RzLmRpcmVjdG9yeQ]
[https://www.meridianoutpost.com/resources/etools/calculators/calculator-morse-code.php?]
[https://morsecode.world/international/decoder/audio-decoder-adaptive.html]

Include Modified Exit by Emily Short.

At a Peculiar Crossroad is a room.
Instead of looking in Peculiar Crossroad: do nothing.
Delaying banner text is a truth state that varies. Delaying banner text is initially true.
[Supressing errors is a truth state that varies. Supressing parser error is initially true.]
For printing the banner text when delaying banner text is true: do nothing.
[For printing a parser error when supressing errors is true: do nothing. (We can use reject player's command instead!)]

When play begins:
	say "It was one of those days at the office, boring and intense at the same time. Your eyes are sore and the natural light feels weird after spending a day in a lamp-lit environment.

Red traffic light rushes you as you speed up to cross the two lanes that go from the cathedral passage to a small garden. After you crossed the street, you stop and look around. What would you like to think about?";
	now the command prompt is "think about ".

After reading a command when the command prompt is "think about ":
	let Resp be player's command;
	if Resp matches the text "lamp":
		say "Are these lamps bright and artificial... But it doesn't matter, we stare at the screens all day anyways.";
	if (Resp matches the text "crossing") or (Resp matches the text "traffic") or (Resp matches the text "road"):
		say "There was not much traffic. Where there was a lot of traffic is in the work E-Mail... Your thoughts gravitate";
	otherwise:
		say "You think about it, but can't quite focus as your thoughts drift ";
	now the command prompt is "> ";
	now delaying banner text is false;
	say "


";
	say banner text;
	move player to Garden;
	reject the player's command.

Bronhood Garden is a room.  "You are by a garden, surrounded by comfy-looking benches. The vegetation starts to wither, but still provides a majestic centerpiece to the backdrop of an old, half-destroyed church to the west. The ruins clearly underwent restoration, making it seem that its demise was natural."

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

Passage by the Hospital is north of Garden. "The path from the peaceful square to the south brings you to a more chaotic place. Path to the Paul's Square paved with polished rusty-grey tiles bends northwest."

The crowd is here. "All kinds of people fill the grounds by the entrance to the hospital."
The description of the crowd is "The facial expressions of the people you can make out show a broad spectrum of emotions. There are black lines on this spectrogram though: joy and happiness."

Understand "people" as the crowd.

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