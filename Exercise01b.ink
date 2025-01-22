/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - *Basic Choices
 - *Knot structure
 - *Recurring choices
 - *Conditionals in descriptions
 - *Conditionals in choices
 
 In the assignment:
 - Add four more knots (and feel free to change any of the example text, this is YOUR story)
 - Add at least one more conditional
*/

-> cave_mouth

==cave_mouth ==
You are at the entrance to a cave. {not torch_pickup:There is a torch on the floor.} The cave extends to the east and west.
+ [Take the east tunnel] ->east_tunnel
+ [Take the west tunnel] ->west_tunnel
*[Pick up the torch] ->torch_pickup

== east_tunnel ==
You are in the east tunnel. It is very dark, you can't see anything.
* {torch_pickup} [Light Torch] -> east_tunnel_lit
+ [Go Back] -> cave_mouth
->END

== west_tunnel ==
You are in the west tunnel. You see iridescent lights shining from ahead.
+[Venture deeper into west tunnel.] -> crystal_cavern
+[Go Back] -> cave_mouth
->END 

=== torch_pickup ===
You now have a torch. May it light the way.
* [Go Back] -> cave_mouth
-> END

== east_tunnel_lit ==
The light of your torch glints off of the stacks of thousands of golden coins in the room. {not sword_pickup:In the middle of the room out of the largest stack of coins there is a long wooden hilt sticking out.}
*[Pull the hilt from the pile] -> sword_pickup
*[Go Back] -> cave_mouth
->END

=== sword_pickup ===
Alright Arthur, pull that sword from the stone. pull, Pull, PULL! You freed the weapon and see that it says something on the blade. "Aranea Interfectorem" is engraved on the steel.
*[Go Back] -> east_tunnel_lit
->END

== crystal_cavern ==
Upon entering the cavern, you look around to see an uncountable amount of multicolored crystals. Several large, red crystals on the right wall catch your attention.
 * {torch_pickup} [Hold up torch to red crystals] -> spider_death
 * {sword_pickup} [Hold up torch AND sword to red crystals] -> spider_win
 + [Go Back] -> west_tunnel
->END

==spider_death==
The light flickers and casts it's light upon the red crystals and the looming shadow behind it. Wait... those aren't crystals. You are staring into the eyes of a massive spider and before you could process it, the beast swallows you whole.
->END

==spider_win==
The beast stares down at you and seems to recognize the weapon you are holding. The spider's eyes flicker quickly from the sword to your face and back again. It's mouth leaks acidic saliva onto the ground, eroding the stone. The spider has clearly not eaten in quite a while and you would more than satisfy it's hunger. In one quick motion, the spider leaps off of the wall, screeching as it flies off the wall to pounce onto you. You turn your hips and point the sword outward at the spider jumping off the wall towards you. In a flash, the long blade punctures the spider and goes fully through its head. The beast lies defeated at your feet, you throw down the sword, and walk out of the cave.
->END
