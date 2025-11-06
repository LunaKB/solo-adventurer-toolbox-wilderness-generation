-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema sat_wilderness_generation
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `sat_wilderness_generation` ;

-- -----------------------------------------------------
-- Schema sat_wilderness_generation
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `sat_wilderness_generation` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `sat_wilderness_generation` ;

-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`exploration_clue`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`exploration_clue` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`exploration_clue` (
  `id` INT NOT NULL,
  `description` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO `sat_wilderness_generation`.`exploration_clue` (id, description) VALUES
    (1, '1d4 corpses, beast'),
    (2, '1d4 corpses, humanoid'),
    (3, 'Severed limb'),
    (4, 'Severed extremity'),
    (5, 'Holes dug in the ground in a variety of locations'),
    (6, 'Strange odour on the air'),
    (7, 'You find a bizarre and haunting monument, such as a totem made of dead bodies, or something equally spooky.'),
    (8, 'A crude sign is staked in the ground, with the head of a humanoid of the same species as yourself atop it. In any language, the words ”Warning! Turn back or die!” are garishly scrawled on the piece of wood that forms the sign.'),
    (9, 'Tracks of the creature you are currently seeking'),
    (10, 'You meet an NPC who saw the creature or target earlier.'),
    (11, 'You meet an NPC who got into an altercation with the target. Roll d4. 1-2: They wounded it and were wounded by it. 3-4: They were savaged fled for their life.'),
    (12, 'A burnt area of ground, like a fireball or explosion happened here.'),
    (13, 'Injured beast.'),
    (14, 'Droppings from some strange animal'),
    (15, 'Abandoned campsite'),
    (16, 'Adventurer’s belongings, spattered with blood'),
    (17, 'A noose hanging from a tree, but no body'),
    (18, 'A previously triggered trap'),
    (19, 'Wagon tracks leading off the current path you are on'),
    (20, 'Sword marks in the trunk of a tree'),
    (21, 'Hastily scribbled marks in the ground / on the trunk of a tree… someone trying to leave directions? Or is it a warning? Are there words? If so, in what language?'),
    (22, 'Scrawled on a rock: ''I’ve found them. Keep going east, you’ll reach me eventually.'''),
    (23, 'A stone with ancient runes inscribed'),
    (24, 'A small ruins, as of a shrine or small temple. Interesting inscriptions/graffiti.'),
    (25, 'Broken weapon'),
    (26, 'Ancient coin'),
    (27, 'A halfling / gnome-sized cloak but the bottom edge is ripped and torn'),
    (28, 'An incomplete journal. What’s in it? The entries stop abruptly'),
    (29, 'A map of a labyrinth'),
    (30, 'A set of parchment and 3 ink bottles. All the red is used up.'),
    (31, 'A wig of human hair, any colour'),
    (32, 'A discarded pipe smelling strongly of pipeweed, recently used'),
    (33, 'Multiple broken branches - it appears someone or something charged recklessly through here. If not in forest, then you notice large areas of earth churned up.'),
    (34, 'A poster that looks like it was ripped from a wall of a nearby town. Wanted poster? Adventurers wanted? Perhaps a quest source.'),
    (35, 'A ring of keys, apparently goblin or orcish in origin'),
    (36, 'An empty, but ornate, jewellery box.'),
    (37, 'A bag of provisions, ripped and scattered around'),
    (38, 'A discarded boot'),
    (39, 'A child’s doll'),
    (40, 'A gold bar (approximately 100 gp in worth) with the words ''Imperial Buillion'' embossed in the metal.'),
    (41, 'An iron amulet in the shape of a snake eating itself'),
    (42, 'A silver key on a leather thong.'),
    (43, 'A jar that appears empty, but the lid is jammed shut and cannot be opened, no matter how strong you are. Is it shut magically?'),
    (44, 'A tree with the bark worn through on one side.'),
    (45, 'A large clump of fur from some kind of creature.'),
    (46, 'What appears to be a large snakeskin. Something has shed a layer here'),
    (47, 'A disturbingly large pile of poop'),
    (48, 'This area is scattered with bones from many different creatures'),
    (49, 'A campfire, smouldering, large rodent on a spit which is burnt to a crisp, inedible'),
    (50, 'A compass, but the glass is smashed'),
    (51, 'A rock with a target on it, surrounded by a mass of sling stones.'),
    (52, 'Large quantity of blood spattered over the ground / leaves in this area'),
    (53, 'The remnants of a naturally-constructed bivouac'),
    (54, 'From far off, an eerie howling noise.'),
    (55, 'Scrawled on a rock in red paint, crudely written in Common: ''Stop! Go no further if you value your life!!'''),
    (56, 'Several empty wineskins and discarded goblets'),
    (57, '1d10 arrows, high quality, all sticking out of the ground in this area'),
    (58, 'Invitation to an event in a nearby town'),
    (59, 'A small onyx figurine of a beast of some kind (player’s choice)'),
    (60, 'A grove of large mushrooms, but most of them have been trampled or destroyed'),
    (61, 'Several plans, as if from a cart or a boat, their ends burned.'),
    (62, 'A locket with a picture of a humanoid female inside'),
    (63, 'A perfectly spherical stone. Is it naturally occurring? Nonetheless, it definitely catches your attention.'),
    (64, 'A book on learning the language Undercommon'),
    (65, 'A wooden token bearing the symbol of a powerful organisation or faction'),
    (66, 'Trailblazing marks.'),
    (67, 'A vial full of some sort of tree sap. On inspection, you see that it has been collected from a particular species of tree that grows in this area (although not commonly)'),
    (68, 'Black-fletched crossbow bolts sticking out of a tree trunk'),
    (69, 'A child-sized sword.'),
    (70, 'A small pouch of seeds'),
    (71, 'An area of pressed-down grass, as if a humanoid had been lying here'),
    (72, 'An empty, abandoned tent'),
    (73, 'A rune, spelt out in stones on the ground'),
    (74, 'A jar of sweets, half empty'),
    (75, 'A jawbone from a creature of some kind'),
    (76, 'The broken blade of a sword'),
    (77, 'Sword marks in a tree trunk'),
    (78, 'A belt pouch full of silver coins from an unknown land'),
    (79, 'About a mile ahead, you see vultures circling in the air'),
    (80, 'A freshly dug grave, empty'),
    (81, 'Funeral pyre. Whatever was burnt here is now just ash'),
    (82, 'Overturned cart. No-one here, just some random belongings.'),
    (83, 'A wolf (or other sometimes-domesticated beast) starts to follow you. It looks forlorn, as if it has lost its master.'),
    (84, 'A grove of fruit trees'),
    (85, 'In the distance, the sound of a boulder rolling through forest, cracking trees etc'),
    (86, 'Smoke rising about two miles ahead. A lot of smoke, from a specific point'),
    (87, 'A medium sized tree felled and placed over a river which is in full flow.'),
    (88, 'Picked mushrooms lying on a stump to dry'),
    (89, 'Picked moss arranged in one area, possibly as a bed'),
    (90, 'Huge spider web with humanoid belongings stuck to it'),
    (91, 'Disembodied voices float on the breeze… what are they saying?'),
    (92, 'If by water, you see the surface stir. If on land, you feel vibrations beneath your feet.'),
    (93, 'About 500 yards ahead, a flock of birds rises suddenly into the air as if something had disturbed them'),
    (94, '1d4 corpses, all without heads'),
    (95, 'Large boot tracks in mud'),
    (96, 'Abandoned shack'),
    (97, 'Lost / traumatised humanoid child who doesn’t speak a word'),
    (98, 'Empty cave, recently inhabited'),
    (99, 'A bridge, either washed out or deliberately destroyed / burnt'),
    (100, 'Magic item! Relevant to quest. Roll once on table (d4) 1-2: A, 3-4: B');


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`exploration_discovery`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`exploration_discovery` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`exploration_discovery` (
  `id` INT NOT NULL,
  `description` VARCHAR(1000) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_clearfelled_area`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_clearfelled_area` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_clearfelled_area` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_clearing`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_clearing` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_clearing` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_gully`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_gully` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_gully` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_hills`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_hills` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_hills` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_lake`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_lake` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_lake` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_landscape_feature`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_landscape_feature` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_landscape_feature` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO `sat_wilderness_generation`.`minor_landscape_feature` (id, description) VALUES
    (1, 'Sinkhole'),
    (2, 'Crevasse caused by earthquake'),
    (3, 'Geiser / Hot Springs'),
    (4, 'Landslide'),
    (5, 'Waterfall'),
    (6, 'Cave Forest'),
    (7, 'Blowhole (if not coastal, roll again)'),
    (8, 'Volcano'),
    (9, 'Interesting rock formations (caused by lava flow?)'),
    (10, 'Madmade tunnel'),
    (11, 'Crater (meteor?)'),
    (12, 'Tar Pit'),
    (13, 'River source / spring / river going underground'),
    (14, 'Quicksand (Perception check to notice?)'),
    (15, 'Skull / facelike formation of rocks.'),
    (16, 'Creature-shaped rocks. Basilisk victim?'),
    (17, 'Petrified forest'),
    (18, 'A lone pillar with runes'),
    (19, 'Hanging tree, with noose'),
    (20, '1d4 cairns of stone, arranged symetrically');

-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_monuments`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_monuments` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_monuments` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NOT NULL,
  `notes` TEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT INTO `sat_wilderness_generation`.`minor_monuments` (id, description, notes) VALUES
    (1, 'Standing stones / Obelisks / Large stone carvings', 'Q/A to discern more. Might have runes inscribed. 10% NPC.'),
    (2, 'Charcoal burning mound', 'Q/A rolls to determine what is being burnt here? Orcs?'),
    (3, 'Tribal totem pole', '25% easy encounter. Q/A to determine who is nearby, if anyone.'),
    (4, 'Small Shrine', 'Q/A to determine god it is dedicated to, and also whether it is currently attended'),
    (5, 'Sign to show nearby settlements', '50% chance at least one of them isn’t on the map. Clue 10%'),
    (6, 'Cliff face with carved faces of gods', 'Q/A to determine god it is dedicated to, and also whether it is currently attended'),
    (7, 'Statue of ancient leader', 'Q/A / History rolls to discern more'),
    (8, 'Statue of famous adventurer', 'Anything hidden here?'),
    (9, 'Significant / tribally important tree or other natural feature.', '70% guarded by tribespeople / barbarians'),
    (10, 'Ancient Stone Pillars', 'Part of ruins? Q/A / History rolls to discern more'),
    (11, 'Ruined stone walls', 'Q/A / History rolls to discern more'),
    (12, 'Altar / Pedestal', 'Sacrificial? 50% stained with blood.'),
    (13, 'Large, scattered boulders of interesting shapes', 'Q/A / Nature rolls to discern more'),
    (14, 'Single tomb of notable identity', '25% already looted'),
    (15, 'Mountain of bones', 'Q/A / Nature rolls to discern more. Clue 25%'),
    (16, 'Ancient battlefield, with monument in remembrance of the dead', 'Q/A / History rolls to discern more. Clue 25%'),
    (17, 'Burnt down building', 'Clue 50%'),
    (18, 'Termite or other insect mound', 'Nature check to discern more. 50% easy encounter (with some insect like being perhaps?)'),
    (19, 'Ley lines', 'Q/A to discern more, like who drew them here and how long ago?'),
    (20, 'A lone archway in the middle of nowhere!', 'Portal?');

-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_mountains`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_mountains` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_mountains` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_oasis`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_oasis` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_oasis` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_rocky_outcrop`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_rocky_outcrop` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_rocky_outcrop` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_settlement`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_settlement` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_settlement` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_structure`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_structure` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_structure` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_swamp`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_swamp` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_swamp` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_waterway`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_waterway` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_waterway` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`minor_wood`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`minor_wood` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`minor_wood` (
  `id` INT NOT NULL,
  `description` VARCHAR(255) NULL DEFAULT NULL,
  `notes` VARCHAR(500) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`overarching_arctic`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`overarching_arctic` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`overarching_arctic` (
  `id` INT NOT NULL,
  `feature` VARCHAR(255) NULL DEFAULT NULL,
  `size` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`overarching_coastal`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`overarching_coastal` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`overarching_coastal` (
  `id` INT NOT NULL,
  `feature` VARCHAR(255) NULL DEFAULT NULL,
  `size` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`overarching_desert`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`overarching_desert` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`overarching_desert` (
  `id` INT NOT NULL,
  `feature` VARCHAR(255) NULL DEFAULT NULL,
  `size` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`overarching_forest`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`overarching_forest` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`overarching_forest` (
  `id` INT NOT NULL,
  `feature` VARCHAR(255) NULL DEFAULT NULL,
  `size` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`overarching_grassland`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`overarching_grassland` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`overarching_grassland` (
  `id` INT NOT NULL,
  `feature` VARCHAR(255) NULL DEFAULT NULL,
  `size` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`overarching_hill`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`overarching_hill` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`overarching_hill` (
  `id` INT NOT NULL,
  `feature` VARCHAR(255) NULL DEFAULT NULL,
  `size` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`overarching_mountain`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`overarching_mountain` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`overarching_mountain` (
  `id` INT NOT NULL,
  `feature` VARCHAR(255) NULL DEFAULT NULL,
  `size` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `sat_wilderness_generation`.`overarching_swamp`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `sat_wilderness_generation`.`overarching_swamp` ;

CREATE TABLE IF NOT EXISTS `sat_wilderness_generation`.`overarching_swamp` (
  `id` INT NOT NULL,
  `feature` VARCHAR(255) NULL DEFAULT NULL,
  `size` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

USE `sat_wilderness_generation` ;

-- -----------------------------------------------------
-- procedure fill_exploration_discovery
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_exploration_discovery`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_exploration_discovery`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO exploration_discovery (id, description)
        VALUES (
            i,
            CASE
                WHEN i <= 26 THEN 'This area contains more proof of the rumours / leads you are investigating. Roll once on Clue Table (this chapter), or on Chapter 14 tables, then roll again on this table.'
                WHEN i <= 53 THEN 'You find the beast / monster / cause of the problem you have been looking for. Roll d6. 1-3: Medium Encounter. 4-5: Hard Encounter. 6: Deadly Encounter. (Use Chapter 16). 50% chance you haven’t been noticed. On a successful stealth roll (DC=Creature’s passive perception), attack with surprise.'
                WHEN i <= 80 THEN 'You find the beast / monster / cause of the problem you have been looking for, and an associated structure or dwelling, such as a lair or ruins that they inhabit. (You could go to Chapter 8: Dungeon Generation from here) When you find them, roll d6. 1-3: Medium Encounter. 4-5: Hard Encounter. 6: Deadly Encounter. (Use Chapter 16).'
                WHEN i <= 82 THEN 'You find a lair or dwelling, but it appears currently uninhabited. Perhaps the creature you seek is away causing mischief right now!'
                WHEN i <= 84 THEN 'Stealth check from all your PCs. If one check is lower than 14, then the creature has noticed your PCs’ arrival and is stalking them, preparing an attack. They will probably be surprised!'
                WHEN i <= 86 THEN 'This area is not what it was rumoured to be. Make a d100 roll. If it is 25 or below, roll on the Wilderness Encounter Table. After resolving the encounter, continue exploring the area and make an investigation check, DC 15. If successful, roll again on this table. If unsuccessful, make another d100 roll (as above).'
                WHEN i <= 88 THEN 'You find another party of adventurers investigating the same rumours / leads you are investigating. They are (d4) 1: Hostile, 2-4: Friendly. There are 1d4 members in the party. Roll on NPC tables (skip professions and roll on class tables instead) to determine who they are, then roll again on this table.'
                WHEN i <= 90 THEN 'You find a dead party of 1d4 adventurers (use NPC tables if you wish). They have been hacked / maimed savagely, and it appears all their weapons and belongings have been stolen.'
                WHEN i <= 92 THEN 'You find a dead party of 1d4 adventurers (use NPC tables if you wish).'
                WHEN i <= 94 THEN 'You meet an NPC, who gives you details of another, far more important quest related to this one. Go to Chapter 7: Quest Generation to find out what it is.'
                WHEN i <= 96 THEN 'You discover that the creature or target you seek has discovered that something is tracking them, and has departed the area. You could pursue (further rolls on Wilderness generation tables, above), or you could declare the matter solved (10% chance they return once you are gone).'
                WHEN i <= 98 THEN 'A mysterious NPC, a lone adventurer, is present here, and has resolved the issue. They give proof too (carcass / spoils of completed quest). They tell you that you may claim the fame of completing this, as long as you accompany them.'
                WHEN i = 99 THEN 'The target or creature you already seek is dead (possibly by another party of adventurers, who you may meet nearby), but on investigation you discover that the creature did not deserve to die and were probably innocent or were just minding their own business. Whoever gave you these rumours or set you on this quest is either deluded, or else deliberately deceiving you for some reason.'
                ELSE 'The rumour turns out to be some sort of devious trap to lure your PCs into an ambush! Level appropriate deadly encounter.'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_exploration_discovery();

-- -----------------------------------------------------
-- procedure fill_minor_clearfelled_area
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_clearfelled_area`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_clearfelled_area`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_clearfelled_area (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 50 THEN 'Clearfelled area'
                WHEN i <= 60 THEN 'Army cutting down trees to build siege weapons. 40% human'
                WHEN i <= 70 THEN 'This clear area is the result of a forest fire, not active clearfelling.'
                WHEN i <= 80 THEN 'Clearfelled area contains an unmarked settlement'
                WHEN i <= 90 THEN 'Area being clearfelled presently. Workers are 70% human. Contracted by nearby large settlement.'
                ELSE 'Area being clearfelled presently. Workers are 70% human. Timber will go to building new Unmarked Settlement'
            END,
            CASE
                WHEN i <= 50 THEN 'Large section of forest removed for local industry'
                WHEN i <= 60 THEN '50% army still there'
                WHEN i <= 70 THEN 'DC 12 nature check to discern cause. Q/A rolls to determine cause.'
                WHEN i <= 80 THEN 'Roll on Unmarked Settlement Table.'
                WHEN i <= 90 THEN 'Q/A to find out more.'
                ELSE 'Roll on Unmarked Settlement table. Workers camp nearby'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_clearfelled_area();

-- -----------------------------------------------------
-- procedure fill_minor_clearing
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_clearing`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_clearing`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_clearing (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 52 THEN 'Natural clearing, devoid of trees'
                WHEN i <= 58 THEN 'Druid circle containing standing stones'
                WHEN i <= 65 THEN 'Totems and other sinister symbols, possibly dark rituals take place here.'
                WHEN i <= 71 THEN 'Clearing contains a pond, watering hole for local wildlife'
                WHEN i <= 77 THEN 'Abandoned campsite.'
                WHEN i <= 83 THEN 'Active campsite'
                WHEN i <= 89 THEN 'Magic at work here - some sort of dimensional rift?'
                WHEN i <= 95 THEN 'Structure present in the clearing.'
                WHEN i <= 98 THEN 'Treant meeting currently in progress'
                ELSE 'Magical glade. A mage or some other magic user (or fey creatures) has a residence here.'
            END,
            CASE
                WHEN i <= 52 THEN 'Is something watching you from the trees? Q/A roll. Do you notice it?'
                WHEN i <= 58 THEN 'Q/A roll to see what you can discern. Clue 20%'
                WHEN i <= 65 THEN 'Q/A rolls, medium encounter 10%. Clue 40%'
                WHEN i <= 71 THEN 'Easy encounter(beast) 20%. If left alone it will probably just take a drink and leave.'
                WHEN i <= 77 THEN 'Q/A rolls, investigation rolls to find out more. Clue 50%'
                WHEN i <= 83 THEN 'Perception check, DC 8, to determine whether you hear the inhabitants before seeing them. 50% friendly.'
                WHEN i <= 89 THEN 'Q/A rolls to see what’s happening here!'
                WHEN i <= 95 THEN 'Roll on Structures table.'
                WHEN i <= 98 THEN 'Q/A / Charisma rolls to interact?'
                ELSE '50% friendly. Q/A rolls to determine interaction. Perhaps they have a quest for you!'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_clearing();

-- -----------------------------------------------------
-- procedure fill_minor_gully
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_gully`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_gully`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_gully (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 50 THEN 'Standard gully'
                WHEN i <= 57 THEN 'Gully with a waterway'
                WHEN i <= 64 THEN 'Rocky gully containing caves'
                WHEN i <= 71 THEN 'Gully that looks as if recently caused, perhaps by an earthquake or other natural disaster… or by a huge creature perhaps!'
                WHEN i <= 78 THEN 'Dry gully containing the bones of many animals. A graveyard of sorts'
                WHEN i <= 85 THEN 'Heavily wooded gully, an oasis for a particular colony of creatures'
                WHEN i <= 92 THEN 'Gully with evidence of mining - an abandoned mining operation'
                ELSE 'Magical wooded gully. A druid, or wizard, or Fey creatures lives here!'
            END,
            CASE
                WHEN i <= 50 THEN 'Characteristic of the overarching terrain'
                WHEN i <= 57 THEN 'Roll on waterways table'
                WHEN i <= 64 THEN '25% easy encounter. Q/A & investigation rolls to investigate caves. 15% chance they lead to tunnels. 10% NPC.'
                WHEN i <= 71 THEN 'Q/A / nature rolls to discern cause'
                WHEN i <= 78 THEN 'Q/A nature rolls to find out more'
                WHEN i <= 85 THEN 'Q/A nature rolls to find out more. Are they still here? 25% Easy encounter, 25% clue'
                WHEN i <= 92 THEN 'Mines may lead quite far underground. Go to Random Dungeon Generator'
                ELSE 'Friendly 50%, Clue 50%'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_gully();

-- -----------------------------------------------------
-- procedure fill_minor_hills
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_hills`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_hills`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_hills (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 50 THEN 'Low, rolling hills'
                WHEN i <= 57 THEN 'Rocky hills abundant with caves, may also possess a network of natural tunnels'
                WHEN i <= 64 THEN 'Slightly higher hills, giving a good view of the surrounding area'
                WHEN i <= 71 THEN 'Sharply jutting, rocky hills, practically unscalable'
                WHEN i <= 78 THEN 'Dry, low plateau.'
                WHEN i <= 85 THEN 'Slightly wooded hills, small patches of forest.'
                WHEN i <= 92 THEN 'Not hills but barrows of some kind, possibly burial mounds!'
                ELSE 'Hills are home to some sort of colony. 50% humanoid, otherwise some sort of burrowing beast.'
            END,
            CASE
                WHEN i <= 50 THEN 'Covered with overarching terrain. In a forest, wooded hills. In grassland, grassy hills.'
                WHEN i <= 57 THEN 'Q/A rolls to see whether tunnels are present and whether they are inhabited. Clue 25%'
                WHEN i <= 64 THEN 'Q/A roll to see whether you can see anything of interest. 10% NPC.'
                WHEN i <= 71 THEN 'Athletics check to scale, DC 16. Fall damage if fail?'
                WHEN i <= 78 THEN 'Monument 25%'
                WHEN i <= 85 THEN 'Easy encounter 25%. Roll on Small wood minor feature table.'
                WHEN i <= 92 THEN 'Q/A to determine nature of these mounds. May lead to tunnels.'
                ELSE 'Q/A rolls to determine what lurks here'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_hills();

-- -----------------------------------------------------
-- procedure fill_minor_lake
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_lake`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_lake`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_lake (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 50 THEN 'Medium-sized lake, unmarked on map.'
                WHEN i <= 55 THEN 'Medium sized lake, small settlement somewhere on its shores.'
                WHEN i <= 60 THEN 'Smallish lake / pond / watering hole'
                WHEN i <= 65 THEN 'Large, unmapped lake, with a waterway running out of it. Could be rideable in a canoe'
                WHEN i <= 70 THEN 'Medium sized lake, small settlement somewhere on its shores.'
                WHEN i <= 75 THEN 'Large, unmapped lake, with small mountain range by its shores'
                WHEN i <= 80 THEN 'Large lake with small woods on its shores'
                WHEN i <= 85 THEN 'Medium-sized lakes with many boats'
                WHEN i <= 90 THEN 'Small lake or pond, serves as a lair for some aquatic creature'
                WHEN i <= 95 THEN 'Medium-sized lake, fish jumping'
                ELSE 'Sacred pool of some sort. Magical in nature'
            END,
            CASE
                WHEN i <= 50 THEN 'Situated in overarching terrain. 40% easy encounter. Use overarching terrain for encounter table. 10% NPC.'
                WHEN i <= 55 THEN 'Roll on Unmarked Settlement Table'
                WHEN i <= 60 THEN 'Q/A to discern whether anything lurks here. 30% medium encounter. Use overarching terrain for encounter table'
                WHEN i <= 65 THEN 'DC 19 Survival check to craft canoe if trees are nearby. 10% NPC.'
                WHEN i <= 70 THEN 'Roll on Unmarked Settlement Table, adding 20 to roll.'
                WHEN i <= 75 THEN 'Roll on Small Mountain Range table.'
                WHEN i <= 80 THEN 'Roll on Small Woods Table'
                WHEN i <= 85 THEN 'Q/A rolls to determine more. 25% clue. 40% NPC'
                WHEN i <= 90 THEN '25% clue'
                WHEN i <= 95 THEN 'DC 15 Survival check to catch a fish.'
                ELSE 'Q/A to discern whether any rituals are going on / magic user NPCs nearby.'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_lake();

-- -----------------------------------------------------
-- procedure fill_minor_mountains
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_mountains`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_mountains`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_mountains (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 55 THEN 'Standard small mountain range, mostly uniform size, no huge peaks'
                WHEN i <= 60 THEN 'Small mountain range with some large peaks'
                WHEN i <= 65 THEN 'Small mountain range that appears to possess a large amount of caves'
                WHEN i <= 70 THEN 'Mountain range appears to be home to a colony / settlement of some kind. Dwarven? Some kind of mountain dwelling creature.'
                WHEN i <= 75 THEN 'Small mountain range covered by forest.'
                WHEN i <= 80 THEN 'Small mountain range, rugged and dangerous, partially wooded. Giant eagles and the like.'
                WHEN i <= 85 THEN 'Bandits / Raiders using these mountains as a hideout. But does your PC know? Perception DC 18 to discern.'
                WHEN i <= 90 THEN 'Small mountain range by lake.'
                WHEN i <= 95 THEN 'Small mountain range with colony of Giants (or perhaps other humanoids)!'
                ELSE 'Small mountain range containing a (Roll d8) 1: monastery, 2: wizard tower, 3: hidden town, 4: community of druids, 5: secret dwarven kingdom, 6: secret gnomish kingdom, 7: citadel for an assassin’s order, 8: Whatever takes your fancy!'
            END,
            CASE
                WHEN i <= 55 THEN 'Will have snow if it is winter or near to winter. DC 16 Survival roll to scale (climbing gear also required)'
                WHEN i <= 60 THEN 'Will have snow if it is winter or near to winter. DC 16 Survival roll to scale (climbing gear also required)'
                WHEN i <= 65 THEN 'Caves might lead to tunnels / dungeons'
                WHEN i <= 70 THEN 'Roll on Unmarked Settlement table.'
                WHEN i <= 75 THEN 'Roll on Small Wood Table.'
                WHEN i <= 80 THEN 'Hard encounter 50%'
                WHEN i <= 85 THEN 'Hard encounter 70%'
                WHEN i <= 90 THEN 'Roll on Lake Table.'
                WHEN i <= 95 THEN 'Q/A rolls to find out more'
                ELSE 'Q/A rolls to determine more'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_mountains();

-- -----------------------------------------------------
-- procedure fill_minor_oasis
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_oasis`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_oasis`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_oasis (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 46 THEN 'Oasis with pool of refreshing water at its centre. Ideal campsite'
                WHEN i <= 52 THEN 'On reaching it, you discover it is a mirage.'
                WHEN i <= 58 THEN 'Oasis with pool but water is… not quite right. 30% poisoned, or something else. 50% favourable effect.'
                WHEN i <= 64 THEN 'Oasis contains a travelling caravan of desert merchants'
                WHEN i <= 70 THEN 'Oasis contains a large camp of desert nomads.'
                WHEN i <= 76 THEN 'Oasis contains a shrine or temple of some sort'
                WHEN i <= 82 THEN 'Oasis contains a ruin of some sort'
                WHEN i <= 88 THEN 'Oasis with bandits / raiders / other adventurers using it as a stopoff point'
                WHEN i <= 94 THEN 'Oasis with a waypoint / fresh horses / supplies'
                ELSE 'Some sort of magical barrier here… it could only be described as a Wonderwall.'
            END,
            CASE
                WHEN i <= 46 THEN 'Good place for a long rest, especially in a desert'
                WHEN i <= 52 THEN 'Just deserts.'
                WHEN i <= 58 THEN 'Q/A rolls / Nature check to discern more'
                WHEN i <= 64 THEN '90% friendly. Are you able to approach with stealth so they don’t notice you?'
                WHEN i <= 70 THEN '50% friendly. Are you able to approach with stealth so they don’t notice you?'
                WHEN i <= 76 THEN 'Q/A / Investigation roll to find out more.'
                WHEN i <= 82 THEN 'Q/A / Investigation roll to find out more.'
                WHEN i <= 88 THEN '50% friendly. Are you able to approach with stealth so they don’t notice you?'
                WHEN i <= 94 THEN 'Restock on some basics! Q/A roll to discern more.'
                ELSE 'Q/A rolls / Arcana check to discern nature of barrier.'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_oasis();

-- -----------------------------------------------------
-- procedure fill_minor_rocky_outcrop
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_rocky_outcrop`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_rocky_outcrop`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_rocky_outcrop (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 52 THEN 'Rocky outcrop'
                WHEN i <= 58 THEN 'Outcrop serves as a vantage point for humanoid scouts'
                WHEN i <= 65 THEN 'Small wood atop this outrcrop'
                WHEN i <= 71 THEN 'If scaled, PC might find a structure or monument on top of this feature'
                WHEN i <= 77 THEN 'Rocky outcrop is actually an island in the middle of a lake'
                WHEN i <= 83 THEN 'Rocky outcrop is actually an assortment of large boulders scattered around.'
                WHEN i <= 89 THEN 'Interesting formation of standing stones atop the outcrop.'
                WHEN i <= 95 THEN 'An NPC stands atop this outcrop and is calling out to you, beckoning you to join them up there'
                ELSE 'Outcrop has been fashioned into the face or form of a well-known god.'
            END,
            CASE
                WHEN i <= 52 THEN 'Protruding above overarching terrain.'
                WHEN i <= 58 THEN 'DC 14 perception roll to see if your PC notices. Q/A to discern more.'
                WHEN i <= 65 THEN 'Roll on Small Wood table'
                WHEN i <= 71 THEN '50% structure, 50% monument'
                WHEN i <= 77 THEN 'Roll on Lake Table'
                WHEN i <= 83 THEN 'Q/A to determine more. How did they get here? 50% medium encounter (possibly with surprise vs you)'
                WHEN i <= 89 THEN 'DC 12 Survival check to scale this feature and investigate further'
                WHEN i <= 95 THEN 'Q/A to discern more.'
                ELSE '50% worshippers present. Shrine atop the outcrop? Q/A to discern more.'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_rocky_outcrop();

-- -----------------------------------------------------
-- procedure fill_minor_settlement
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_settlement`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_settlement`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_settlement (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 52 THEN 'Standard (d4) 1-2: Hamlet, 3-4: Village'
                WHEN i <= 56 THEN 'Nomadic camp'
                WHEN i <= 60 THEN 'Abandoned settlement. Roll d4: 1-2: Hamlet, 3-4: Village.'
                WHEN i <= 63 THEN 'Tower.'
                WHEN i <= 67 THEN 'Tower.'
                WHEN i <= 71 THEN 'Worker’s camp'
                WHEN i <= 74 THEN 'Hamlet, inhabited'
                WHEN i <= 78 THEN 'Hamlet, but some sort of affliction on the inhabitants'
                WHEN i <= 82 THEN 'Unmapped village, inhabited'
                WHEN i <= 86 THEN 'Village, but in discord / strife'
                WHEN i <= 90 THEN 'Hidden town / humanoid colony. A good amount of inhabitants.'
                WHEN i <= 94 THEN 'Tree hut village'
                ELSE 'Roll d6. 1: Town is here magically. 2: result of a dimensional rift. 3: Town is illusory but inhabitants still interact with you. 4: Floating town, suspended by magic, 5: Town is a haven for undead, 6: Whatever takes your fancy!'
            END,
            CASE
                WHEN i <= 52 THEN 'Situated in overarching terrain. Q/A rolls to find out more.'
                WHEN i <= 56 THEN ''
                WHEN i <= 60 THEN 'Q/A rolls to discern cause of abandonment and also how long ago it was abandoned.'
                WHEN i <= 63 THEN 'Appears uninhabited Q/A to discern whether anything lurks here.'
                WHEN i <= 67 THEN 'Appears inhabited Q/A rolls to discern more.'
                WHEN i <= 71 THEN 'Appropriate to overarching terrain. 70% human, otherwise some other sort of humanoid.'
                WHEN i <= 74 THEN 'Settlement founded on surrounding industry. 70% human, otherwise some other sort of humanoid.'
                WHEN i <= 78 THEN 'Q/A rolls to discern more. 70% human, otherwise some other sort of humanoid.'
                WHEN i <= 82 THEN 'Settlement founded on surrounding industry. 70% human, otherwise some other sort of humanoid.'
                WHEN i <= 86 THEN 'Q/A rolls to discern more. 70% human, otherwise some other sort of humanoid.'
                WHEN i <= 90 THEN 'How have they remained hidden, and why? Q/A rolls to discern more. 70% human, otherwise some other sort of humanoid.'
                WHEN i <= 94 THEN '80% humanoid inhabitants (probably wood elves)'
                ELSE '50% hard encounter. Q/A rolls to discern more.'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_settlement();

-- -----------------------------------------------------
-- procedure fill_minor_structure
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_structure`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_structure`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_structure (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 4 THEN 'Mine'
                WHEN i <= 8 THEN 'Cemetery / Tomb'
                WHEN i <= 12 THEN 'Small castle / keep'
                WHEN i <= 16 THEN 'Manor House'
                WHEN i <= 20 THEN 'Monastery'
                WHEN i <= 24 THEN 'Shrine / Temple'
                WHEN i <= 28 THEN 'Watchtower'
                WHEN i <= 32 THEN 'Farm House'
                WHEN i <= 36 THEN 'Fence'
                WHEN i <= 40 THEN 'Windmill'
                WHEN i <= 44 THEN 'Watermill'
                WHEN i <= 48 THEN 'Old well'
                WHEN i <= 52 THEN 'Hermit Hut / Cave'
                WHEN i <= 56 THEN 'Lone tavern / inn'
                WHEN i <= 60 THEN 'Roll d4. 1-2: Hunting cabin. 3-4: Fishing Hut.'
                WHEN i <= 64 THEN 'Hideout / Bunker'
                WHEN i <= 68 THEN 'Waypoint. Stopoff for couriers / horse trader'
                WHEN i <= 72 THEN 'Training Camp'
                WHEN i <= 76 THEN 'Small Bridge'
                WHEN i <= 80 THEN 'Medium Bridge'
                WHEN i <= 84 THEN 'Large Bridge'
                WHEN i <= 88 THEN 'Large Castle / Keep'
                WHEN i <= 92 THEN 'Ruins'
                WHEN i <= 96 THEN 'Burial Mounds / Barrows'
                ELSE 'Wizard Tower'
            END,
            CASE
                WHEN i <= 4 THEN '10% inhabited'
                WHEN i <= 8 THEN '30% haunted / undead'
                WHEN i <= 12 THEN '30% deserted (with possible monster inhabitants)'
                WHEN i <= 16 THEN '50% inhabited'
                WHEN i <= 20 THEN '90% inhabited'
                WHEN i <= 24 THEN '50% humanoid inhabitants'
                WHEN i <= 28 THEN '50% inhabitated, 50% humans'
                WHEN i <= 32 THEN '80% inhabited, 5% under attack currently'
                WHEN i <= 36 THEN 'Q/A roll / nature roll to determine its purpose'
                WHEN i <= 40 THEN ''
                WHEN i <= 44 THEN 'Roll on Waterway Table'
                WHEN i <= 48 THEN '50% hidden cave / tunnel at bottom. 30% clue'
                WHEN i <= 52 THEN '70% inhabited, 40% clue'
                WHEN i <= 56 THEN '90% inhabited. Q/A to discern more'
                WHEN i <= 60 THEN '25% inhabited. Might contain basic supplies. Q/A roll to determine. If fishing hut, (roll d4) roll on 1-2: Waterway Table, 3-4: Lake Table.'
                WHEN i <= 64 THEN 'DC 16 perception check to notice. If you are in familiar / favoured terrain, make at advantage.'
                WHEN i <= 68 THEN 'Q/A to discern more. 75% friendly or neutral.'
                WHEN i <= 72 THEN 'Q/A to discern more'
                WHEN i <= 76 THEN 'Roll on Waterways Table'
                WHEN i <= 80 THEN 'Roll on Waterways Table'
                WHEN i <= 84 THEN 'Roll on Waterways Table'
                WHEN i <= 88 THEN '80% inhabited (if uninhabited, then something else will have moved in).'
                WHEN i <= 92 THEN '50% hard encounter. 10% deadly encounter. Clue 60%.'
                WHEN i <= 96 THEN 'What lies beneath?'
                ELSE 'Definitely inhabited. 60% friendly.'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_structure();

-- -----------------------------------------------------
-- procedure fill_minor_swamp
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_swamp`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_swamp`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_swamp (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 50 THEN 'Standard swamp'
                WHEN i <= 57 THEN 'Thick, dense swamp, almost impossible to traverse, extending in all directions forward.'
                WHEN i <= 64 THEN 'Patchy swamp with dry areas. Perfect area for bandits or raiders to have a camp.'
                WHEN i <= 71 THEN 'Wetland containing many ponds and a network of waterways. May need a small boat to traverse.'
                WHEN i <= 78 THEN 'Dark, eerie swamp, with an eldritch aura'
                WHEN i <= 85 THEN 'A land forgotten by time! Ancient swamp, small part of a more primeval wilderness that was here before'
                WHEN i <= 92 THEN 'Fey Oasis'
                ELSE 'Swamp inhabited by humanoids who wish to remain hidden from the world.'
            END,
            CASE
                WHEN i <= 50 THEN 'Difficult terrain (half movement) 25% easy encounter'
                WHEN i <= 57 THEN 'Extremely difficult terrain, movement slowed to quarter of normal.'
                WHEN i <= 64 THEN 'Hard encounter 50%. Clue 30%'
                WHEN i <= 71 THEN 'Survival check, DC 19, to craft a small kayak. Otherwise, might need to go around, adding travel time.'
                WHEN i <= 78 THEN 'Something evil hides in here… Q/A rolls to determine what! Clue 10%'
                WHEN i <= 85 THEN 'Hard encounter 50%'
                WHEN i <= 92 THEN '50% encounter with fey. Wisdom check (DC 16) or you get totally turned around, lost.'
                ELSE 'Q/A rolls to determine whether you meet them.'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_swamp();

-- -----------------------------------------------------
-- procedure fill_minor_waterway
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_waterway`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_waterway`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_waterway (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 50 THEN 'Stream / river running through'
                WHEN i <= 55 THEN 'Slightly larger river, might be difficult to ford'
                WHEN i <= 60 THEN 'A man-made waterway of some sort, irrigation channel perhaps?'
                WHEN i <= 65 THEN 'Deep but narrow stream. You see something float by! Dex check to grab it.'
                WHEN i <= 70 THEN 'Large, unmapped river. Could be rideable in canoe.'
                WHEN i <= 75 THEN 'Sizable river with pond areas. Probably quite good for fishing or swimming.'
                WHEN i <= 80 THEN 'Sizable, unmapped river, spanned by bridge.'
                WHEN i <= 85 THEN 'Meandering river with pier where small boats are tied up. Ferryman?'
                WHEN i <= 90 THEN 'This appears to be a drainage channel for a nearby settlement.'
                WHEN i <= 95 THEN 'Humanoids or fey (elves? dryads?) frolicking in the water.'
                ELSE 'Shallow brook… what’s that you see there amongst the pebbles?'
            END,
            CASE
                WHEN i <= 50 THEN 'Runs through overarching terrain. 15% waterfall nearby.'
                WHEN i <= 55 THEN 'Survival check, DC 12 to ford. On a fail, you lose 1d4 perishable goods downstream and are soaked through. If it''s cold, you might need to stop and make a fire to dry off.'
                WHEN i <= 60 THEN 'Q/A rolls to discern purpose'
                WHEN i <= 65 THEN 'Clue 50%, otherwise just a branch.'
                WHEN i <= 70 THEN 'DC 19 Survival check to craft boat (if in forest or trees are nearby). Q/A rolls and DC 12 History roll to discern more about this river.'
                WHEN i <= 75 THEN 'Medium encounter 50%, Clue 25%'
                WHEN i <= 80 THEN 'Easy encounter 25%. Q/A roll to discern who built the bridge and for what purpose. 35% Unmarked Settlement nearby.'
                WHEN i <= 85 THEN 'Q/A rolls to determine purpose of boats.'
                WHEN i <= 90 THEN 'Roll on Unmarked Settlement table.'
                WHEN i <= 95 THEN '25% get freaky'
                ELSE 'Loot 20% (use CR of last creature defeated). Clue 40%'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_waterway();

-- -----------------------------------------------------
-- procedure fill_minor_wood
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_minor_wood`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_minor_wood`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO minor_wood (id, description, notes)
        VALUES (
            i,
            CASE
                WHEN i <= 55 THEN 'Standard type of wood for this area'
                WHEN i <= 60 THEN 'Trees dead, as if by some mysterious disease.'
                WHEN i <= 65 THEN 'Ancient wood, twisted, gnarled trees.'
                WHEN i <= 70 THEN 'Serene, Sylvan wood'
                WHEN i <= 75 THEN 'Dark, thick wood, full of menace'
                WHEN i <= 80 THEN 'Wood which is in the process of being clearfelled for timber'
                WHEN i <= 85 THEN 'Wood which has been ravaged by forest fire'
                WHEN i <= 90 THEN 'Wood in which a band of raiding humanoids is currently hiding'
                WHEN i <= 95 THEN 'Wood containing a clearing containing totem / standing stones'
                ELSE 'Wood inhabited by humanoid settlement such as elves, gnomes, halflings'
            END,
            CASE
                WHEN i <= 55 THEN ''
                WHEN i <= 60 THEN 'Use Q/A rolls to see if you can determine the nature of the affliction'
                WHEN i <= 65 THEN 'Clue 25%'
                WHEN i <= 70 THEN 'Q/A rolls to check for signs of life'
                WHEN i <= 75 THEN 'Hard encounter 20%'
                WHEN i <= 80 THEN 'Q/A rolls to determine who is clearfelling and why'
                WHEN i <= 85 THEN 'Q/A rolls to determine cause of fire'
                WHEN i <= 90 THEN 'Clue 50%. Medium encounter 35%'
                WHEN i <= 95 THEN 'Medium encounter 25%, Clue 10%'
                ELSE 'Q/A rolls to determine whether you meet them'
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_minor_wood();

-- -----------------------------------------------------
-- procedure fill_overarching_arctic
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_overarching_arctic`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_overarching_arctic`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `overarching_arctic` (id, feature, size)
        VALUES (
            i,
            CASE
                WHEN i <= 60 THEN 'Continuing arctic terrain'
                WHEN i <= 65 THEN 'Icy hills (roll hills and interpret… arctically).'
                WHEN i <= 70 THEN 'Small mountain range / foothills'
                WHEN i <= 75 THEN 'Waterway (probably frozen)'
                WHEN i <= 80 THEN 'Small Wood'
                WHEN i <= 85 THEN 'Rocky outcrop'
                WHEN i <= 90 THEN 'Unmarked Settlement'
                WHEN i <= 95 THEN 'D6 roll. 1-2: Structure / 3-4: Monument / 5-6: Interesting'
                ELSE 'Monster Lair'
            END,
            CASE
                WHEN i <= 60 THEN '5 miles'
                WHEN i <= 90 THEN '1d4 m.'
                ELSE ''
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_overarching_arctic();

-- -----------------------------------------------------
-- procedure fill_overarching_coastal
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_overarching_coastal`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_overarching_coastal`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `overarching_coastal` (id, feature, size)
        VALUES (
            i,
            CASE
                WHEN i <= 60 THEN 'Continuing coastal terrain'
                WHEN i <= 65 THEN 'Hills / (with cliffs perhaps).'
                WHEN i <= 70 THEN 'Gully'
                WHEN i <= 75 THEN 'Waterway'
                WHEN i <= 80 THEN 'Small Wood'
                WHEN i <= 85 THEN 'Rocky outcrop'
                WHEN i <= 90 THEN 'Unmarked Settlement'
                WHEN i <= 95 THEN 'D6 roll. 1-2: Structure / 3-4: Monument / 5-6: Interesting'
                ELSE 'Monster Lair'
            END,
            CASE
                WHEN i <= 60 THEN '5 miles'
                WHEN i <= 90 THEN '1d4 m.'
                ELSE ''
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_overarching_coastal();

-- -----------------------------------------------------
-- procedure fill_overarching_desert
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_overarching_desert`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_overarching_desert`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `overarching_desert` (id, feature, size)
        VALUES (
            i,
            CASE
                WHEN i <= 70 THEN 'Continuing desert'
                WHEN i <= 75 THEN 'Oasis (roll Oasis Table)'
                WHEN i <= 80 THEN 'Small mountain range (dry, no snow)'
                WHEN i <= 85 THEN 'Rocky outcrop'
                WHEN i <= 90 THEN 'Unmarked Settlement'
                WHEN i <= 95 THEN 'D6 roll. 1-2: Structure / 3-4: Monument / 5-6: Interesting'
                ELSE 'Monster Lair'
            END,
            CASE
                WHEN i <= 70 THEN '5 miles'
                WHEN i <= 85 THEN '1d4 m.'
                ELSE ''
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_overarching_desert();

-- -----------------------------------------------------
-- procedure fill_overarching_forest
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_overarching_forest`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_overarching_forest`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `overarching_forest` (id, feature, size)
        VALUES (
            i,
            CASE
                WHEN i <= 52 THEN 'Continuing forest'
                WHEN i <= 56 THEN 'Small clearing'
                WHEN i <= 60 THEN 'Large clearing'
                WHEN i <= 64 THEN 'Small wooded gully'
                WHEN i <= 68 THEN 'Large wooded gully'
                WHEN i <= 72 THEN 'Waterway'
                WHEN i <= 76 THEN 'Lake'
                WHEN i <= 80 THEN 'Clearfelled area'
                WHEN i <= 84 THEN 'Rocky outcrop'
                WHEN i <= 88 THEN 'Swamp'
                WHEN i <= 92 THEN 'Unmarked Settlement'
                WHEN i <= 96 THEN 'D6 roll. 1-2: Structure / 3-4: Monument / 5-6: Monster lair'
                ELSE 'Monster Lair'
            END,
            CASE
                WHEN i <= 52 THEN '5 miles'
                WHEN i <= 60 THEN ''
                WHEN i <= 68 THEN '1d4 m.'
                WHEN i <= 72 THEN ''
                WHEN i <= 88 THEN '1d4 m.'
                ELSE ''
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_overarching_forest();

-- -----------------------------------------------------
-- procedure fill_overarching_grassland
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_overarching_grassland`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_overarching_grassland`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `overarching_grassland` (id, feature, size)
        VALUES (
            i,
            CASE
                WHEN i <= 56 THEN 'Continuing grassland'
                WHEN i <= 60 THEN 'Hills'
                WHEN i <= 64 THEN 'Swamp'
                WHEN i <= 68 THEN 'Gully'
                WHEN i <= 72 THEN 'Waterway'
                WHEN i <= 76 THEN 'Lake'
                WHEN i <= 80 THEN 'Small Wood'
                WHEN i <= 84 THEN 'Rocky outcrop'
                WHEN i <= 85 THEN 'Small mountain range / Foothills'
                WHEN i <= 92 THEN 'Unmarked Settlement'
                WHEN i <= 96 THEN 'D6. 1-2: Structure / 3-4: Monument / 5-6: Interesting landscape feature'
                ELSE 'Monster Lair'
            END,
            CASE
                WHEN i <= 56 THEN '5 miles'
                WHEN i <= 85 THEN '1d4 m.'
                ELSE ''
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_overarching_grassland();

-- -----------------------------------------------------
-- procedure fill_overarching_hill
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_overarching_hill`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_overarching_hill`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `overarching_hill` (id, feature, size)
        VALUES (
            i,
            CASE
                WHEN i <= 55 THEN 'Continuing hills'
                WHEN i <= 60 THEN 'Gully'
                WHEN i <= 65 THEN 'Waterway'
                WHEN i <= 70 THEN 'Lake'
                WHEN i <= 75 THEN 'Small Wood'
                WHEN i <= 80 THEN 'Rocky outcrop'
                WHEN i <= 85 THEN 'Small mountain range / Foothills'
                WHEN i <= 90 THEN 'Unmarked Settlement'
                WHEN i <= 95 THEN 'D6. 1-2: Structure / 3-4: Monument / 5-6: Interesting landscape feature'
                ELSE 'Monster Lair'
            END,
            CASE
                WHEN i <= 55 THEN '5 miles'
                WHEN i <= 85 THEN '1d4 m.'
                ELSE ''
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_overarching_hill();

-- -----------------------------------------------------
-- procedure fill_overarching_mountain
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_overarching_mountain`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_overarching_mountain`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `overarching_mountain` (id, feature, size)
        VALUES (
            i,
            CASE
                WHEN i <= 55 THEN 'Continuing mountains'
                WHEN i <= 60 THEN 'Gully'
                WHEN i <= 65 THEN 'Waterway'
                WHEN i <= 70 THEN 'Lake'
                WHEN i <= 75 THEN 'Small Wood'
                WHEN i <= 80 THEN 'Rocky outcrop'
                WHEN i <= 85 THEN 'Small mountain range / Foothills'
                WHEN i <= 90 THEN 'Unmarked Settlement'
                WHEN i <= 95 THEN 'D6. 1-2: Structure / 3-4: Monument / 5-6: Interesting landscape feature'
                ELSE 'Monster Lair'
            END,
            CASE
                WHEN i <= 55 THEN '5 miles'
                WHEN i <= 85 THEN '1d4 m.'
                ELSE ''
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_overarching_mountain();

-- -----------------------------------------------------
-- procedure fill_overarching_swamp
-- -----------------------------------------------------

USE `sat_wilderness_generation`;
DROP procedure IF EXISTS `sat_wilderness_generation`.`fill_overarching_swamp`;

DELIMITER $$
USE `sat_wilderness_generation`$$
CREATE DEFINER=`luna`@`%` PROCEDURE `fill_overarching_swamp`()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 100 DO
        INSERT INTO `overarching_swamp` (id, feature, size)
        VALUES (
            i,
            CASE
                WHEN i <= 51 THEN 'Continuing swamp'
                WHEN i <= 58 THEN 'Waterway'
                WHEN i <= 65 THEN 'Lake'
                WHEN i <= 72 THEN 'Small Wood'
                WHEN i <= 79 THEN 'Rocky outcrop'
                WHEN i <= 86 THEN 'Unmarked Settlement'
                WHEN i <= 93 THEN 'D6. 1-2: Structure / 3-4: Monument / 5-6: Interesting landscape feature'
                ELSE 'Monster Lair'
            END,
            CASE
                WHEN i <= 51 THEN '5 miles'
                WHEN i <= 79 THEN '1d4 m.'
                ELSE ''
            END
        );
        SET i = i + 1;
    END WHILE;
END$$

DELIMITER ;

CALL fill_overarching_swamp();

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
