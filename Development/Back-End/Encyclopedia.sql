-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2022 at 11:26 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `encyclopedia`
--
CREATE DATABASE IF NOT EXISTS `encyclopedia` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `encyclopedia`;

-- --------------------------------------------------------
--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `AdminID` int(20) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`AdminID`, `Username`, `Password`) VALUES
(1, 'admin', 'adminadmin');

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `ArticleID` int(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `ArticleContent` mediumtext NOT NULL,
  `Language` varchar(30) NOT NULL,
  `PublishedDate` varchar(60) NOT NULL,
  `ContentID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ArticleID`, `Name`, `ArticleContent`, `Language`, `PublishedDate`, `ContentID`) VALUES
(1, 'World Map', 'The earliest known world maps date to classical antiquity, the oldest examples of the 6th to 5th centuries BCE still based on the flat Earth paradigm. World maps assuming a spherical Earth first appear in the Hellenistic period. The developments of Greek geography during this time, notably by Eratosthenes and Posidonius culminated in the Roman era, with Ptolemy world map (2nd century CE), which would remain authoritative throughout the Middle Ages.\r\nSince Ptolemy, knowledge of the approximate size of the Earth allowed cartographers to estimate the extent of their geographical knowledge, and to indicate parts of the planet known to exist but not yet explored as terra incognita. With the Age of Discovery, during the 15th to 18th centuries, world maps became increasingly accurate; exploration of Antarctica, Australia, and the interior of Africa by western mapmakers was left to the 19th and early 20th century.', 'English', '5/19/2022', 1),
(2, 'Rome Colosseum', 'Also called Flavian Amphitheatre, giant amphitheatre built in Rome under the Flavian emperors. Construction of the Colosseum was begun sometime between 70 and 72 CE during the reign of Vespasian. It is located just east of the Palatine Hill, on the grounds of what was Nero’s Golden House. The artificial lake that was the centrepiece of that palace complex was drained, and the Colosseum was sited there, a decision that was as much symbolic as it was practical. Vespasian, whose path to the throne had relatively humble beginnings, chose to replace the tyrannical emperor’s private lake with a public amphitheatre that could host tens of thousands of Romans.', 'English', '5/19/2022', 2),
(3, 'Sea Monster', 'Sea monsters are beings from folklore believed to dwell in the sea and often imagined to be of immense size. Marine monsters can take many forms, including sea dragons, sea serpents, or tentacled beasts. They can be slimy and scaly and are often pictured threatening ships or spouting jets of water. The definition of a \"monster\" is subjective; further, some sea monsters may have been based on scientifically accepted creatures, such as whales and types of giant and colossal squid.Sea monster accounts are found in virtually all cultures that have contact with the sea. For example, Avienius relates of Carthaginian explorer Himilco voyage \"...there monsters of the deep, and beasts swim amid the slow and sluggishly crawling ships.\" (lines 117-29 of Ora Maritima). Sir Humphrey Gilbert claimed to have encountered a lion-like monster with \"glaring eyes\" on his return voyage after formally claiming St. John, Newfoundland (1583) for England.Another account of an encounter with a sea monster comes from July 1734. ', 'English', '5/19/2022', 3),
(4, 'Parrot', 'More than 300 species of parrots, ranging from budgies, cockatiels, and conures, to the larger amazons, macaws, and cockatoos, are found the world over, from the rainforests of South America and the islands of the South Pacific and Caribbean, to the deserts and grasslands of Australia and Africa. Whether captured in the wild or born in captivity, parrots are not domesticated animals like cats and dogs. They are still wild, undomesticated creatures at most only a few generations removed from their native habitats.\r\nIn the wild, parrots live in flocks and can fly many miles each day. They spend hours foraging for a variety of natural foods, socializing, communicating, bathing, preening, establishing nesting territories, mating, excavating nests, and raising their young.\r\nEven under the best of circumstances—a home with plenty of physical stimulation, toys and objects to play with and chew, a proper diet, and companionship with humans - life in captivity is still a pale shadow of the life that parrots evolved to live in their natural habitats. The average captive parrot spends most of his or her life confined to a cage and is fed a monotonous, incomplete diet of manufactured bird foods. Many cannot fly because their wings have been clipped to keep them “under control” and to prevent them from hurting themselves by flying into walls and windows, chewing on household objects and getting into other hazards. Few are kept in groups with their own species.\r\nParrots and other exotic birds are the wildlife of other countries, and as such, their inherent behavioral and physical needs remain intact. Sadly, when it comes to birds, the deprivation of their natural behaviors (to fly and flock, for example) is an inescapable component of their captivity.\r\nAs they reach maturity, the restriction on parrots’ natural desire to fly, forage, raise young, and socialize with other birds of their own species often manifests itself in neurotic behavior such as excessive screaming, biting, aggression, feather plucking, and even self-mutilation. Like other wild “exotic pets,” many captive parrots find themselves abused, neglected or displaced as their natural behaviors and needs clash with human expectations.', 'English', '4/26/2022', 4),
(5, 'Cocktail', 'Cuddly, outgoing and comical are just three reasons why the cockatiel is the No. 1 pet bird in America. Cockatiels are also talented whistlers, and male cockatiels in particular are known for their whistle serenades, which can be directed at their favored person, their favorite object or their mirror reflection. When not whistling or keeping themselves busy foraging for food and fun around the cage, cockatiels often enjoy spending their downtime snuggling on their favored person’s shoulder. A healthy, well-socialized cockatiel can make a great family pet and is also ideal for apartment living.\r\nCockatiels are native to the semi-arid regions of Australia. This open environment might be a reason why cockatiels don’t have the ear-piercing screech of parrots originating from dense rain-forest habitats. Wild cockatiels fly to the ground to forage for food. Cockatiels readily breed in the wild, and they are also easy to breed in captivity, which makes them widely available as pets at a lower cost than most other parrot species. Wild cockatiels are always on alert for predators and are light sleepers. A pet cockatiel might have an occasional night-fright episode, where it thrashes around the cage at night as if startled. You can help your cockatiel find its way back to its perch by leaving a night light on in its room.\r\nA cockatiel needs a cage spacious enough to accommodate multiple perches, toys, food bowls and have plenty of room to flap its wings without hitting them against anything.  A cage with a large door front is ideal because it makes it easier to return a cockatiel to its cage, especially since cockatiels can be flighty birds. Cockatiels are natural ground foragers and will forage on the bottom of the cage if given the opportunity; cover the cage floor with newspaper and sprinkle crumbled treats or millet sprinkle seed for your cockatiel to find. Cockatiels are social birds and thrive when given opportunities to interact with you, whether it is gently petting their cheek feathers, being talked to or simply being in the same room as you.A healthy cockatiel diet includes commercially balanced diets, such as Lafeber Premium Daily Diet Pellets, as well as other food, fresh vegetables and some seed. A well-cared-for cockatiel can live for more than 20 years.', 'English', '4/28/2022', 5),
(6, 'Birds', 'Bird, any of the more than 10,400 living species unique in having feathers, the major characteristic that distinguishes them from all other animals. A more-elaborate definition would note that they are warm-blooded vertebrates more related to reptiles than to mammals and that they have a four-chambered heart (as do mammals), forelimbs modified into wings (a trait shared with bats), a hard-shelled egg, and keen vision, the major sense they rely on for information about the environment. Their sense of smell is not highly developed, and auditory range is limited. Most birds are diurnal in habit. More than 1,000 extinct species have been identified from fossil remains.\r\nBirds are vertebrate animals adapted for flight.\r\nMany can also run, jump, swim, and dive. Some, like penguins, have lost the ability to fly but retained their wings. Birds are found worldwide and in all habitats. The largest is the nine-foot-tall ostrich. The smallest is the two-inch-long bee hummingbird.\r\nEverything about the anatomy of a bird reflects its ability to fly. The wings, for example, are shaped to create lift. The leading edge is thicker than the back edge, and they are covered in feathers that narrow to a point. Airplane wings are modeled after bird wings.\r\nThe bones and muscles of the wing are also highly specialized. The main bone, the humerus, which is similar to the upper arm of a mammal, is hollow instead of solid. It also connects to the bird’s air sac system, which, in turn, connects to its lungs. The powerful flight muscles of the shoulder attach to the keel, a special ridge of bone that runs down the center of the wide sternum, or breastbone. The tail feathers are used for steering.\r\nBirds have a unique digestive system that allows them to eat when they can—usually on the fly—and digest later. They use their beaks to grab and swallow food. Even the way a bird reproduces is related to flight. Instead of carrying the extra weight of developing young inside their bodies, they lay eggs and incubate them in a nest.\r\nThe fossil record shows that birds evolved alongside the dinosaurs during the Jurassic period 160 million years ago. The best known fossil is archaeopteryx, which was about the size of a crow.', 'English', '4/30/2022', 6),
(7, 'Universe', 'Universe, the whole cosmic system of matter and energy of which Earth, and therefore the human race, is a part. Humanity has traveled a long road since societies imagined Earth, the Sun, and the Moon as the main objects of creation, with the rest of the universe being formed almost as an afterthought. Today it is known that Earth is only a small ball of rock in a space of unimaginable vastness and that the birth of the solar system was probably only one event among many that occurred against the backdrop of an already mature universe. This humbling lesson has unveiled a remarkable fact, one that endows the minutest particle in the universe with a rich and noble heritage: events that occurred in the first few minutes of the creation of the universe 13.7 billion years ago turn out to have had a profound influence on the birth, life, and death of galaxies, stars, and planets. Indeed, a line can be drawn from the forging of the matter of the universe in a primal “big bang” to the gathering on Earth of atoms versatile enough to serve as the basis of life. The intrinsic harmony of such a worldview has great philosophical and aesthetic appeal, and it may explain why public interest in the universe has always endured.\r\nAll scientific thinking on the nature of the universe can be traced to the distinctive geometric patterns formed by the stars in the night sky. Even prehistoric people must have noticed that, apart from a daily rotation (which is now understood to arise from the spin of Earth), the stars did not seem to move with respect to one another: the stars appear “fixed.” Early nomads found that knowledge of the constellations could guide their travels, and they developed stories to help them remember the relative positions of the stars in the night sky. These stories became the mythical tales that are part of most cultures.\r\nWhen nomads turned to farming, an intimate knowledge of the constellations served a new function—an aid in timekeeping, in particular for keeping track of the seasons. People had noticed very early that certain celestial objects did not remain stationary relative to the “fixed” stars; instead, during the course of a year, they moved forward and backward in a narrow strip of the sky that contained 12 constellations constituting the signs of the zodiac. Seven such wanderers were known to the ancients: the Sun, the Moon, Mercury, Venus, Mars, Jupiter, and Saturn. Foremost among the wanderers was the Sun: day and night came with its rising and setting, and its motion through the zodiac signaled the season to plant and the season to reap. Next in importance was the Moon: its position correlated with the tides, and its shape changed intriguingly over the course of a month. The Sun and Moon had the power of gods; why not then the other wanderers? Thus probably arose the astrological belief that the positions of the planets (from the Greek word planetes, “wanderers”) in the zodiac could influence worldly events and even cause the rise and fall of kings. In homage to this belief, Babylonian priests devised the week of seven days, whose names even in various modern languages (for example, English, French, or Norwegian) can still easily be traced to their origins in the seven planet-gods.', 'English', '4/20/2022', 7),
(8, 'Milky Way', 'The Milky Way is the galaxy that includes our Solar System, with the name describing the galaxy appearance from Earth: a hazy band of light seen in the night sky formed from stars that cannot be individually distinguished by the naked eye. The term Milky Way is a translation of the Latin via lactea, from the Greek galaktikos kýklos, meaning \"milky circle.\"From Earth, the Milky Way appears as a band because its disk-shaped structure is viewed from within. Galileo Galilei first resolved the band of light into individual stars with his telescope in 1610. Until the early 1920s, most astronomers thought that the Milky Way contained all the stars in the Universe. Following the 1920 Great Debate between the astronomers Harlow Shapley and Heber Curtis, observations by Edwin Hubble showed that the Milky Way is just one of many galaxies.\r\nThe Milky Way is a barred spiral galaxy with an estimated visible diameter of 100,000–200,000 light-years. Recent simulations suggest that a dark matter area, also containing some visible stars, may extend up to a diameter of almost 2 million light-years.The Milky Way has several satellite galaxies and is part of the Local Group of galaxies, which form part of the Virgo Supercluster, which is itself a component of the Laniakea Supercluster.\r\nIt is estimated to contain 100–400 billion stars and at least that number of planets.The Solar System is located at a radius of about 27,000 light-years from the Galactic Center, on the inner edge of the Orion Arm, one of the spiral-shaped concentrations of gas and dust. The stars in the innermost 10,000 light-years form a bulge and one or more bars that radiate from the bulge. The galactic center is an intense radio source known as Sagittarius A*, a supermassive black hole of 4.100 (± 0.034) million solar masses.Stars and gases at a wide range of distances from the Galactic Center orbit at approximately 220 kilometers per second. The constant rotational speed appears to contradict the laws of Keplerian dynamics and suggests that much (about 90%)of the mass of the Milky Way is invisible to telescopes, neither emitting nor absorbing electromagnetic radiation. This conjectural mass has been termed \"dark matter\".The rotational period is about 240 million years at the radius of the Sun.The Milky Way as a whole is moving at a velocity of approximately 600 km per second with respect to extragalactic frames of reference. The oldest stars in the Milky Way are nearly as old as the Universe itself and thus probably formed shortly after the Dark Ages of the Big Bang.On 12 May 2022, astronomers announced the image, for the first time, of Sagittarius A*, the supermassive black hole at the center of the Milky Way galaxy.', 'English', '4/5/2022', 8),
(9, 'Earth', 'Our home planet is the third planet from the Sun, and the only place we know of so far that’s inhabited by living things.While Earth is only the fifth largest planet in the solar system, it is the only world in our solar system with liquid water on the surface. Just slightly larger than nearby Venus, Earth is the biggest of the four planets closest to the Sun, all of which are made of rock and metal.\r\nThe name Earth is at least 1,000 years old. All of the planets, except for Earth, were named after Greek and Roman gods and goddesses. However, the name Earth is a Germanic word, which simply means “the ground.”\r\nEarth has a very hospitable temperature and mix of chemicals that have made life abundant here. Most notably, Earth is unique in that most of our planet is covered in liquid water, since the temperature allows liquid water to exist for extended periods of time. Earth vast oceans provided a convenient place for life to begin about 3.8 billion years ago.\r\nSome of the features of our planet that make it great for sustaining life are changing due to the ongoing effects of climate change.\r\nWith a radius of 3,959 miles (6,371 kilometers), Earth is the biggest of the terrestrial planets and the fifth largest planet overall. From an average distance of 93 million miles (150 million kilometers), Earth is exactly one astronomical unit away from the Sun because one astronomical unit (abbreviated as AU), is the distance from the Sun to Earth. This unit provides an easy way to quickly compare planets distances from the Sun. It takes about eight minutes for light from the Sun to reach our planet.\r\nAs Earth orbits the Sun, it completes one rotation every 23.9 hours. It takes 365.25 days to complete one trip around the Sun. That extra quarter of a day presents a challenge to our calendar system, which counts one year as 365 days. To keep our yearly calendars consistent with our orbit around the Sun, every four years we add one day. That day is called a leap day, and the year it is added to is called a leap year.Earth axis of rotation is tilted 23.4 degrees with respect to the plane of Earth orbit around the Sun. This tilt causes our yearly cycle of seasons. During part of the year, the northern hemisphere is tilted toward the Sun, and the southern hemisphere is tilted away. With the Sun higher in the sky, solar heating is greater in the north producing summer there. Less direct solar heating produces winter in the south. Six months later, the situation is reversed. When spring and fall begin, both hemispheres receive roughly equal amounts of heat from the Sun.', 'English', '4/30/2022', 9),
(10, 'Owls', 'Like hawks and eagles, owls are called raptors, or birds of prey, which means they use sharp talons and curved bills to hunt, kill, and eat other animals.But owls are different from hawks and eagles in several ways. Most owls have huge heads, stocky bodies, soft feathers, short tails, and a reversible toe that can point either forward or backward. Owl’s eyes face forward, like humans do. Most owl species are active at night, not in the daytime.There are about 250 species of owls in the world. They live on every continent except icy Antarctica.Owls belong to a group of birds called Strigiformes. That group is divided into two smaller groups, known as families. The family called Tytonidae includes Barn Owls, which have heart-shaped faces. The second family, Strigidae, includes all other owls, most of which have round faces.Many owls vocalize at a distinctively low frequency, which allows their songs to travel long distances without being absorbed by vegetation. Becoming familiar with these songs and other vocalizations will help you find and identify owls. \r\nMany owl species are nocturnal, meaning they are active at night. There are some owl species who are diurnal, however, meaning they are active during the day but rest at night. Crepuscular species are active during dusk and dawn.\r\nOwls spend much of their waking time hunting for food. Many owl species are carnivores, or meat eaters. Small, rodent-like mammals, such as voles and mice, are the primary prey for many owl species. An owl diet may also include frogs, lizards, snakes, fish, mice, rabbits, birds, squirrels, and other creatures. Occasionally, Great Horned Owls might even find skunks tasty enough to eat. Some owls, like the Flammulated Owl eat insects almost exclusively. Animals that eat insects are called insectivores.Owls hunt in various ways. One hunting technique is called perch and pounce. In this method owls perch comfortably until they see their prey, then glide down upon it; Northern Hawk Owls use this approach. Another approach to hunting, called quartering flight, is to search for prey while flying, as utilized by the Barn Owl. Sometimes owls – most often those that hunt in open country like the Short-eared Owl – hover like a helicopter above prey until they are ready to zoom in on it. Hovering takes a lot of energy. Burrowing Owls commonly run across the ground after their prey. In all methods, owls generally hunt close to the ground so that they can more easily hear and see their prey. Owls sometimes hide their food. They capture prey and use their bill to carefully stuff the food into a hiding spot. This is called caching (pronounced CASH-ing). Owls might cache prey in holes in trees, in the forks of tree branches, behind rocks, or in clumps of grass. Owls do this when the hunting is good in order to stock up and will usually go back for the prey within a day or two.', 'English', '4/29/2022', 10),
(11, 'Giraffe', 'Giraffes are the world tallest mammals, thanks to their towering legs and long necks. A giraffe legs alone are taller than many humans—about 6 feet . These long legs allow giraffes to run as fast as 35 miles an hour over short distances and cruise comfortably at 10 miles an hour over longer distances.\r\nTypically, these fascinating animals roam the open grasslands in small groups of about half a dozen. Bulls sometimes battle one another by butting their long necks and heads. Such contests are not usually dangerous and end when one animal submits and walks away.\r\nGiraffes use their height to good advantage and browse on leaves and buds in treetops that few other animals can reach (acacias are a favorite). Even the giraffe tongue is long! The 21-inch tongue helps them pluck tasty morsels from branches. Giraffes eat most of the time and, like cows, regurgitate food and chew it as cud. A giraffe eats hundreds of pounds of leaves each week and must travel miles to find enough food. The giraffe height also helps it to keep a sharp lookout for predators across the wide expanse of the African savanna. The giraffe stature can be a disadvantage as well—it is difficult and dangerous for a giraffe to drink at a water hole. To do so they must spread their legs and bend down in an awkward position that makes them vulnerable to predators like Africa big cats. Giraffes only need to drink once every several days; they get most of their water from the luscious plants they eat. Female giraffes give birth standing up. Their young endure a rather rude welcome into the world by falling more than 5 feet to the ground at birth. These infants can stand in half an hour and run with their mothers an incredible ten hours after birth.\r\nGiraffes have beautiful spotted coats. While no two individuals have exactly the same pattern, giraffes from the same area appear similar. Up until recently, the consensus has been there is only one species of giraffe with multiple subspecies. In 2016, some scientists released a study that claims genetic differences among giraffe populations indicate the existence of four distinct giraffe species.', 'English', '5/17/2022', 11),
(12, 'Lilacs', 'Lilac, About 25 species of fragrant and beautiful northern spring-flowering shrubs and small trees of the olive family (Oleaceae). Lilacs are native to eastern Europe and temperate Asia, and several are widely cultivated.\r\nLilac plants are deciduous, with deep green leaves arranged oppositely along the stems. The leaves are usually simple with entire margins, though the leaves of some species are lobed or compound. The small four-petalled flowers are borne in large oval clusters. The fruit is a leathery capsule.The common lilac (Syringa vulgaris), from southeastern Europe, is widely grown in temperate areas of the world. There are several hundred named varieties with single or double flowers in deep purple, lavender, blue, red, pink, white, and pale creamy yellow. The common lilac reaches a height of approximately 6 metres (20 feet) and produces many suckers (shoots from the stem or root). It may be grown as a shrub or hedge or, by clearing away the suckers, as a small tree.The weaker-stemmed Persian lilac (S. persica), ranging from Iran to China, droops over, reaching about 2 metres (6.5 feet) in height. Its flowers usually are pale lavender, but there are darker and even white varieties. Other decorative species are the dwarf Korean, or daphne, lilac (S. pubescens), about 1.5 to 3 metres (about 5 to 10 feet) tall, with lavender-pink flowers; the 4-metre- (13-feet-) tall nodding lilac (S. komarowii) of China, with pinkish flowers; and the Hungarian lilac (S. josikaèa), about 3 metres tall, with scentless bluish purple flowers. The Chinese, or Rouen, lilac (S. chinensis) is a thickly branched hybrid, a cross of the Persian and common lilacs.\r\nLilacs are part of New England’s horticultural heritage, but like much of the region’s diverse citizenry, are not native to North America. Of the 20-plus species of lilacs, two derive from Europe and the others are from Asia. The common lilac (Syringa vulgaris) originated in eastern Europe. This species and hybrids of it were so frequently grown and selected by French nurserymen that France became synonymous with fine lilacs; we know them today as “French hybrids.” Most lilac species hail from Asia, including two of the most popular choices for the contemporary landscape, Syringa patula ‘Miss Kim’ and S. meyeri ‘Palibin.’ The compact, later flowering ‘Miss Kim’ is noted for its intense fragrance; the neat growth habit of ‘Palibin’ fits well in the modern garden.\r\nKnown as plants for colder climates, lilacs need a period of cold-initiated dormancy to trigger flowering. New selections of lilacs are offered by hybridizers across the north temperate zone which includes Europe and most of North America and Asia. Today, lilac selections originate from across the globe and are sold under a variety of names. The cultivar epithet (name) surrounded by single quotes is published by the International Lilac Society who manages global registration. The Arnold Arboretum’s collection of lilacs is one of the oldest and largest in North America, but lilacs on our grounds predate the 1872 founding of the institution. Benjamin Bussey probably planted lilac hedgerows soon after he acquired the land in 1806. We have taken cuttings of the remnants of his lilacs, and have recreated hedgerows on the east side of what is now called the Explorers Garden on Bussey Hill. Our Lilac Sunday festival, celebrated the second Sunday in May, has become a tradition of its own. Attendance on any given Lilac Sunday is difficult to estimate, but one noteworthy peak occurred in 1941, when 43,000 people are said to have visited.', 'English', '4/20/2022', 12),
(13, 'Ancient Egypt', 'Civilization in northeastern Africa that dates from the 4th millennium BCE. Its many achievements, preserved in its art and monuments, hold a fascination that continues to grow as archaeological finds expose its secrets. This article focuses on Egypt from its prehistory through its unification under Menes (Narmer) in the 3rd millennium BCE—sometimes used as a reference point for Egypt’s origin—and up to the Islamic conquest in the 7th century CE. For subsequent history through the contemporary period.\r\nAncient Egypt can be thought of as an oasis in the desert of northeastern Africa, dependent on the annual inundation of the Nile River to support its agricultural population. The country’s chief wealth came from the fertile floodplain of the Nile valley, where the river flows between bands of limestone hills, and the Nile delta, in which it fans into several branches north of present-day Cairo. Between the floodplain and the hills is a variable band of low desert that supported a certain amount of game. The Nile was Egypt’s sole transportation artery.\r\nThe First Cataract at Asw?n, where the riverbed is turned into rapids by a belt of granite, was the country’s only well-defined boundary within a populated area. To the south lay the far less hospitable area of Nubia, in which the river flowed through low sandstone hills that in most regions left only a very narrow strip of cultivable land. Nubia was significant for Egypt’s periodic southward expansion and for access to products from farther south. West of the Nile was the arid Sahara, broken by a chain of oases some 125 to 185 miles (200 to 300 km) from the river and lacking in all other resources except for a few minerals. The eastern desert, between the Nile and the Red Sea, was more important, for it supported a small nomadic population and desert game, contained numerous mineral deposits, including gold, and was the route to the Red Sea.\r\nTo the northeast was the Isthmus of Suez. It offered the principal route for contact with Sinai, from which came turquoise and possibly copper, and with southwestern Asia, Egypt’s most important area of cultural interaction, from which were received stimuli for technical development and cultivars for crops. Immigrants and ultimately invaders crossed the isthmus into Egypt, attracted by the country’s stability and prosperity. From the late 2nd millennium BCE onward, numerous attacks were made by land and sea along the eastern Mediterranean coast.\r\nAt first, relatively little cultural contact came by way of the Mediterranean Sea, but from an early date Egypt maintained trading relations with the Lebanese port of Byblos (present-day Jbail). Egypt needed few imports to maintain basic standards of living, but good timber was essential and not available within the country, so it usually was obtained from Lebanon. Minerals such as obsidian and lapis lazuli were imported from as far afield as Anatolia and Afghanistan.\r\nMost Egyptians were probably descended from settlers who moved to the Nile valley in prehistoric times, with population increase coming through natural fertility. In various periods there were immigrants from Nubia, Libya, and especially the Middle East. They were historically significant and also may have contributed to population growth, but their numbers are unknown. Most people lived in villages and towns in the Nile valley and delta. Dwellings were normally built of mud brick and have long since disappeared beneath the rising water table or beneath modern town sites, thereby obliterating evidence for settlement patterns. In antiquity, as now, the most favoured location of settlements was on slightly raised ground near the riverbank, where transport and water were easily available and flooding was unlikely. Until the 1st millennium BCE, Egypt was not urbanized to the same extent as Mesopotamia. Instead, a few centres, notably Memphis and Thebes, attracted population and particularly the elite, while the rest of the people were relatively evenly spread over the land. The size of the population has been estimated as having risen from 1 to 1.5 million in the 3rd millennium BCE to perhaps twice that number in the late 2nd millennium and 1st millennium BCE. (Much higher levels of population were reached in Greco-Roman times.)', 'English', '5/20/2022', 13),
(14, 'Parrot Species', 'Parrots are wonderful, colourful birds that are found mostly in tropical regions as well as sub-tropical areas. They are known as Psittacines. These birds are from the order Psittaciformesand are then divided into three families, viz. Psittacoidea, Cacatuoidea and also Strigopoidea. Parrots are extremely colourful birds with feathers that can be long or short. Some of them are multicoloured too. There are many different types of parrots that are classified according to their size. They are intelligent birds who have the ability to speak. There has been a danger to their population due to poaching, but strict laws are now into place to save these birds.\r\nParrots are colourful birds that have a strong and curved bill, strong legs and claws. The birds have colourful feathers that can be single or multi. They eat mainly seeds, nuts, buds, and fruits. And, they make their nests in the hollow of trees and lays eggs that are white in colour. They hatch their young who are normally helpless little ones.\r\n\r\nSmall Size:\r\nThey are about 10-20cms in height.\r\nBudgies: These are about 10 – 15 cm in height. They are also known as Parakeet. Perfect talkers, they can learn to speak well and also do a lot of tricks. Their lifespan is about 7 to 15 years when kept in captivity.\r\nLovebirds: These African beauties are also some of the most popular choices. There are several varieties of these parrots with vivid colour feathers. Parrots are great pets who learn tricks. Their lifespan is about 15 to 25 years.\r\nParrotlets: This is the smallest species of parrots and one of the cutest. These species need exercise as well as socialisation. They do learn tricks and are perfect partners. These parrots live up to 30 years.\r\n\r\nMedium Size:\r\nThey are about 23-33cms in height.\r\nConures: These beautiful parrots are 10-15inches tall and are perfect medium size birds. They are loud birds so it can be bothered for some people in your apartment. They are intelligent and can speak.\r\nQuaker Parrots: Quaker parrots are about 12 inches in height and need a good size cage to keep them in. They are loud too but great companions.\r\nAsiatic Parakeets: Here are some great parrots that are medium-sized and perfect companions. They can learn to talk and do tricks as well.\r\n\r\nLarge Size:\r\nThey are about 33-50cms in height.\r\nBlue and Gold Macaws: Here are some of the most popular large parrots that you can find. They are intelligent birds doing tricks and learning to speak. They like to socialise too.\r\nAmazon Parrots: If you are looking for talking parrots, then this is the best choice. They are lovely birds which are great at socialising.\r\nCockatoos: The Cockatoos are large size parrots that range in size of about 15-20 inches. These are affectionate birds but are also quite high on maintenance.\r\n\r\nExtra Large:\r\nThey are about 55-100 cm in height.\r\nPalm Cockatoo: These are the goliath of parrots and are usually black or grey in color They have a black beak and red cheek patch.\r\nAlexandrine Parrot: Here are some beautiful parrots that are playful and can do tricks. They live for about 30 years.\r\nMacaw: These are really very beautiful parrots with bright coloured feathers that are long and graceful. They are social birds and make great companions. The Hyacinth Macaw is on the longest parrots.', 'English', '5/22/2022', 14),
(15, 'Ploto', 'Pluto is a complex and mysterious world with mountains, valleys, plains, craters, and maybe glaciers. Discovered in 1930, Pluto was long considered our solar system ninth planet. But after the discovery of similar intriguing worlds deeper in the distant Kuiper Belt, icy Pluto was reclassified as a dwarf planet.Pluto is only about 1,400 miles wide. At that small size, Pluto is only about half the width of the United States. It  about 3.6 billion miles away from the Sun, and it has a thin atmosphere composed mostly of nitrogen, methane, and carbon monoxide. On average, Pluto’s temperature is -387°F (-232°C), making it too cold to sustain life.Pluto is orbited by five known moons, the largest of which is Charon. Charon is about half the size of Pluto itself, making it the largest satellite relative to the planet it orbits in our solar system. Pluto and Charon are often referred to as a \"double planet.\"\r\nPluto is the only world (so far) named by an 11-year-old girl. In 1930, Venetia Burney of Oxford, England, suggested to her grandfather that the new discovery be named for the Roman god of the underworld. He forwarded the name to the Lowell Observatory and it was selected.Pluto moons are named for other mythological figures associated with the underworld. Charon is named for the river Styx boatman who ferries souls in the underworld (as well as honoring Sharon, the wife of discoverer James Christy); Nix is named for the mother of Charon, who is also the goddess of darkness and night; Hydra is named for the nine-headed serpent that guards the underworld; Kerberos is named after the three-headed dog of Greek mythology (and called Fluffy in the Harry Potter novels), and Styx is named for the mythological river that separates the world of the living from the realm of the dead. Pluto place in mythology can get a little muddled, so we asked Dr. Elizabeth Vandiver, chair of the Department of Classics in Whitman College in Walla Walla, Washington, to clarify the origins of the name: \"Pluto is the name of the Roman god of the Underworld, equivalent to the Greek Hades. However, the Greek name \"Plouton\" (from which the Romans derived their name \"Pluto\") was also occasionally used as an alternative name for Hades. But Pluto is definitely the Roman spelling.\"The surface of Pluto is extremely cold, so it seems unlikely that life could exist there. At such cold temperatures, water, which is vital for life as we know it, is essentially rock-like. Pluto interior is warmer, however, and some think there could even be an ocean deep inside.With a radius of 715 miles (1,151 kilometers), Pluto is about 1/6 the width of Earth. If Earth was the size of a nickel, Pluto would be about as big as a popcorn kernel.From an average distance of 3.7 billion miles (5.9 billion kilometers), Pluto is 39 astronomical units away from the Sun. One astronomical unit (abbreviated as AU), is the distance from the Sun to Earth. From this distance, it takes sunlight 5.5 hours to travel from the Sun to Pluto.If you were to stand on the surface of Pluto at noon, the Sun would be 1/900 the brightness it is here on Earth, or about 300 times as bright as our full moon. There is a moment each day near sunset here on Earth when the light is the same brightness as midday on Pluto. Find out when you can experience \"Pluto time\" where you live.', 'English', '5/27/2022', 15),
(16, 'Lions', 'African lions have been admired throughout history for as symbols of courage and strength. These iconic animals have powerful bodies—in the cat family, they’re second in size only to tigers—and roars that can be heard from five miles away. An adult lion’s coat is yellow-gold, and juveniles have some light spots that disappear with age. Only male lions typically boast manes, the impressive fringe of long hair that encircles their heads.\r\nAfrican lions once roamed most of Africa and parts of Asia and Europe. But the species has disappeared from 94 percent of its historic range and can only be found today in parts of sub-Saharan Africa. These lions mainly stick to the grasslands, scrub, or open woodlands where they can more easily hunt their prey, but they can live in most habitats aside from tropical rainforests and deserts. Asiatic lions (Panthera leo persica) are a subspecies of African lion, but only one very small population survives in India Gir Forest.\r\nLions are the only cats that live in groups, which are called prides—though there is one population of solitary lions. Prides are family units that may comprise anywhere from two to 40 lions—including up to to three or four males, a dozen or so females, and their young. All of a pride lionesses are related, and female cubs typically stay with the group as they age. Young males eventually leave and establish their own prides by taking over a group headed by another male. Males defend the pride territory, marking the area with urine, roaring menacingly to warn intruders, and chasing off animals that encroach on their turf. Female lions are the pride primary hunters and leaders. They often work together to prey upon antelopes, zebras, wildebeest, and other large animals of the open grasslands. Many of these animals are faster than lions, so teamwork pays off. Female lions also raise their cubs communally. After the hunt, the group effort often degenerates to squabbling over the sharing of the kill, with cubs at the bottom of the pecking order. Young lions do not help to hunt until they are about a year old. Lions will hunt alone if the opportunity presents itself, and they also steal kills from hyenas or wild dogs.', 'English', '5/27/2022', 16);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CategoryID` int(20) NOT NULL,
  `type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CategoryID`, `type`) VALUES
(1, 'History'),
(2, 'Birds and Parrots'),
(3, 'Space and Universe'),
(4, 'Animal and Plants');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `ContentID` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `UserID` int(20) NOT NULL,
  `CategoryID` int(20) DEFAULT NULL,
  `AdminID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `content`
