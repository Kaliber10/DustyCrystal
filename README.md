# Pokémon Dusty Crystal

This is a disassembly of Pokémon Crystal built from the [**pret/pokecrystal project**](pret). Check out that project for more information for the decomp.

## Project
The project Dusty Crystal is about making changes to the HM structure of the original Crystal game.
Instead of requiring a Pokemon to know the HM move, the game requires the Player to have a Pokemon in party that can learn said move, and a related permit.
There is a permit for most field moves in Pokemon Crystal.
Field Move | Permit
---------- | ------
Cut | Cut
Flash | Flash
Strength | Push
Surf | Surf
Rock Smash | Break
Fly | Fly
Waterfall | Falls
Whirlpool | Swirl

In addition to the permit additions, some other QOL changes have been made such as:
 * Removing Trade Evolutions
 * Unlimited use TMs
 * Some Evolution Stones being available at Olivine City Mart
 * Repel Changes to be in line with later generations
 * All 251 Pokemon are available and some are made available earlier in the game

### Evolutions
Pokemon | EVO Method
------- | ----------
Kadabra | Level 35
Graveler | Level 33
Haunter | Level 35
Machoke | Level 39
Onix | Level up with Metal Coat
Scyther | Level up with Metal Coat
Poliwhirl | Level up with High Friendship
Slowpoke | Level up with King's Rock
Seadra | Level 40
Porygon | Use Upgrade

### Wild Pokemon
Pokemon | Location
------- | --------
Houndour | Route 34, 35 (Night)
Murkrow | National Park, Route 37 (Night)
Misdreavus | Burned Tower, Route 42, 43 (Night)
Slugma | Burned Tower
Larvitar | Route 45
Bulbasaur | Gift in Kanto
Charmander | Gift in Kanto
Squirtle | Gift in Kanto
Vulpix | Route 36, 37 (Night)
Mareep | Route 32, 42
Flaaffy | Route 42, 43
Girafarig | Route 43
Remoraid | Route 44 (Fishing)
Pichu | Ilex Forest, National Park (Morning)
Igglybuff | Route 34
Cleffa | National Park, Night
Omanyte | Gift in Kanto
Kabuto | Gift in Kanto
Mewtwo | Kanto
Celebi | Event
Mew | Kanto
Articuno | Kanto
Zapdos | Kanto
Moltres | Kanto
Johto Starters | Gift from Profs


## Game Design Theory
The theory of implementing permits is to seperate exploration and battle in Pokemon. With the HM system, the player has to adjust their battle moves to explore the overworld.
There are 3 Water Type HM moves in Johto games. That requires either spreading out those 3 Water Type moves to different Pokemon, having one Pokemon have all the moves, or
using a Pokemon specifically to use field moves. No matter what, that affects the Player's combat capabilitys. In Option 1 or 2, you may have moves on a Pokemon you don't
plan on using. In Option 3, you have to use a party slot for fodder that is not expected to be used in battle. No matter the option, the player has to make a sacrifice in
battle capability for exploration and story progression. 

However, using Field Moves for exploration and story progression can help expand the world the Player is in. It can provide rewards for the Player going out of the way. Maybe they
find new Pokemon, TMs, or Items. Seen in Metroidvania style games, teasing the Player by showing them a path they is inaccessible at first, until they get a new ability can be fun.
Using Field Moves can also provide good story obstacles to go in line with the Metroidvania style. The Player can't cross a body of water until they can use Surf. Once the player
uses Surf, they can make the connection to previous areas where they were unable to cross the body of water.

With those two things in mind, adding Permits is an attempt to prevent sacrifices to Players combat capabilities, while still encouraging the Field Move exploration and obstacles.
It doesn't completely prevent sacrifices however, as a Pokemon in the party still needs to be able to learn the required Field Move. However this is more forgiving than the previous
system.



It builds the following ROMs:

- Pokemon - Crystal Version (UE) (V1.0) [C][!].gbc `sha1: f4cd194bdee0d04ca4eac29e09b8e4e9d818c133`
- Pokemon - Crystal Version (UE) (V1.1) [C][!].gbc `sha1: f2f52230b536214ef7c9924f483392993e226cfb`
- Pokemon - Crystal Version (A) [C][!].gbc `sha1: a0fc810f1d4e124434f7be2c989ab5b5892ddf36`
- CRYSTAL_ps3_010328d.bin `sha1: c60d57a24bbe8ecf7cba54ab3f90669f97bd330d`
- CRYSTAL_ps3_us_revise_010710d.bin `sha1: 391ae86b1d5a26db712ffe6c28bbf2a1f804c3c4`

To set up the repository, see [INSTALL.md](INSTALL.md).


## See also

- [**PokeCrystal Documentation**][docs]
- [**PokeCrystal Wiki**][wiki] (includes [tutorials][tutorials])

[pret]:https://github.com/pret/pokecrystal
[docs]: https://pret.github.io/pokecrystal/
[wiki]: https://github.com/pret/pokecrystal/wiki
[tutorials]: https://github.com/pret/pokecrystal/wiki/Tutorials
