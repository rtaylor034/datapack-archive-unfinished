Archive Description
=====
This repository is an archive for datapacks that are unfinished and are no longer being worked on.

Pack discontinuation is usually due Minecraft update or knowledge that I gain rendering the methods used in the pack (or the pack itself) obsolete/broken.

The descriptions in this archive will be in a subjective format compared to [the finished datapack archive](https://github.com/rtaylor034/datapack-archive-finished); Not I nor anyone else will find use in a comprehensive objective description of unfinished/broken packs, and these descriptions are mainly for myself.

all further text can be assumed to have "IIRC" before it.

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
**dependencies: 'slime' ([SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1))
**years in progress: 2021-2022**
#### Vision
A rewriting of GConstruct v1 that followed my personal standards and had a fresh implementation.
#### Current State
A dev-system for easily adding crafting recipes.<br>
This one was different from v1 becuase it directly used the vanilla crafting table and not a custom crafter block.

An internal API for adding custom blocks with and without GUI.

An internal API for generating standardized NBT data for custom items and blocks added by this pack.<br>
This would change the color of custom items as well as add a GConstruct" signature to the item's lore/description<br>
Added so users could easily distinguish between vanilla items and pack-added items.

Item Filter from [GConstruct v1](https://github.com/rtaylor034/datapack-archive-unfinished#gconstruct-v1), re-written cleaner and with [SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1).

#### Reflection
There is not much to say about the content of the pack itself, but it aided in the development in [SlimeCore v1](https://github.com/rtaylor034/datapack-archive-finished#slimecore-v1) and served to be an example for a pack that would depend upon it.

One specific idea that I kept after development was the standardization of pack-added item NBT data. <br>
I actually implemented a generalized version of this idea into SlimeCore v1 after the fact, and probably will write implementations for it in future 'standard' libraries.

I abandoned this project over time due to updates to the game aswell as shifting focus to other projects.

## Hard Mobs v2
