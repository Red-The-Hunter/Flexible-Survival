Vanrixie by Kageve begins here.

tigertracker is a number that varies.
[
Cornered Tigress Resolution Codes:
11:Vanrixie captured, player husky
12:Vanrixie captured, player not husky
2:Vanrixie left in den
3:Vanrixie brought to library
4:Helped Vanrixie, fled fight, Vanrixie left in den.
100:Ignored Event

tigertracker values:
1:Charged in
11:Charged in and sided with Vanrixie
111:Charged in and sided with Vanrixie won fight
112:Charged in and sided with Vanrixie lost fight
12:Charged in and sided with Huskies
2:Sneaked in
21:Sneaked in and sided with Vanrixie
211:Sneaked in and sided with Vanrixie won fight
212:Sneaked in and sided with Vanrixie lost fight
22:Sneaked in and sided with Huskies
23:Sneaked in and Watched

]
Table of GameEventIDs (continued)
Object	Name
Cornered Tigress	"Cornered Tigress"

Cornered Tigress is a situation.
ResolveFunction of Cornered Tigress is "[ResolveEvent Cornered Tigress]"
The level of Cornered Tigress is 12
Sarea of Husky Pack is "Outside"
when play begins:
	add Cornered Tigress to BadSpots of FemaleList;
	add Cornered Tigress to BadSpots of HermList;
	add Cornered Tigress to BadSpots of FurryList;