--

INSERT INTO `content` (`ContentID`, `name`, `UserID`, `CategoryID`, `AdminID`) VALUES
(1, 'World Map', 1, 1, NULL),
(2, 'Rome Colosseum', 2, 1, NULL),
(3, 'Sea Monster', 1, 1, NULL),
(4, 'Parrot', 2, 2, NULL),
(5, 'Cocktail', 1, 2, NULL),
(6, 'Birds', 2, 2, NULL),
(7, 'Universe', 1, 3, NULL),
(8, 'Milky Way', 2, 3, NULL),
(9, 'Earth', 2, 3, NULL),
(10, 'Owls', 1, 4, NULL),
(11, 'Giraffe', 2, 4, NULL),
(12, 'Lilacs', 2, 4, NULL),
(13, 'Ancient Egypt', 2, 1, 1),
(14, 'Parrot Species', 2, 2, 1),
(15, 'Ploto', 1, 3, 1),
(16, 'Lions', 1, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `UserID` int(20) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL,
  `AdminID` int(20) DEFAULT NULL,
  `LoginDate` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserID`, `Username`, `Email`, `password`, `AdminID`, `LoginDate`) VALUES
(1, 'saadsaad', 'saad.SwT@gmail.com', 'Saad@SwT599', 1, '5/25/2022 9:27:57 PM'),
(2, 'RanaMostafa', 'fairydreams.rm@gmail.com', 'Rana@SwT899', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `VideoID` int(20) NOT NULL,
  `VideoName` varchar(50) NOT NULL,
  `VideoContent` blob NOT NULL,
  `Resolution` varchar(30) NOT NULL,
  `ContentID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `voice_rec`
--

CREATE TABLE `voice_rec` (
  `VoiceRecID` int(20) NOT NULL,
  `VoiceRecName` varchar(50) NOT NULL,
  `VoiceContent` blob NOT NULL,
  `Player_Type` varchar(30) NOT NULL,
  `ContentID` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`AdminID`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ArticleID`),
  ADD KEY `ContentID` (`ContentID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`ContentID`),
  ADD KEY `UserID` (`UserID`,`CategoryID`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD KEY `AdminID` (`AdminID`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`VideoID`),
  ADD KEY `ContentID` (`ContentID`);

--
-- Indexes for table `voice_rec`
--
ALTER TABLE `voice_rec`
  ADD PRIMARY KEY (`VoiceRecID`),
  ADD KEY `ContentID` (`ContentID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `AdminID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `ArticleID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `VideoID` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `voice_rec`
--
ALTER TABLE `voice_rec`
  MODIFY `VoiceRecID` int(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ContentID`);

--
-- Constraints for table `content`
--
ALTER TABLE `content`
  ADD CONSTRAINT `content_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `user` (`UserID`),
  ADD CONSTRAINT `content_ibfk_2` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`);

--
-- Constraints for table `video`
--
ALTER TABLE `video`
  ADD CONSTRAINT `video_ibfk_1` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ContentID`);

--
-- Constraints for table `voice_rec`
--
ALTER TABLE `voice_rec`
  ADD CONSTRAINT `voice_rec_ibfk_1` FOREIGN KEY (`ContentID`) REFERENCES `content` (`ContentID`);
COMMIT;