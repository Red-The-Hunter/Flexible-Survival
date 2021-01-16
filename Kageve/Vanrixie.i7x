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
	say "     You explore the city, as you walk down its streets you come across a row of shops in various states of disrepair. Most of the shops have been raided for whatever they may have by other denizens of this infected land but a few near the end seem to have survived whatever onslaught the rest have fallen to. Hoping to score a find, you approach.";
	say "[italic type]RAOWR[roman type] You jump as you hear a loud roar when you approach one of the shops. Instinctively you distance yourslef from the store's shuttered window and prepare to be jumped by an infected creature, but after a few seconds you realize that the roar perhaps was not directed at you as more growls and snarls from different creatures come from within. Whatever is going on inside, it's probably going to result in a clash. Do you stick around and try to watch or get involved, or decide it's too much of a risk and avoid the tussle.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Try and get a grip of the situation.";
	say "     ([link]N[as]n[end link]) - Leave, it's none of your buisness.";
	if Player consents: [Get involved]
	say "     Curiosity gets the better of you and you decide to try and involve yourself in whatever's going on. Do you charge right in? Or perhaps take a more passive approach and sneak in?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - LEEROY JENKINS.";
		say "     ([link]N[as]n[end link]) - Sneak in.";
		if Player consents: [CHARGE IN]
			now tigertracker is 1;[Charged in]
			say "     Throwing caution to the wind, you run inside though the front doors and come face to face to a standoff between a group of huskies and an anthro tiger woman with long black hair who stands few heads taller than all of them. They are standing over what seems to be the rememnants of a clothing store and the makings of a den, a nest made out of various piles of clothes thrown over each other and a small pile of food and water in a corner. One of the huskie bitches lunges at the tigress and she bats her aside just in time to shove away charging male husky. Though the tiger woman is outnumbered, it seems like it's a fair fight. Multiple pairs of animalistic eyes dart your way as they quickly evaluate if you're a friend or foe. There's no backing out from the fight now, do you side with the large tiger woman or the huskies?";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Help the Tiger Woman.";
			say "     ([link]N[as]n[end link]) - Help the Huskies.";
			if Player consents: [Help the Tiger Woman]
				now tigertracker is 11;[Charged in, helped Tigeress]
				say "     Deciding to favor the tiger woman, you take advantage of your suprise entrance. Charging towards the nearest husky, you slam into them sending them sprawling into a shelf, rendering them unconcious. Another member of the pack quickly stands over their fallen comrade and comes at you.";
				say "[GroupFight1]";
			else:[Help the Huskies]
				now tigertracker is 12;[Charged in, helped Huskies]
				say "     Deciding to favor the huskies, you take advantage of your suprise entrance, you charge towards the tiger woman as the other huskies hound her, slamming into the tigeress' back and sending her sprawling. Now that she's prone, the pack pounces upon her, some grabbing the assorted fabric strewn about to tie the downed tigress up. It's not long before she's completely tied up. Her mouth is gagged with a bunch of t-shirts balled up and shoved into her mouth, secured and tied around the back of her head with the sleeves of a few sweaters. Her left arm is tied to her left leg, and her right arm tied to her right leg respectively, having been shoved into the pant legs of multiple jeans and strapped up with belts. The result looks like badly botched attempt at some hybrid of dress up and yoga, but it is effective at restraining the livid tigress. Unsurprisingly her big breasts, four smaller teats, fleshy dark-pink feline quim and pucker are left easily accessible.";
				say "Once the tigress is subdued, the husky pack turns their attention to you.";
				if bodyname of player is "Husky Bitch" or "Husky Alpha" and player is pure
					say "The huskies identify you as one of their own, seeing as you look like one of them. A few members of the pack, commanded by the alpha, proceeds to carry the trussed up tigress out of the front doors of the shop as she struggles against her cloth restraints, her free tail batting at whatever is in it's path. The rest of the huskies grab and gather some of the food and water that was strewn about during the fight, and follow the alpha husky out the front door, presumably back to wherever they have made their den.";
					say "You manage to snag some packets of food and drink as the other huskies swept the place clean, seeing as there's nothing else to gain from the now empty store, you leave and continue your exploration of the city.";
					[Item gain 2 food and 2 water]
					now Resolution of Cornered Tigress is 11;
					now Cornered Tigress is resolved;
				else:
					say "The husky pack is emboldened by the triumph over the tigress, and seeing as how you're not one of them you're the center of attention of the store full of ravenous huskies.";
					say "[GroupFight2]";
		else: [SNEAK IN]
			now tigertracker is 2;[Sneaked in]
			say "     Rather than being headstrong you Decide that the discretion is the better part of valor and look for another way into the building. A fast look behind the row of shops reveals that there's a back door, and it's not locked. Sneaking in, you hear crashes and thuds, the fight has probably already started without you. You manage to sneak past the back office towards the front part of the store where the fight is happening and crack open the door that seperates them to observe. Just as you look through the gap, you're shocked as a husky bitch is thrown into the wall with a yipe, and lands barely a few feet from your peeping-slit before slumping to the floor, unconcious. A large tiger woman standing a few heads taller than an average person is currently in the middle of a brawl with a pack of huskies. Her long black whips about as she continues to manhandle the various huskies that come at her. Her large build and toned musculature, paired with a good fighting sense seems to help ensure that even though she is outnumbered, it is a fair battle. They seem to be fighting over the remenants of a clothing store and what appears to be a den made from it, with piles of clothes acting as a nest and a small pile of food and water by the side. At this point, the fight could go either way, do you wish to intervene, or watch how the fight unfolds?";
			say "     ([link]Y[as]y[end link]) - Intervene.";
			say "     ([link]N[as]n[end link]) - Watch.";
			if Player consents:[Intervene]
				say "Do you want to help the large tiger woman or the huskies?";
				say "     ([link]Y[as]y[end link]) - Help the Tiger Woman.";
				say "     ([link]N[as]n[end link]) - Help the Huskies.";
				if Player consents:[Help the Tiger Woman]
					now tigertracker is 21;[Sneaked in, help Tigress]
					say "[if MaleList is not banned]The alpha husky[else]A husky bitch[end if] seems to be trying to sneak up behind her, now's your chance. You lunge out from your hiding spot and at the husky, hoping to catch them by suprise.";
					say "[SoloFight]";
				else:[Help the Huskies]
					now tigertracker is 22;[Sneaked in, help Huskies]
					say "     From your hiding spot you lunge out at the tigeress, hoping to catch her by suprise. You charge towards the tigeress as the other huskies hound her, slamming into the tigeress and sending her sprawling. Now that she's prone, the pack pounces upon her, some grabbing the assorted fabric strewn about to tie the downed tigress up. It's not long before she's completely tied up. Her mouth is gagged with a bunch of t-shirts balled up and shoved into her mouth, secured and tied around the back of her head with the sleeves of a few sweaters. Her left arm is tied to her left leg, and her right arm tied to her right leg respectively, having been shoved into the pant legs of multiple jeans and strapped up with belts. The result looks like badly botched attempt at some hybrid of dress up and yoga, but it is effective at restraining the livid tigress. Unsurprisingly her big breasts, four smaller teats, fleshy dark-pink feline quim and pucker are left easily accessible.";
					say "Once the tigress is subdued, the husky pack turns their attention to you.";
					if bodyname of player is "Husky Bitch" or "Husky Alpha" and player is pure
						say "The huskies identify you as one of their own, seeing as you look like one of them. A few members of the pack, commanded by the alpha, proceeds to carry the trussed up tigress out of the front doors of the shop as she struggles against her cloth restraints, her free tail batting at whatever is in it's path. The rest of the huskies grab and gather some of the food and water that was strewn about during the fight, and follow the alpha husky out the front door, presumably back to wherever they have made their den.";
						say "You manage to snag some packets of food and drink as the other huskies swept the place clean, seeing as there's nothing else to gain from the now empty store, you leave and continue your exploration of the city.";
						[Item gain 2 food and 2 water]
						now Resolution of Cornered Tigress is 11;
						now Cornered Tigress is resolved;
					else:
						say "The husky pack is emboldened by the triumph over the tigress, and seeing as how you're not one of them you're the center of attention of the store full of ravenous huskies.";
						say "[GroupFight2]";
			else:[Watch]
				now tigertracker is 23;[Sneaked in, Watched]
				say "     It's probably not the best idea to get involved in such a big fight, so you resolve yourself to simply watching. The fight is getting intense as the teamwork of the huskies is wearing away at the tiger woman's endurance. From the corner of your eye, you spot the alpha husky sneaking around some debris in the den as the tiger woman is occupied by the rest of his pack as he prepares to jump on the woman from behind. He waits for an opportune moment as multiple huskies claw at her, and then leaps. Unfortunately the tiger woman's ears are sensitive, as they flick to the alpha husky at the sound of his jump. She manages to throw off the huskies that had beset her and whirls around, catching the alpha midair by his throat.";
				say "'STOP' She snarls out at the other huskies with her hackles raised, her thick fur spiking up, making her already large form more intimidating . Holding the alpha aloft by the neck, her claws begin to dig into his skin. He squirms in her grasp with his legs flailing helplessly mid air and his hands scrabbling at the grip around his throat in a vain attempt to break free. Seeing their alpha caught in such a state, the assault by the rest of the pack screeches to a halt, all eyes coming to rest upon her commanding form. 'LEAVE, NOW!' She commands the pack, but they remain frozen in place until one brave, or cowardly husky bitch takes a step away and turns tail to leave. The rest take this cue to scamper off out of the front doors, with their tails between their legs, carrying as many of their knocked out comrades as they can as the tiger woman watches them leave. The alpha husky makes one last token attempt to break free, craning his neck in an attempt to bite some part of her arm, but the fight leaves him as he sees his pack abandon him. Soon, the shop is empty, save for the tiger woman, the alpha still being held by his throat, the unconcious husky bitch, and you.";
				say "[TigerSexMarathon]";
	else: [Don't get involved]
	say "     Deciding that the discretion is the better part of valor, you leave the shops, returning to where you started your exploration.";
	now Resolution of Cornered Tigress is 100; [Ignored Event]
	now Cornered Tigress is resolved;


	[TigerSexMarathon: tigress 69 husky alpha, she orals and rides alpha's muzzle, tigress later rides alpha until alpha fucked silly, nanites spread and tigress grow knotted kitty penis, tigress wakes unconcious husky bitch and doms with new appendage until bitch fucked silly, grows knot.]
	[Player option to leave or continue watching each scene.
	If stays till the end, will encounter Tigress Vanrixie, with option of sex, possibility of inviting dommymommy tigress back to library, resolve cornered tigress with 101[vanrixie brought back to library],
	leaving before last scene or not bringing her back to library, resolve cornered tigress with 100[left vanrixie at den], with future chance to encounter her again to have sexings, or invite her to library]

	[SexHornyTiger: Tigress services player penis, then rides player, french kissing with tongue, then hugging player to boobs. After sexing, tigress not fully satisfied, proceeds to TIGERSEXMARATHON.]
to say HuskyTigerGroupOrgy:
	say "Huskies assault you from all sides, rubbing their bodies against you all whilst you are disrobed from any clothes you may have. They bring you to the center of the shop and into the nest of clothing where you are placed on your back. You find yourself right next to the bound tigress and wonder why you're in the same situation with someone who you helped to bring down. Huskies start to mount both of you to sate their lusts as a post-fight orgy of horny canines begins to form.";

	if MaleList is not banned: [Male Husky anal]
			say "A male husky wedges himslef partially underneath you, shifting some clothing to allow himself to settle into a divet below your [bodydesc of Player] [bodytype of Player] body, aligning his crotch to your butt. His head peeks out from just under your armpit with his fluffy pointed ears occasionally brushing against your sentistive underarm, tickling you. His doggy dick seems erect and pre-lubricated as it slaps against your butt, probably previously wetted by another husky bitch. 'Mmm, gonna get me some of that ass.' he half-growls, his prick prodding at your pucker. [if player is submissive]At the demands of a stronger male, you relent, relaxing your sphincter and letting him[else if player is kinky]The enticing thought of your asshole geting violated turns you on and you let him [else]You clench your butcheeks together in an attempt to deny him entry, but this only entices him as he continues with renewed vigour. In the end, you fail to muster the strength needed to repluse his advances and your muscles give way allowing him to[end if] thrust his pointed dog dick into your anus. He goes to town on your ass, repeatedly hilting his cock into your butthole right up to the start of his knot. Each time he draws in and out his red rod tugs your anal walls out and back in again as they cling to the pistoning cock.";

	if player is neuter:

	if player is male:[bitch ride cock, massage balls, if player has two dicks, anal dp]
		say "One of the husky bitches takes the opportunity to sit upon your waist, her tail eagerly wagging as it sweeps across your bare chest while her drooling canine spade slobbers its juices over your lower abdomen with every motion. The bitch's padded hands quickly find their way to your crotch and start stroking your male equipment, leathery digits teasing your [cock of player] [if cocks of player > 1]cock[else]cocks[end if] to attention. Strings of fem-cum stretch between your stomach as she hoists herself up, repositioning such that her wet cleft sandwiches your [if cocks of player > 1]dick[else]dicks[end if] between her hot depths and your bitch-juice soaked tummy with a moist [italic type]SQUELCH[roman type]. She begins to grind her pussy upon your [if cocks of player > 1]length[else]lengths[end if], thoroughly lubricating your [if cocks of player > 1]cock[else]cocks[end if] with her girl juice. each stroke causing her to huff with lustful need. With one particularly long stroke of her body against yours, your [if cocks of player > 1] longest[end if] shaft finds purchase and slides right into her cunny, her triangular lips kissing the [if player is knotted]knot[else]base[end if] of your dick.";
		if cocks of player > 1:
			say "As she rides you, your other [if cocks of player > 2]cocks[else]cock[end if] are hotdogged by the husky bitch's bubble butt and poke at the base of her fluffy tail whenever she hilts herself upon you, matting her fur with sexual fluids. Feeling [if cocks of player > 2]their[else]its[end if] presence, she guides [if cocks of player > 2]a[else]the[end if] slickened shaft with her hand and with the next hump sends it thrusting up her tail hole as she lets out a howl of pleasure.";

	if MaleList is not banned: [Male Husky facefuck]
		say "Seeing that your [face of player] face is still free, a pair of furred hands grabs the sides of your head, wrenching it back. Your field of view, now upside down, is filled with two fuzzy golfball sized testicles that hang under throbbing red doggy dick. 'Suck it, bitch.' Its owner demands as he presses the tip against your mouth. [if player is submissive]Your submissive disposition makes you obey[else if player is kinky]Your kinky disposition makes you relent[else]You try to resist, but he painfully squeeses your jaw open with his hands and you lack the energy in you to resist[end if] and you find the knotted prick shoved into your mouth. He humps your mouth with wanton abandon as if you were his very own personal fuckhole. His tapered dick rams the back of your throat as his furry balls smack into your face each time he thrusts. When he pulls back from your face the tip of his doggy cock gets dragged across your tongue and leaves the taste of salty canine cum before it gets rammed back in, your lips meeting his slowly engorging knot with a kiss.";
	else: [Bitch husky facefuck]
		say "Seeing that your [face of player] face is still free, a pair of furred hands grabs the sides of your head, wrenching it back. Your field of view, now upside down, is filled with the sight of the cleft of a canine pussy. 'Come on and eat me out.' Its owner practically moans, one hand cupping the bottom of your chin and the other peels her cleft apart as she guides your mouth towards her depths. Lowering herslef upon your face, your lips soon meet hers and your vision is filled with the sight of the base of her tail and her well-used pucker. [if player is submissive]Your submissive disposition makes you obey[else if player is kinky]Your kinky disposition makes you follow along[else]You dont reciprocate at first, but she leans back, smothering both your mouth and nose, blocking your breathig, until you start to cooperate[end if] and you start to lick at her folds. Her juices run smoothly over your tongue, leaving you with a sweet with slight tangy taste as she smooshes her sex against you, each thrust renews the flow of puppy juices.";


	if player is female:
		if MaleList is not banned: [Male Husky vaginal]
			say "You feel something prodding your lower lips, a spongy but firm rod rests between your folds. The maleness is rubbed against your snatch and if it was not already thick with feminine juice, it is now. Having been blocked by the husky currently romping your face you can only feel the assaulting appendage by it's heat and touch. The dick is pulled away from your pussy and cold air tickles your spread lips causing them to quiver and spurt some fem-cum. You almost get used to the sudden cessation of attention, before the cock is sheathed all the way inside you with an audiable grunt, hilting you all the way to the knot which mashes into your clit. The sudden sense of fullness shocks you to the core, and you spasm, the walls of your vagina squeeze tight upon the intruder. Your asshole does the same, tightening around the other dogcock still lodges inside your ass. The male attending to your arsehole finally reaches his limit, and he thrusts with one final push, squeezing his engorged knot past your anal sphincter, making you cry out from around the penis in your mouth in a mixture of pain and pleasure as squirts of hot doggy cum shoots into your bowels.";
			if player is male:
				say "The ecstasy makes you arc your back as you thrust your hips upwards, this compounded with the hilting of dog dick up your ass sends your [if cocks of player > 2]cocks[else]cock[end if] plouging into the husky bitch riding atop you, [if player is knotted]your knot(s) popping inside her[end if] as she bottoms out your [if cocks of player > 2]dicks[else]dick[end if]. She lets out a suprised yelp, shuddering upon your [if cocks of player > 2]twin spires[else]spire[end if] in an orgasm that causes her to contract around you. The stimulus is too much and sends you over the edge. You bust your load into her eagerly awaiting depths as she milks you for all you are worth. Her hands seek out support as she rides out the orgasm, coming to grasp your [skin of player] [if breast size of player > 0]breasts[else] chest[end if] her claws digging into your [skin of player] flesh. After the wave passes she slumps forward to rest on top of your body as cum starts to seep out between your [cock of player] [if cocks of player > 2]dicks[else]dick[end if] and her filled [if cocks of player > 2]holes[else]pussy[end if].";
			say "The other dicks that are currently spitroasting you pick up the pace, probably having seen the other members of their pack reach their moment of bliss. Their thrusting rythm is slightly off sync, at times, they take turns to be inside of you though slowly they enter in unison before drifting out of beat again. The rapid humping quickly sends the two to their climaxes. The pupper in your throat forces his knot past your jaw, shooting his load down your straightened throat and gathers inside your stomach. Its length chokes you as you struggle and gag around the foreign object lodged into your esophagus, but it seems to only give him more pleasure as he massages his cock with his hands through your bared throat. As you jerk around struggling to take a proper breath, your movement sets off the one pounding your pussy and he pushes his knot into you with a pop. Another round of contractions wreck havoc on your body as you experience another orgasm. Canine semen jets into your vagnia, spurt after spurt it starts to spill past your cervix and begins to fill your womb with warm seed. Thankfully the one who shoved his dick down your throat manages to yank his knot out of your mouth, leaivng you sputtering and coughing as you can breath again. You hack up some semen in your choking fit [if player is submissive]but it would not be right to waste the seed of a stronger partner, so you swallow it back down.[else if player is kinky]but instead of spitting it out, you roll the salty-sweet glob around your mouth, relishing in the musky flavour before swallowing it back down.[else] and quickly spit it out of your mouth.[end if]";
		else: [Bitch husky eat out]
			say "A warm breath approaches your lower lips before a cold wet nose is pressed against the opening. The shock makes your cunt quiver and spurt out some fem-cum. This motivates whoever it is with their face by your crotch, as your face is being romped by another husky you can all but feel the rough and flat canine tongue lapping at your folds, licking up whatever juices you make. There is a short pause where your assaulter pulls their face away from your pussy, letting cold air tickle your spread vulva, causing them to quiver with the lack of stimulus. You almost get used to the sudden cessation of attention, but then with sudden gusto an open mouth meets your gash and its tongue goes deep within, lapping up inside your vaginal passage. The rough muscular organ rubs right across your g-spot repeatedly overstimulating your senses and you spasm, the walls of your vagina squeeze tight upon the intruder.";
			if player is male:
				say "The ecstasy makes you arc your back as you trust your hips upwards, sending your [if cocks of player > 2]cocks[else]cock[end if] plouging into the husky bitch riding atop you, [if player is knotted]your knot(s) popping inside her[end if] as she bottoms out your [if cocks of player > 2]dicks[else]dick[end if]. She lets out a suprised yelp, shuddering upon your [if cocks of player > 2]twin spires[else]spire[end if] in an orgasm that causes her to contract around you. The stimulus is too much and sends you over the edge. You bust your load into her eagerly awaiting depths as she milks you for all you are worth. Her hands seek out support as she rides out the orgasm, coming to grasp your [skin of player] [if breast size of player > 0]breasts[else] chest[end if] her claws digging into your [skin of player] flesh. After the wave passes she slumps forward to rest on top of your body as cum starts to seep out between your [cock of player] [if cocks of player > 2]dicks[else]dick[end if] and her filled [if cocks of player > 2]holes[else]pussy[end if].";
			say:"";[oral vag+ finger ass, you cum, trashing makes Facefuck bitch cums, oral stops]
	else if player is male:[pure male player]
		if MaleList is not banned: [being buttfucked, ridden by husky, facefucked by cock]
			say:"";[Spitroast, climax, struggle to breath thrust into riding bitch and cum.]
		else:[ridden by husky, facefucked by husky]
			say:"A warm breath approaches your lower lips before a cold wet nose is pressed against the opening. The shock makes your ass quiver and squeeze. This motivates whoever it is with their snout at your crotch, as your face is being romped by another husky you can all but feel the rough and flat canine tongue lapping at your sphincter, getting a good taste of your anus. There is a short pause where your assaulter pulls their face away from your butthole, letting cold air tickle your the abused tailpipe, causing it to wink due to the sudden lack of stimulus. You almost get used to the sudden cessation of attention, but then with sudden gusto an open mouth meets your ass and its tongue goes deep within, lapping up inside your anxiousness. The rough muscular organ rubs right under your prostate repeatedly overstimulating your senses and you spasm, your ass squeezing tight upon the intruder's snout.";
			say "The ecstasy makes you arc your back as you trust your hips upwards, sending your [if cocks of player > 2]cocks[else]cock[end if] plouging into the husky bitch riding atop you, [if player is knotted]your knot(s) popping inside her[end if] as she bottoms out your [if cocks of player > 2]dicks[else]dick[end if]. She lets out a suprised yelp, shuddering upon your [if cocks of player > 2]twin spires[else]spire[end if] in an orgasm that causes her to contract around you. The stimulus is too much and sends you over the edge. You bust your load into her eagerly awaiting depths as she milks you for all you are worth. Her hands seek out support as she rides out the orgasm, coming to grasp your [skin of player] [if breast size of player > 0]breasts[else] chest[end if] her claws digging into your [skin of player] flesh. After the wave passes she slumps forward to rest on top of your body as cum starts to seep out between your [cock of player] [if cocks of player > 2]dicks[else]dick[end if] and her filled [if cocks of player > 2]holes[else]pussy[end if].";
			[toadd:Facefuckrenewvigour due to your movements, oral makes player orgasm, facefuck climax, oral stops]

	say"The first group of huskies sated for now, and you are given a moment's respite from the orgy[if player is knotted or MaleList is not banned] as they wait for knots to deflate[end if]. Looking to your side, you get a view of what is happening to the tigress."
		if MaleList is not banned: [Alpha husky fuck, beta anal]
			say "Hus";
		else: [Bitch husky scissor,]
			say "Hus";
		[Bitch husky riding breasts]
		say "Hus";
		if MaleList is not banned: [male husky facefuck]
			say "Hus";
		else: [Bitch husky facefuck]
			say "Hus";
			[Tigeress TF into breeding husky]
to say HuskyTigerGangbang:

to say HuskyTigerAlphaWin:

to say SexTiger:

to say SexHornyTiger:

to say TigerSexMarathon:

say "Having given you some time to recover, she props herself up in her love nest and looks over to where you rest. As she combs  can see that the firey lust in her eyes has not dissipated as her hazel irises settle upon you. 'Have you rested enough, little darling? I hope you enjoyed my little show, would you like to come over and join me?'";
say "     ([link]Y[as]y[end link]) - Accept her invitation.";
say "     ([link]N[as]n[end link]) - Decline.";
if Player consents:[Accept]
	say"The tigress leans back and spreads herself out over the bedding that lines the love nest, presenting herself to you in all her glory. Her dark-pink liabia peek out from beneath her orange sized testicles, winking open occasionally to reveal the damp black depths of her cunt. Her pink knotted kitty cock lies unsheathed in the valley between her four palmable teats which are dwarfed by her top two large watermelon sized tits. One hand beckons you over as the other brushes over her barbed penis, traveling upward and caressing her breasts before coming to a stop at one of her eraser thick nipples as she pinches it, causing some kitty milk to leak out."
	say"[SexHornyTiger]"
else:[Decline]
	say"     'Ah, that is too bad, perhaps when you're feeling better.' the tigress remarks with a hint of pity. 'Help yourself to some snacks and drinks in that corner, you're free to stay as long as you want.' she adds, guesturing to the pile of food and drink. You manage to get up on your feet and grab a bottle of water and a can of food. Feeling that you've stayed too long in the tiger's den, you grab your gear and prepare to set off. The tigress, seeing you set out to leave, rises from the love nest. Sexual fluids drip from her crotch, leaving an alabaster trail along the floor as she approaches you. You tense for a moment, prepared to run, thinking the tigress is going to jump you, but she simply stoops down to give you a hug from behind, enveloping your back her in her bosom and nuzzling you on the back of the head with her fluffy cheeks. 'Leaving?' She asks, her deep voice reverbrates your chest. 'Is there somewhere out there safer than my den? Seeing how it's now been trashed up by the huskies, perhaps I could move in with you?'"
	say "     ([link]Y[as]y[end link]) - Invite her to the library.";
	say "     ([link]N[as]n[end link]) - Tell her no.";
	if Player consents:[invite her]
		say:"     After telling her about the library, she replies. 'Hmm... I think I'll stay in my den a little longer, though thank you dear, for your kind thoughts.'' With that she releases you from her hug, pats you on the head, and leaves you on your way out. 'I hope you do come back to visit some time, I'll be waiting.' She calls out after you, as you step out onto the street. Continuing your exploration of the city, you leave the raunchy tigress behind you."[wip bunker npc]

	else:[say no]
		say:"     'Ah then, I'll make do with this den of mine. I hope you do come back to visit some time, I'll be waiting.' With that she releases you from her hug, pats you on the head, and leaves you on your way out. You step out onto the street, continuing your exploration of the city, leaving the raunchy tigress behind you."
	[gain item 1 food 1 bottled water]
	now Resolution of Cornered Tigress is 2;
	now Cornered Tigress is resolved;

to say HelpTigerWin:
	say " 		You've bested the husky, and they lie on the floor, spent. Looking around the fight has been taken out of the huskies, and they scamper off out of the front doors with their tails between their legs, carrying as many of their knocked out comrades as they can. Only the debilitated husky alpha, unconscious husky bitch, the tigress and you remain in the store.";
	say "Satisfied that the huskies won't pose a problem anymore, the tigress turns to you. 'Ah, my darling little hero' She calls out. 'Helping dear ol me to fend off those ruffians.' She turns around, strolling towards the nest of clothing and bends over forward, raising her long striped tail as she rests upon the edge of the mound of clothes, giving you a good look at her big huggable ass. Her dark-pink liabia peeks out from her creamy white fur covered crotch, winking open occasionally to reveal the damp black depths of her cunt. You can clearly see the sideboob that her two watermelon sized tits create as she presses them down against the pile of fabrics, the black stripes that run down their sides disdented along the curve of her breasts. Her raven black ass-length hair drapes over her muscular back and over the sides of her round but taut butt, mixing with her tiger stripes.";
	say"'Come and claim your reward my little hero, come and satisfy your ravenous tigress and feast upon her body.' She calls out to you while looking over her shoulder, her eyes burning with lust and passion."
	say "     ([link]Y[as]y[end link]) - Accept her invitation.";
	say "     ([link]N[as]n[end link]) - Decline.";
	if Player consents:[Accept]
		say"[SexTiger]"
	else:[Decline]
		say"'Not interested dearie? I've been so worked up by the fight and could use some relief.' The tigress' chops droop into a pout. Her hungry eyes soon settle upon the non-ambulatory huskies, and you see a thought come to her.";
		say"[TigerSexMarathon]";

to say HelpTigerLoss:
	if MaleList is not banned:
		say "     You've been bested by the alpha and are thrown to the floor. Having had the fight taken out of you, he takes his position over you and he [StripCrotch] and lines up his cock with your [if Player is female]pussy[else if Player is male]asshole[else]smooth and sexless area of your crotch[end if] prepared to claim you as his. Just before he is able to thrust, a thick white and orange furred hand wraps around his neck as he is is pulled away from you by the tigress.";
	else:
		say "     You've been bested by the husky and are thrown to the floor. Having had the fight taken out of you, the husky bitch climbs on top of you and she [StripCrotch]. The husky bitch gives attention to your [if Player is female]pussy[else if Player is male]asshole[else]smooth and sexless area of your crotch[end if] as she lines her own croth with your face. Her slobering canine spade drips with horny lust and eagerness, spatting your face with fluids as she prepares to go to town on you to mark you as property of the pack. Just before she is able to thrust herself upon your [Face of Player], a loud ROAR stops her in her tracks. As she scrambles off you in a panic you see what has happened, the tigress has managed to grab the husky alpha by the neck and is raising him off the ground.";
	say "'STOP, ALL OF YOU!' The tigress snarls out at the other huskies with her hackles raised, her thick fur spiking up, making her already large form more intimidating . Holding the alpha aloft by the neck, her claws begin to dig into his skin. He squirms in her grasp with his legs flailing helplessly mid air and his hands scrabbling at the grip around his throat in a vain attempt to break free. Seeing their alpha caught in such a state, the assault by the rest of the pack screeches to a halt, all eyes coming to rest upon her commanding form. 'Leave, NOW!' She commands the pack, but they remain frozen in place until one brave, or cowardly husky bitch takes a step away and turns tail to leave. The rest take this cue to scamper off out of the front doors with their tails between their legs, carrying as many of their knocked out comrades as they can, as the tiger woman watches them leave. The alpha husky makes one last token attempt to break free, craning his neck in an attempt to bite some part of her arm, but the fight leaves him as he sees his pack abandon him. Soon, the shop is empty save for the tiger woman, the alpha still being held by his throat, the unconcious husky bitch, and you.";
	say"The tigress tosses the alpha husky into the nest of clothing that adorns the center of the room and he lies there, gasping for air. She walks over to you and squats down, leaning over to inspecting your wounds. 'Are you alright, you poor darling?' She asks you with a look of motherly concern, her deep yet distinctly female voice rumbles your core. You manage a weak nod, the nanites going through your system will get you up and running in no time. 'My little hero, jumping in to help me. Silly you, those ruffians are no match for me. You needn't have worried.' She muses while propping you up against the store counter. She continues to nurse your wounds, unintentionally giving you a close look of her six breasts as she fusses over you. The top pair could be called J Cup, which for her size are as big as watermelons, with areola the size of saucers and eraser thick nipples the size of quarters which leak rivulets of milk. The rest are dwarfed by the top pair, being smaller orange sized C and B cup handholds respectively, each one capped with a small one inch black dome each with a small teat that protrudes from them, glistening with moisture."
	say"'All that fighting has got me really hot and bothered, and you're in no shape to help needy ol me.' The tigress says, satisfied with her inspection of you. She stands, giving you a good look at the fleshy dark-pink petals of her snatch, slick with sweat and feminine juices that have matted the fine creamy fuzz around her crotch between her two shapely muscular thighs. Turning around, she prowls toward the nest in the middle of the store, her striped tail giving your cheek one last caress as you're treated to a view of her huggable ass, partially covered by her long draping black hair, bouncing as she saunters away."
	say "[TigerSexMarathon]";



to say SoloFight:
[WIP: If loss, vanrixie manages to pull husky alpha off player, held by throat scene, scares off rest of pack, knocks alpha unconcious, helps you up and leans you against wall, confirms that you're ok, worked up and horny by fight, proceed to wake up alpha, then TIGERSEXMARATHON scene.]
[if win, vanrixie thanks player, worked up and horny by fight, asks for sex, if player decline or has no penis, TIGERSEXMARATHON scene, if player has penis and accept, SEXHORNYTIGER]
	if MaleList is not banned:
		challenge "Husky Alpha";
	else:
		challenge "Husky Bitch";
	if fightoutcome < 20: [player won]
		say "[HelpTigerWin]";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "[HelpTigerLoss]";
	else if fightoutcome is 30: [fled]
		LineBreak;
		say "     One of the huskies fighting the tigress stumbles into the one you're currently fighting, and you use the distraction to run out the back door as the pack is occupied by the tigeress' might.";
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
		say "[HelpTigerWin]";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "[HelpTigerWin]";
	else if fightoutcome is 30: [fled]
		LineBreak;
		say "     One of the huskies fighting the tigress stumbles into the one you're currently fighting, and you use the distraction to run out the back door as the pack is occupied by the tigeress' might.";
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
		say " 		You've managed to repulse the advances of the husky pack and their alpha, the rest of the pack decide it's best to cut their losses and they grab the tied up tigress, turn tail, and run, leaving the stash of food and drink behind.";
		[gain item 3 food 3 bottled water]
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     Trapped inside the building with so many huskies against you, your strength gives out and you fall to fatigue. Those not busy with the tigress swarm you, pinning you down. The orgy of huskies rub against you, their body heat and that musky, horny scent begins overwhelm your senses";
		if GroupFightCounter < 2: [Defeated 2]
			LineBreak;
			say "[HuskyTigerGroupOrgy]";
		else if GroupFightCounter < 5: [Defeated 3-5]
			LineBreak;
			say "[HuskyTigerGangbang]";
		else: [Lost to Alpha/7th Husky]
			LineBreak;
			if MaleList is not banned:
				say "[HuskyTigerAlphaWin]";
	else if fightoutcome is 30: [fled]
		LineBreak;
		say "     The tigress manages to rip through one off her restrains, distracting your assailants, and you take the chance to flee through the back door of the shop as they tend to their main prize.";
	now Resolution of Cornered Tigress is 12; [Vanrixie captured, player not husky]
	now inasituation is false;



	[Vanrixie description: She's a prime specimen of raw beastial power, adorning a shapely and mature woman's body you could describe as amazonian. Her fur coat is thick and rich coting most of her body with orange with a smattering of bold, black stripes of that give way to soft fluffy creamy off-white fuzz that runs from her lower jaw, over her chest, crotch, and down the insides of her limbs. Her ample bosom pillows from her chest, three pairs of breasts that dwindle in size as you go down each row, starting from a pair of watermelon sized J cups and diminishing to orange sized C and B cup teats below. Each is topped by onyx black areola the size of a dollar coin and nipples the size of dimes that peak out from the fuzzy cream coloured orbs.]
Vanrixie ends here.