to say ResolveEvent Cornered Tigress:
	say "You explore the city, walking down its streets you come across a row of shops in various states of disrepair. Most of the shops have been raided for whatever they may have by other denizens of this infected land but a few near the end seem to have survived whatever onslaught the rest have fallen to. Hoping to score a find, you approach."
	Say "[italic type]RAOWR[roman type] You jump as you hear a loud roar when you approach one of the shops. Instinctively you distance yourslef from the store's shuttered window and prepare to be jumped by an infected creature, but after a few seconds you realise that the roar perhaps was not directed at you as more growls and snarls from different creatures come from within. Whatever is going on inside, it's probably going to resort in a clash. Do you stick around and try to watch or get involved, or decide it's too much of a risk and avoid the tussle.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Try and get a grip of the situation.";
	say "     ([link]N[as]n[end link]) - Leave, it's none of your buisness.";
	if Player consents: [Get involved]
	say "Curiosity gets the better of you and you decide to try and involve yourself in whatever's going on. Do you charge right in? Or perhaps take a more passive approach and sneak in?"
		LineBreak;
		say "     ([link]Y[as]y[end link]) - LEEROY JENKINS.";
		say "     ([link]N[as]n[end link]) - Sneak in.";
		if Player consents: [CHARGE IN]
			now tigertracker is 1;[Charged in]
			say "Throwing caution to the wind, you run inside though the front doors and come face to face to a standoff between a group of huskies and a larger antrho tiger woman who is a few heads taller than them. They are standing over what seems to be the rememnants of a clothing store and the makings of a den, a nest made out of various piles of clothes thrown over each other and a small pile of food and water in a corner. One of the huskie bitches lunges at the tiger woman and she bats her aside just in time to shove away charging male husky. Though the tiger woman is outnumbered, it seems like it's a fair fight. Multiple pairs of animalistic eyes dart your way as they quickly evaluate if you're a friend or foe. There's no backing out from the fight now, do you side with the large tiger woman or the huskies?"
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Help the Tiger Woman.";
			say "     ([link]N[as]n[end link]) - Help the Huskies.";
			if Player consents: [Help the Tiger Woman]
				now tigertracker is 11;[Charged in, helped Tigeress]
				say "Deciding to favour the tiger woman, you take advantage of your suprise entrance, you charge towards the nearest husky, slamming into them and sending them sprawling into a shelf, unconcious. Another member of the pack quickly stands over their fallen comrade and comes at you."
				say "[GroupFight1]"
			else:[Help the Huskies]
				now tigertracker is 12;[Charged in, helped Huskies]
				say "Deciding to favour the huskies, you take advantage of your suprise entrance, you charge towards the tiger woman as the other huskies hound her, slamming into the tigeress and sending her sprawling. Now that she's prone, the pack pounces upon her, some grabbing the assorted fabric strewn about to tie the downed tigress up. It's not long before she's completely restrained, her mouth gagged with a ball of clothes tied around the back of her head. Her left arm is tied to her left leg, and her right arm tied to her right leg respectively, unsurprisngly leaving her three rows of breasts, thick fleshy and dark pink feline quim and pucker easily accessible."
				say "Now that the tigress is subdued, the husky pack turns their attention to you."
				if bodyname of player is "Husky Bitch" or "Husky Alpha" and player is pure
					say "The huskies identify you as one of their own, seeing as you look like one of them. A few members of the pack, commanded by the alpha, proceeds to carry the trussed up tigress out of the front doors of the shop as she struggles against her cloth restraints, her free tail batting at whatever is in it's path. The rest of the huskies grab and gather some of the food and water that was strewn about during the fight, and follow the alpha husky out the front door, presumably back to wherever they have made their den."
					say "You manage to snag some packets of food and drink as the other huskies swept the place clean, seeing as there's nothing else to gain from the now empty store, you leave and continue your exploration of the city."
					[Item gain 2 food and 2 water]
					now Resolution of Cornered Tigress is 11;
					now Cornered Tigress is resolved;
				else:
					say "The husky pack is emboldened by the triumph over the tigress, and seeing as how you're not one of them you're the center of attention of the store full of ravenous huskies."
					say "[GroupFight2]"
		else: [SNEAK IN]
			now tigertracker is 2;[Sneaked in]
			say "Rather than being headstrong you Decide that the discretion is the better part of valor and look for another way into the building. A fast look behind the row of shops reveals that there's a back door, and it's not locked. Sneaking in, you hear crashes and thuds, the fight has probably already started without you. You manage to sneak past the back office towards the front part of the store where the fight is happening and crack open the door that seperates them to observe. Just as you look through the gap, you're shocked as a husky bitch is thrown into the wall with a yipe, and lands barely a few feet from your peeping-slit before slumping to the floor, unconcious. A large tiger woman standing a few heads taller than an average person is currently in the middle of a brawl with a pack of huskies. Her large build and toned musculature, paired with a good sense of how to fight seems to help ensure that even though she is outnumbered, it is a fair fight, as she continues to manhandle the various huskies that come at her. They seem to be fighting over the remenants of a clothing store and what appears to be a den made from it, with piles of clothes acting as a nest and a small pile of food and water by the side. At this point, the fight could go either way, do you wish to intervene, or watch how the fight unfolds?"
			say "     ([link]Y[as]y[end link]) - Intervene.";
			say "     ([link]N[as]n[end link]) - Watch.";
			if Player consents:[Intervene]
				say "Do you want to help the large tiger woman or the huskies?"
				say "     ([link]Y[as]y[end link]) - Help the Tiger Woman.";
				say "     ([link]N[as]n[end link]) - Help the Huskies."
				if Player consents:[Help the Tiger Woman]
					now tigertracker is 21;[Sneaked in, help Tigress]
					say "[if MaleList is not banned]The alpha husky[else]A husky bitch[end if] seems to be trying to sneak up behind her, now's your chance. You lunge out from your hiding spot and at the husky, hoping to catch them by suprise."
					say "[SoloFight]"
				else:[Help the Huskies]
					now tigertracker is 22;[Sneaked in, help Huskies]
					say "From your hiding spot you lunge out at the tigeress, hoping to catch her by suprise. You charge towards the tigeress as the other huskies hound her, slamming into the tigeress and sending her sprawling. Now that she's prone, the pack pounces upon her, some grabbing the assorted fabric strewn about to tie the downed tigress up. It's not long before she's completely restrained, her mouth gagged with a ball of clothes tied around the back of her head. Her left arm is tied to her left leg, and her right arm tied to her right leg respectively, unsurprisngly leaving her three rows of breasts, thick fleshy and dark pink feline quim and pucker easily accessible."
					say "Now that the tigress is subdued, the husky pack turns their attention to you."
					if bodyname of player is "Husky Bitch" or "Husky Alpha" and player is pure
						say "The huskies identify you as one of their own, seeing as you look like one of them. A few members of the pack, commanded by the alpha, proceeds to carry the trussed up tigress out of the front doors of the shop as she struggles against her cloth restraints, her free tail batting at whatever is in it's path. The rest of the huskies grab and gather some of the food and water that was strewn about during the fight, and follow the alpha husky out the front door, presumably back to wherever they have made their den."
						say "You manage to snag some packets of food and drink as the other huskies swept the place clean, seeing as there's nothing else to gain from the now empty store, you leave and continue your exploration of the city."
						[Item gain 2 food and 2 water]
						now Resolution of Cornered Tigress is 11;
						now Cornered Tigress is resolved;
					else:
						say "The husky pack is emboldened by the triumph over the tigress, and seeing as how you're not one of them you're the center of attention of the store full of ravenous huskies."
						say "[GroupFight2]"
			else:[Watch]
				now tigertracker is 23;[Sneaked in, Watched]
				say "It's probably not the best idea to get involved in such a big fight, so you resolve yourself to simply watching. The fight is getting intense as the teamwork of the huskies is wearing away at the tiger woman's endurance. From the corner of your eye, you spot the alpha husky sneaking around some debris in the den as the tiger woman is occupied by the rest of his pack as he tries to jump on the woman from behind. He waits for an opportune moment as multiple huskies claw at her, and then leaps. Unfortunately the tiger woman's ears are sensitive, as they flick to the alpha husky at the sound of his jump. She manages to throw off the huskies that had beset her and whirls around, catching the alpha midair by his throat."
				say "'STOP' She snarls out at the other huskies with her hackles raised, her thick fur spiking up, making her already large form more intimidating . Holding the alpha aloft by the neck, her claws begin to dig into his skin. He squirms in her grasp with his legs flailing helplessly mid air and his hands scrabbling at the grip around his throat in a vain attempt to break free. Seeing their alpha caught in such a state, the assault by the rest of the pack screeches to a halt, all eyes coming to rest upon her commanding form. 'LEAVE, NOW!' She commands the pack, but they remain frozen in place until one brave, or cowardly husky bitch takes a step away and turns tail to leave. The rest take this que to scamper off out of the front doors, with their tails between their legs, carrying as many of their knocked out comrades as they can as the tiger woman watches them leave. The alpha husky makes one last token attempt to break free, craning his neck in an attempt to bite some part of her arm, but the fight leaves him as he sees his pack abandon him. Soon, the shop is empty, save for the tiger woman, the alpha still being held by his throat, the unconcious husky bitch, and you."
				say "[TigerSexMarathon]"
	else: [Don't get involved]
	say " Deciding that the discretion is the better part of valor, you leave the shops, returning to where you started your exploration.";
	now Resolution of Cornered Tigress is 100; [Ignored Event]
	now Cornered Tigress is resolved;


	[TigerSexMarathon: tigress 69 husky alpha, she orals and rides alpha's muzzle, tigress later rides alpha until alpha fucked silly, nanites spread and tigress grow knotted kitty penis, tigress wakes unconcious husky bitch and doms with new appendage until bitch fucked silly, grows knot.]
	[Player option to leave or continue watching each scene.
	If stays till the end, will encounter Tigress Vanrixie, with option of sex, possibility of inviting dommymommy tigress back to library, resolve cornered tigress with 101[vanrixie brought back to library],
	leaving before last scene or not bringing her back to library, resolve cornered tigress with 100[left vanrixie at den], with future chance to encounter her again to have sexings, or invite her to library]

	[SexHornyTiger: Tigress services player penis, then rides player, french kissing with tongue, then hugging player to boobs. After sexing, tigress not fully satisfied, proceeds to TIGERSEXMARATHON.]
to say HuskyGangbang:

to say HuskyThreesome:

to say HuskyAlphaWin:

to say SexHornyTiger:

to say TigerSexMarathon:



to say SoloFight:
[WIP: If loss, vanrixie manages to pull husky alpha off player, held by throat scene, scares off rest of pack, knocks alpha unconcious, helps you up and leans you against wall, confirms that you're ok, worked up and horny by fight, proceed to wake up alpha, then TIGERSEXMARATHON scene.]
[if win, vanrixie thanks player, worked up and horny by fight, asks for sex, if player decline or has no penis, TIGERSEXMARATHON scene, if player has penis and accept, SEXHORNYTIGER]
	if MaleList is not banned:
		challenge "Husky Alpha";
	else:
		challenge "Husky Bitch";
	if fightoutcome < 20: [player won]
		say " 		You've bested the husky, and they lie on the floor, spent. Looking around the fight has been taken out of the huskies, and they scamper off out of the front doors with their tails between their legs, carrying as many of their knocked out comrades as they can. Only the husky alpha, unconcious husky bitch, the tigress and you remain in the store."
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		if MaleList is not banned:
			say "     You've been bested by the alpha and are thrown to the floor. Having had the fight taken out of you, he takes his position over you and he [StripCrotch] and lines up his cock with your [if Player is female]pussy[else if Player is male]asshole[else]smooth and sexless area of your crotch[end if] prepared to claim you as his. Just before he is able to thrust, a thick white and orange furred hand wraps around his neck as he is is pulled away from you by the tigress.";
		else:
			say "     You've been bested by the husky and are thrown to the floor. Having had the fight taken out of you, the husky bitch climbs on top of you and she [StripCrotch]. The husky bitch gives attention to your [if Player is female]pussy[else if Player is male]asshole[else]smooth and sexless area of your crotch[end if] as she lines her own croth with your face. Her slobering canine spade drips with horny lust and eagerness, spatting your face with fluids as she prepares to go to town on you to mark you as property of the pack. Just before she is able to thrust herself upon your [Face of Player], a loud ROAR stops her in her tracks. As she turns away from violating you, you get a glimpse of what has happened, the tigress has managed to grab the husky alpha by the neck, and is raising him off the ground."
		say "'STOP, ALL OF YOU!' The tigress snarls out at the other huskies with her hackles raised, her thick fur spiking up, making her already large form more intimidating . Holding the alpha aloft by the neck, her claws begin to dig into his skin. He squirms in her grasp with his legs flailing helplessly mid air and his hands scrabbling at the grip around his throat in a vain attempt to break free. Seeing their alpha caught in such a state, the assault by the rest of the pack screeches to a halt, all eyes coming to rest upon her commanding form. 'Leave, NOW!' She commands the pack, but they remain frozen in place until one brave, or cowardly husky bitch takes a step away and turns tail to leave. The rest take this que to scamper off out of the front doors with their tails between their legs, carrying as many of their knocked out comrades as they can, as the tiger woman watches them leave. The alpha husky makes one last token attempt to break free, craning his neck in an attempt to bite some part of her arm, but the fight leaves him as he sees his pack abandon him. Soon, the shop is empty save for the tiger woman, the alpha still being held by his throat, the unconcious husky bitch, and you."
		say"The tigress tosses the alpha husky into the nest of clothing that adorns the center of the room and he lies there, gasping for air. She walks over to you and squats down, leaning over to inspecting your wounds. 'Are you alright, you poor darling?' She asks you with a look of motherly concern, her deep yet distinctly female voice rumbles your core. You manage a weak nod, the nanites going through your system will get you up and running in no time. 'My little hero, jumping in to help me. Silly you, those ruffians are no match for me. You needn't have worried.' She muses while propping you up against the store counter. She continues to nurse your wounds, unintentionally giving you a close look of her breasts as she fusses over you. Six of them, the top pair as big as basketballs and decreasing in size as they go down, jostle for space as she reaches to wipe some grime off your [Face of Player], each one of them is capped with a small black dome that peaks through her white belly fuzz, her onyx nipples protrude proudly from the center of each of her areola and glisten with moisture."
		say"'All that fighting has got me really hot and bothered, and you're in no shape to help needy old me.' The tigress says, satisfied with her inspection of you. She stands, giving you a good look at her thick fleshy dark-pink feline labia that sticks out of her black snatch, slick with sweat and feminine juices that have matted the fine creamy fuzz around her crotch between her two shapely muscular thighs. Turning around, she prowls toward the nest in the middle of the store, her striped tail giving your cheek one last caress as you're treated to a view of her huggable ass, which bounces as she saunters away."
		say "[TigerSexMarathon]"

	else if fightoutcome is 30: [fled]
		LineBreak;
		say "			One of the huskies fighting the tigress stumbles into the one you're currently fighting, and you use the distraction to run out the back door as the pack is occupied by the tigeress' might.";
		now Resolution of Cornered Tigress is 4; [Player help tigress, player fled]

to say GroupFight1:

[Group fight of 3 husky bitch followed by husky alpha]
[WIP: If loss at any point, vanrixie grabs alpha by throat, scares off rest of pack, knocks alpha unconcious, helps you up and leans you against wall, confirms that you're ok, worked up and horny by fight, proceeds to wake up alpha, then TIGERSEXMARATHON scene.][Lost Husky Combat]
[if win, vanrixie thanks player, worked up and horny by fight, asks for sex, if player decline or has no penis, TIGERSEXMARATHON scene, if player has penis and accept, SEXHORNYTIGER]
[Won Husky Combat]
	let GroupFightCounter be 0;
	now fightoutcome is 0; [reset]
	while fightoutcome < 20 and GroupFightCounter < 5: [runs for 5 times or until the player loses or flees]
		now inasituation is true;
		if GroupFightCounter < 4: [when 0-3, fight bitch, when 4, fight alpha ]
			challenge "Husky Bitch";
		else if MaleList is not banned:
			challenge "Husky Alpha";
		else:
			challenge "Husky Bitch";
		increase GroupFightCounter by 1;
	if fightoutcome < 20: [player won]
		say " 		You've bested the husky, and they lie on the floor, spent. Looking around the fight has been taken out of the huskies, and they scamper off out of the front doors with their tails between their legs, carrying as many of their knocked out comrades as they can. Only the husky alpha, unconcious husky bitch, the tigress and you remain in the store."
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		if MaleList is not banned:
			say "     You've been bested by the huskies and are thrown to the floor. Having had the fight taken out of you, the alpha husky takes his position over you and he [StripCrotch] and lines up his cock with your [if Player is female]pussy[else if Player is male]asshole[else]smooth and sexless area of your crotch[end if] prepared to claim you as his. Just before he is able to thrust, a thick white and orange furred hand wraps around his neck as he is is pulled away from you by the tigress.";
		else:
			say "     You've been bested by the huskies and are thrown to the floor. Having had the fight taken out of you, one of the husky bitches climbs on top of you and she [StripCrotch]. The husky bitch gives attention to your [if Player is female]pussy[else if Player is male]asshole[else]smooth and sexless area of your crotch[end if] as she lines her own croth with your face. Her slobering canine spade drips with horny lust and eagerness, spatting your face with fluids as she prepares to go to town on you to mark you as property of the pack. Just before she is able to thrust herself upon your [Face of Player], a loud ROAR stops her in her tracks. As she turns away from violating you, you get a glimpse of what has happened, the tigress has managed to grab the husky alpha by the neck, and is raising him off the ground."
		say "'STOP, ALL OF YOU!' The tigress snarls out at the other huskies with her hackles raised, her thick fur spiking up, making her already large form more intimidating . Holding the alpha aloft by the neck, her claws begin to dig into his skin. He squirms in her grasp with his legs flailing helplessly mid air and his hands scrabbling at the grip around his throat in a vain attempt to break free. Seeing their alpha caught in such a state, the assault by the rest of the pack screeches to a halt, all eyes coming to rest upon her commanding form. 'Leave, NOW!' She commands the pack, but they remain frozen in place until one brave, or cowardly husky bitch takes a step away and turns tail to leave. The rest take this que to scamper off out of the front doors with their tails between their legs, carrying as many of their knocked out comrades as they can, as the tiger woman watches them leave. The alpha husky makes one last token attempt to break free, craning his neck in an attempt to bite some part of her arm, but the fight leaves him as he sees his pack abandon him. Soon, the shop is empty save for the tiger woman, the alpha still being held by his throat, the unconcious husky bitch, and you."
		say"The tigress tosses the alpha husky into the nest of clothing that adorns the center of the room and he lies there, gasping for air. She walks over to you and squats down, leaning over to inspecting your wounds. 'Are you alright, you poor darling?' She asks you with a look of motherly concern, her deep yet distinctly female voice rumbles your core. You manage a weak nod, the nanites going through your system will get you up and running in no time. 'My little hero, jumping in to help me. Silly you, those ruffians are no match for me. You needn't have worried.' She muses while propping you up against the store counter. She continues to nurse your wounds, unintentionally giving you a close look of her breasts as she fusses over you. Six of them, the top pair as big as basketballs and decreasing in size as they go down, jostle for space as she reaches to wipe some grime off your [Face of Player], each one of them is capped with a small black dome that peaks through her white belly fuzz, her onyx nipples protrude proudly from the center of each of her areola and glisten with moisture."
		say"'All that fighting has got me really hot and bothered, and you're in no shape to help needy old me.' The tigress says, satisfied with her inspection of you. She stands, giving you a good look at her thick fleshy dark-pink feline labia that sticks out of her black snatch, slick with sweat and feminine juices that have matted the fine creamy fuzz around her crotch between her two shapely muscular thighs. Turning around, she prowls toward the nest in the middle of the store, her striped tail giving your cheek one last caress as you're treated to a view of her huggable ass, bouncing as she saunters away."
		say "[TigerSexMarathon]"
		say "Having given you some time to recover, she props herself up in her love nest and looks over to where you rest. You can see that the firey lust in her eyes has not dissipated as her hazel irises settle upon you. 'Have you rested enough, little darling? I hope you enjoyed my little show, would you like to come over and join me?'"
		say "     ([link]Y[as]y[end link]) - Accept her invitation.";
		say "     ([link]N[as]n[end link]) - Decline.";
		if Player consents:[Accept]
			say"[SexHornyTiger]"
		else:[Decline]
			say"'Ah, that is too bad, perhaps when you're feeling better.' the tigress remarks with a hint of pity. 'Help yourself to some snacks and drinks in that corner, you're free to stay as long as you want.' she adds, guesturing to the pile of food and drink. You manage to get up on your feet and grab a bottle of water and a can of food. Feeling that you've stayed too long in the tiger's den, you grab your gear and prepare to set off. The tigress, seeing you set out to leave, rises from the love nest, sexual fluids dripping from her crotch, leaving an alabaster trail along the floor as she approaches you. You tense for a moment, prepared to run, thinking the tigress is going to jump you, but she simply stoops down to give you a hug from behind, enveloping your back her in her bosom and nuzzling you on the back of the head with her fluffy cheeks. 'Leaving?' She asks, her deep voice reverbrates your chest. 'Is there somewhere out there safer than my den? Seeing how it's now been trashed up by the huskies, perhaps I could move in with you?'"
			say "     ([link]Y[as]y[end link]) - Invite her to the library.";
			say "     ([link]N[as]n[end link]) - Tell her no.";
			if Player consents:[invite her]
				say:"After telling her about the library, she replies. 'Hmm... I think I'll stay in my den a little longer, though thank you dear, for your kind thoughts.'' With that she releases you from her hug, pats you on the head, and leaves you on your way out. 'I hope you do come back to visit some time, I'll be waiting.' She calls out after you, as you step out onto the street, continuing your exploration of the city."[wip bunker npc]

			else:[say no]
				say:"'Ah then, I'll make do with this den of mine. I hope you do come back to visit some time, I'll be waiting.' With that she releases you from her hug, pats you on the head, and leaves you on your way out.'"
			[gain item 1 food 1 bottled water]
			now Resolution of Cornered Tigress is 2;
			now Cornered Tigress is resolved;

	else if fightoutcome is 30: [fled]
		LineBreak;
		say "			One of the huskies fighting the tigress stumbles into the one you're currently fighting, and you use the distraction to run out the back door as the pack is occupied by the tigeress' might.";
		now Resolution of Cornered Tigress is 4; [Player help tigress, player fled]
	now inasituation is false;


to say GroupFight2:
[WIP: insert groupfight here,
if loss, gangbang/threesome/huskyalpha scene dependant on how well player against huskies.
if win, gain 3 food and 3 water
Vanrixie captured, player is known to not be a husky]
	let GroupFightCounter be 0;
	now fightoutcome is 0; [reset]
	while fightoutcome < 20 and GroupFightCounter < 7: [runs for 7 times or until the player loses or flees]
		now inasituation is true;
		if GroupFightCounter < 6: [when 0-5, fight bitch, when 6, fight alpha ]
			challenge "Husky Bitch";
		else if MaleList is not banned:
			challenge "Husky Alpha";
		else:
			challenge "Husky Bitch";
		increase GroupFightCounter by 1;
	if fightoutcome < 20: [player won]
		say " 		You've managed to repulse the advances of the husky pack and their alpha, the rest of the pack decide it's best to cut their losses and they grab the tied up tigress, turn tail, and run, leaving the stash of food and drink behind."
		[gain item 3 food 3 bottled water]
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     Trapped inside the building with so many huskies against you, your strength gives out and you fall to fatigue. Those not busy with the tigress swarm you, pinning you down. The orgy of huskies rub against you, their body heat and that musky, horny scent begins overwhelm your senses";
		if GroupFightCounter < 2: [Defeated 2]
			LineBreak;
			say "[HuskyGangbang]";
		else if GroupFightCounter < 5: [Defeated 3-5]
			LineBreak;
			say "[HuskyThreesome]";
		else: [Lost to Alpha/7th Husky]
			LineBreak;
			if MaleList is not banned:
				say "[HuskyAlphaWin]";
	else if fightoutcome is 30: [fled]
		LineBreak;
		say "			The tigress manages to rip through one off her restrains, distracting your assailants, and you take the chance to flee through the back door of the shop as they tend to their main prize.";
	now Resolution of Cornered Tigress is 12; [Vanrixie captured, player not husky]
	now inasituation is false;



	[Vanrixie description: She's a prime specimen of raw beastial power, adorning a shapely and mature woman's body. Her fur coat is thick and rich, most of her body is orange with black stripes of that give way to soft fluffy creamy off-white fuzz that runs from her lower jaw, over her chest and crotch and down the insides of her limbs. Her ample bosom consists of ]
