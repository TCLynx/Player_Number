This Pack assigns a player number to each player.  It also tags the teacher.
If the teacher only area has the teacher tag added as a selector to the command in the command block, it will keep students out.
tp @p[tag=teacher] 337 2 77

If the Teleports to the build plates have the score selector added to them, then ONLY the player with that score will be able to teleport there.
as such where # is the platform number.  
tp @p[scores={Number=#}] 498 35 143
Please leave the coordinates as they are in each of the command blocks and only add the selector [scores={Number=#}] after the @p