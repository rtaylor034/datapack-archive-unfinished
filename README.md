Archive Description
=====
This repository is an archive for datapacks that are unfinished and are no longer being worked on.

Pack discontinuation is usually due Minecraft update or knowledge that I gain rendering the methods used in the pack (or the pack itself) obsolete/broken.

The descriptions in this archive will be in a subjective format compared to [the finished datapack archive](https://github.com/rtaylor034/datapack-archive-finished)

all further statements can be assumed to have "IIRC" before it.

Packs
=====

## GConstruct v1
**namespace: 'gconstruct'**<br>
**dependencies: 'slime' ([SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1))**<br>
**years in progress: 2020-2021**
#### Vision
A general overhaul to some of the aspects of survival minecraft that I felt could use improvement, with a focus on automation.
#### Current State
The following blocks:
- Constuctor
  - Made by dropping a piston ontop of a crafting table
  - Used to craft everything GConstruct.
- Teleporter
  - Has a single slot for an item stack.
  - When a player crouches on a teleporter with an item stack in it, they are teleported to the nearest teleporter that contained the exact same item stack.
- SIES Device *(Single Item Ender Storage)*
  - Can store an infinite amount of a single item.
- Item Filter
  - Has a single slot for an item.
  - Moves all items above the filter that match the given item to below the filter (like a downward facing dispenser)
  - Works on both item entities as well as items inside of container blocks directly above the filter.

A raytracing system to 'place' the custom blocks (custom blocks were retextured carrot_on_a_stick's).

A dev-system for easily add more constructor recipes.

The non-functional dummy block implementations for an Augment Table and a Block Placer.

A resource pack to retexture custom blocks/items and GUI items.<br>
*(Not included in repository)*

#### Reflection
I had many more things planned such as the aformentioned Augment Table and Block Placer (and Block Breaker respectively), as well as things like wireless redstone, an overhaul to mining, and more options for cosmetic armor/tool customization.<br>

The Augment Table was going to introduce "augments" which were like enchantments, taking an undecided non-xp resource as cost, and providing extra utility to gear.<br>
Auto-smelt pickaxe, x-ray helmet, slow-fall armor, would be the kinds of things to be augments.

At the time I was very proud of my implementations of the Teleporter and SIES Device; <br>
implementing them was a dive into 'advanced' NBT storage data manipulation that I had never used or seen before, and it genuinely was a big shift in the way I thought about implementing things in mcfunction.

The Item Filter implementation was also a big personal accomplishment, albiet not as big as the SIES or Teleporter.<br>
I utilized what I learned from implementing the Teleporter to create a recursive function that searched through the items of a container and started to realize the capabilities of recursive fuctions in the context of mcfunction.<br>
*I wrote the array functions for [SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1) after learning from the Item Filter implementation.*

I abandoned this project over time due to updates to the game aswell as shifting focus to other projects.

## GConstruct v2
**namespace: 'gconstruct'**<br>
**dependencies: 'slime' ([SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1))**<br>
**years in progress: 2021-2022**
### Vision
A rewriting of [GConstruct v1](https://github.com/rtaylor034/datapack-archive-unfinished#gconstruct-v1) that followed my personal standards and fresh implementations.
### Current State Provides
A dev-system for easily adding crafting recipes.<br>
*This was different from [GConstruct v1](https://github.com/rtaylor034/datapack-archive-unfinished#gconstruct-v1) becuase it used the vanilla crafting table directly and not a custom crafter block.*

An internal API for adding custom blocks with and without GUI.

An internal API for generating standardized NBT data for custom items and blocks added by this pack.<br>
This would change the color of custom items as well as add a GConstruct" signature to the item's lore/description.<br>
*Was added so users could easily distinguish between vanilla items and pack-added items.*

Item Filter from [GConstruct v1](https://github.com/rtaylor034/datapack-archive-unfinished#gconstruct-v1), re-written cleaner and with [SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1).

### Reflection
There is not much to say about the content of the pack itself that was not said in [GConstruct v1](https://github.com/rtaylor034/datapack-archive-unfinished#gconstruct-v1).

Development of this pack aided in the development in [SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1), serving as an example for a pack that would depend on it.

One specific idea that I kept after development was the standardization of pack-added item NBT data. <br>
I added a general implementation of this idea into [SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1) after the fact, and probably will include it in future 'standard' libraries.

I abandoned this project becuase at the time I just didn't have the time to focus on it and it eventually fell out of relevancy.

## Hard Mobs v2
**namespace: 'hardg'**<br>
**dependencies: 'slime' ([SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1))**<br>
**years in progress: 2022**
### Vision
A reimagining of [HardMobs v1](https://github.com/rtaylor034/datapack-archive-finished#hard-mobs-v1) with more interesting/fairer mechanics, variable stats (opposed to fixed stats in v1), and much more efficient implementations.

### Current State Provides
A completely custom health and damage system for mobs, allowing for complete control of all events related to mob health/damage/death.

An API for setting custom stats for mobs, aswell as random variance for those stats.<br>

The following changes to mobs:<br>
- Zombie
  - Health: 30-70
  - Movement Speed: 0.11-0.21
  - Knockback Resistance: 20..30%
  - Spawn Reinforcement on hit chance: 30%
  - Follow Range: 50-70
  - Attack Damage: 2-6
  - Upon dropping below 15 health, gains permanent speed, resistance, and strength
  - Can always pick up items
- Skeleton
  - Health: 10-16
  - Movement Speed: 0.25-0.28
  - Follow Range: 24-34
  - Will hop backward on every shot, force depending on distance to player
- Creeper
  - Health: 5
  - Movement Speed: 0.25-0.3
  - Follow Range: 25
  - Silent footsteps
  - Explodes 0.75s after priming
  - Immediatly primes if hit and not killed
- Cave Spider
  - Health: 4-6
  - Movement Speed: 0.41-0.46
  - Knockback Resistance: 10-30%
  - Follow Range: 10
  - Attack Damage: 3-4
  - Spawns in twos
- Spider
  - Health: 25-35
  - Movement Speed: 0.18-0.21
  - Knockback Resistance: 50-60%
  - Follow Range: 16
  - Attack Damage: 4
  - *No other changes were finished*

A custom death/hurt effect for all changed mobs.

### Reflection
I really liked where this pack was going, and the stat and health APIs are something im pretty proud of. The full power of the APIs are hardly taken advantage of in the pack's current state.

Unfortunately this pack was abandoned before it was even close to being finished.<br>
I think I got decision paralasis on how to add spiders having a projectile web attack, which made me gradually lose interest and eventually fully abandon the project when I heard about introduction of function macros.

In the future, I honestly may come back to work on this pack under its own repository, rewriting portions of it to fit current standards/library(s). 

## SlimeCore v2
**namespace: 'slimec'**<br>
**years in progress: 2023**
### Vision
A native, easy to use dependency manager aswell as a framework/specification for all packs.<br>
Supports versioning aswell as optional dependencies (referred to as 'supports').

*Pretty much completely unrelated to [SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1).*

### Current State Provides
The procedure of utilizing this pack is as follows:
1. `Developer` develops `Pack`; Adds `SlimeCore v2` to their world at any point.
2. After completing `Pack`, `Developer` runs [getinstallcommands](Packs/SlimeCore%20v2/data/slimec/functions/api/admin/getinstallcommands.mcfunction) providing specified information about `Pack`, including dependencies, supports, and download/repo link.
    - Packs specified as dependencies/supports must be present in the `Developer`'s world and installed using `SlimeCore v2`. (i.e. Developers of specified dependencies/supports followed this very process).
3. `Developer` copy and pastes the commands generated by [getinstallcommands](Packs/SlimeCore%20v2/data/slimec/functions/api/admin/getinstallcommands.mcfunction) before the first lines in `Pack`'s LOAD entrypoint function.
    - Generated commands have return values indicating whether `Pack` is compatible with a user's world upon runtime. It is `Developer`'s responsibility to handle these values.
4. `Pack` is uploaded by `Developer` (via their own means) and downloaded by `User`.
5. `User` puts `Pack` in their world's datapack folder and loads it; One of 3 things can happen:
    - `User`'s world has all dependencies of `Pack`: `User` recieves an 'all good' status message.
    - `User`'s world does not have all dependencies of `Pack`: `User` recieves download links to the missing dependencies.
    - `User`'s world has one or more packs that are incompatible with `Pack`: `User` recieves a message informing them of the pack conflicts.

*More information on specification is provided in (unfinished) [readme.txt](Packs/SlimeCore%20v2/data/slimec/functions/readme.txt) aswell as [getinstallcommands](Packs/SlimeCore%20v2/data/slimec/functions/api/admin/getinstallcommands.mcfunction) file.*

Provides a [function](Packs/SlimeCore%20v2/data/slimec/functions/api/admin/showpacks.mcfunction) to show info about installed packs and their status.
### Reflection

As awesome as this idea was, I started to realize that it would probably be better to write a package manager as an external program.

I believe the nail in the coffin was when I got stumped on the issue of pack execution order. I could not find a way to control execution order without complicating the process for developers more than I would like.<br>
Without controlling execution order there would be fundamental pack recognition issues during dependency checking.

## XP Health
**namespace: xphealth**<br>
**dependencies: 'slime' ([SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1))**<br>
### Vision
A for fun pack that the player's XP bar into their health bar, slowly draining over time.

The goal was to create fast-paced gameplay that forced the player to always be moving and thinking of their next move.

### Current State Provides
Players start with 180 'health', indicated by the level on their XP bar.

This value decreases by 1 every second, meaning your health was essentially how many more seconds you had to live.

Picking up XP is the only way to increase this value.
*Default conversion rate is 7 health per 1 XP*

Taking damage reduces your health by 5x the normal amount.

The player's hunger bar equalizes at 7/20 (just enough to sprint).<br>
If the player chooses to eat, they are given hunger 1 until their hunger bar is back at 7, but their health will drain at half the rate while the value is greater than 7.

If the player exceeds 180 health, they go into "overload".<br>
When overloaded, the player gains speed 2 and their health decays twice as fast until their health drops back to 180.

Any health exceeding 300 is converted into lapis lazuli.<br>
*Default conversion rate is 50 health per 1 lapis lazuli.*<br>
*Mined lapis lazuli ore will give "crushed lapis lazuli", which is only usable as dye*

Upon reaching 0 health, the player is put into a "dying" state for 5 seconds.<br>
While dying:
- You are slowed and lose all hunger.
- You cannot mine blocks or deal damage.
- XP orbs emit particles only visible to you.
- If you pick up any XP, gain it back as health and exit the dying state.
  - After exiting you still cannot deal damage or mine blocks for 15 seconds.
- If no XP is picked up within 5 seconds, you die.

Many of the mentioned numerical values can be user-modified via [controls](Packs/XP%20Health/data/xphealth/functions/controls.mcfunction)

### Reflection
This pack was made just for fun, I thought it would make for some interesting gameplay (which it did from my experience).

The only reason I consider this pack "unfinished" is becuase there are a few unnacceptable bugs, mainly having to do with the dying state.<br>

I don't really care to fix these bugs or make this pack more stable becuase it was just a quick experiment with game design and less focused around programming.

Worlds
=====
