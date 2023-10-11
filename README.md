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
A general overhaul to some of the aspects of survival minecraft that I found annoying or otherwise needing improvement with a focus on automation.
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
*Not included in repository*

#### Reflection
I had many more things planned such as the mentioned Augment Table and Block Placer (and Block Breaker respectively), as well as things like wireless redstone, an overhaul to mining, and more options for cosmetic armor/tool customization.<br>

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
A rewriting of [GConstruct v1](https://github.com/rtaylor034/datapack-archive-unfinished#gconstruct-v1) that followed my personal standards and had a fresh implementation.
### Current State Provides
A dev-system for easily adding crafting recipes.<br>
This one was different from v1 becuase it directly used the vanilla crafting table and not a custom crafter block.

An internal API for adding custom blocks with and without GUI.

An internal API for generating standardized NBT data for custom items and blocks added by this pack.<br>
This would change the color of custom items as well as add a GConstruct" signature to the item's lore/description<br>
Added so users could easily distinguish between vanilla items and pack-added items.

Item Filter from [GConstruct v1](https://github.com/rtaylor034/datapack-archive-unfinished#gconstruct-v1), re-written cleaner and with [SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1).

### Reflection
There is not much to say about the content of the pack itself, but it aided in the development in [SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1) and served to be an example for a pack that would depend upon it.

One specific idea that I kept after development was the standardization of pack-added item NBT data. <br>
I actually implemented a generalized version of this idea into SlimeCore v1 after the fact, and probably will write implementations for it in future 'standard' libraries.

I abandoned this project becuase at the time I just didn't have the time to focus on it and it eventually fell out of relevancy.

## Hard Mobs v2
**namespace: 'hardg'**<br>
**dependencies: 'slime' ([SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1))**<br>
**years in progress: 2022**
### Vision
A reimagining of [HardMobs v1](https://github.com/rtaylor034/datapack-archive-finished#hard-mobs-v1) with more interesting/fairer mechanics, variable stats (opposed to fixed stats in v1), and much more efficient implementation.

### Current State Provides
A completely custom health and damage system for mobs that allows for complete control of all events related to mob health/damage/death.

An API for easily specifying custom stats for mobs.<br>
Includes support for specifying a random variation range for each stat.

A custom death/hurt effect for all changed mobs.

The following changes to mobs:<br>
- Zombie
  - Health: 30-70
  - Movement Speed: .11-.21
  - Knockback Resistance: 20..30%
  - Spawn Reinforcement on hit chance: 30%
  - Follow Range: 50-70
  - Attack Damage: 2-6
  - Will rage upon reaching less than 15 health, gaining permanent speed, resistance, and strength
  - Can always pick up items
- Skeleton
  - Health: 10-16
  - Movement Speed: .25-.28
  - Follow Range: 24-34
  - Will hop backward on every shot, force depending on distance to player
- Creeper
  - Health: 5
  - Movement Speed: .25-.3
  - Follow Range: 25
  - Silent footsteps
  - Explodes 3/4s after priming
  - Immediatly primes if hit and not killed
- Cave Spider
  - Health: 4-6
  - Movement Speed: .41-.46
  - Knockback Resistance: 10-30%
  - Follow Range: 10
  - Attack Damage: 3-4
  - Spawns in twos
- Spider
  - Health: 25-35
  - Movement Speed: .18-.21
  - Knockback Resistance: 50-60%
  - Follow Range: 16
  - Attack Damage: 4
  - *No other changes were finished*

### Reflection
I really liked where this pack was going, and my stat and health APIs are something im pretty proud of and allowed for control that is hardly taken advantage of in the pack's current state.

Unfortunately this pack was abandoned before it was even close to being finished.<br>
I think I got decision paralasis on implementing spiders having a projectile web attack which made me gradually lose interest and eventually fully abandon the project when I heard about introduction of function macros.

It the future, I honestly may come back to work on this pack under its own repository, rewriting portions of it to fit current standards/library(s). 

## SlimeCore v2
**namespace: 'slimec'**<br>
**years in progress: 2023**
### Vision
A native user-and-developer friendly dependency manager aswell as a framework/specification for all packs.<br>
Supports versioning aswell as optional dependencies (referred to as 'supports').

*Pretty much completely unrelated to [SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1), which is just a library.*

### Current State Provides
The flow of the SlimeCore framework is as follows:
1. After completing their pack, the developer runs [getinstallcommands](Packs/SlimeCore%20v2/data/slimec/functions/api/admin/getinstallcommands.mcfunction) providing specified information about their pack, including a download/repo link.
    - Packs specified as dependencies/supports must be present in the developer's world and installed using SlimeCore (via this same process).
2. They copy and paste the generated commands as the very first lines in their pack's LOAD entrypoint function.
  - These generated commands have return values indicating whether the pack is compatible with the user's world when loaded.
3. The developer implements a stopping/safety mechanism for their pack incase their pack should NOT run (missing dependency, etc.), utilizing the generated commands' return values.
3. The pack is uploaded by the dev (via their own means) and downloaded by the user.
4. The user puts the pack in their world's datapack folder and loads it; one of 3 things can happen:
  - The user has all dependencies of the pack: user recieves an 'all good' status message.
  - The user does not have all dependencies of the pack: user recieves download links to the missing dependencies.
  - Ther user has one or more packs that are incompatible with the pack: user recieves a message informing them if the pack conflicts.

More information on specification is provided in the (unfinished) [readme.txt](Packs/SlimeCore%20v2/data/slimec/functions/readme.txt) aswell as the [getinstallcommands](Packs/SlimeCore%20v2/data/slimec/functions/api/admin/getinstallcommands.mcfunction) file.

Also provides a [function](Packs/SlimeCore%20v2/data/slimec/functions/api/admin/showpacks.mcfunction) to show info about all installed packs and their status.
### Reflection
As awesome as this idea was, I decided its probably just better if I want a dependency manager to just write it as an external program, that way it could also be a fully fledged package manager with control over much more.

I also believe I got stumped on the issue of pack execution order; There is no real supported way to control this without asking developers to jump through more hoops than I would like, and without controlling it there could be potiential pack-loading issuess.
