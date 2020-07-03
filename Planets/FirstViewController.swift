//
//  FirstViewController.swift
//  Planets
//
//  Created by Michael Feldmann on 6/29/20.
//  Copyright © 2020 Bounding-22 LLC. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var planetToSend : Planet!

   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableCellID", for: indexPath) as! TableViewCell
        let item = globalPlanets[indexPath.row]
        cell.planetName?.text = item.name
        cell.planetDescription.text = item.shortDescription
        cell.planetImage.image = item.image
        return cell
    
   }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return globalPlanets.count
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        tableView.rowHeight = 200
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
        planetToSend = globalPlanets[indexPath.row]
        performSegue(withIdentifier: "detailSegway", sender: cell)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let newViewController = segue.destination as! DetailViewController
        
        newViewController.planet = planetToSend
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       let pluto = Planet(name: "Pluto", shortDesc: "Dwarf Planet", img: UIImage(named: "pluto-1")!, distanceFromSun: 5874000000, lengthOfYr: 90520, diam: 2372, fact: "It not actually a planet!", longDesc: "Pluto (minor planet designation: 134340 Pluto) is an icy dwarf planet in the Kuiper belt, a ring of bodies beyond the orbit of Neptune. It was the first and the largest Kuiper belt object to be discovered.\n\nPluto was discovered by Clyde Tombaugh in 1930 and declared to be the ninth planet from the Sun. After 1992, its status as a planet was questioned following the discovery of several objects of similar size in the Kuiper belt. In 2005, Eris, a dwarf planet in the scattered disc which is 27% more massive than Pluto, was discovered. This led the International Astronomical Union (IAU) to define the term \"planet\" formally in 2006, during their 26th General Assembly. That definition excluded Pluto and reclassified it as a dwarf planet. \n\nIt is the ninth-largest and tenth-most-massive known object directly orbiting the Sun. It is the largest known trans-Neptunian object by volume but is less massive than Eris. Like other Kuiper belt objects, Pluto is primarily made of ice and rock and is relatively small—one-sixth the mass of the Moon and one-third its volume. It has a moderately eccentric and inclined orbit during which it ranges from 30 to 49 astronomical units or AU (4.4–7.4 billion km) from the Sun. This means that Pluto periodically comes closer to the Sun than Neptune, but a stable orbital resonance with Neptune prevents them from colliding. Light from the Sun takes 5.5 hours to reach Pluto at its average distance (39.5 AU).\n\nPluto has five known moons: Charon (the largest, with a diameter just over half that of Pluto), Styx, Nix, Kerberos, and Hydra. Pluto and Charon are sometimes considered a binary system because the barycenter of their orbits does not lie within either body.\n\nThe New Horizons spacecraft performed a flyby of Pluto on July 14, 2015, becoming the first ever, and to date only, spacecraft to do so. During its brief flyby, New Horizons made detailed measurements and observations of Pluto and its moons. In September 2016, astronomers announced that the reddish-brown cap of the north pole of Charon is composed of tholins, organic macromolecules that may be ingredients for the emergence of life, and produced from methane, nitrogen and other gases released from the atmosphere of Pluto and transferred 19,000 km (12,000 mi) to the orbiting moon.", webLink: URL(string: "https://space-facts.com/pluto/")!)
       
       let mars = Planet(name: "Mars", shortDesc: "Red Planet", img: UIImage(named: "mars2")!, distanceFromSun: 227943824, lengthOfYr: 1.9, diam: 6779, fact: "Mars is home to the tallest mountain in the entire solar system.", longDesc: "Only 18 missions to Mars have been successful. As of September 2014 there have been 40 missions to Mars, including orbiters, landers and rovers but not counting flybys. The most recent arrivals include the Mars Curiosity mission in 2012, the MAVEN mission, which arrived on September 22, 2014, followed by the Indian Space Research Organization’s MOM Mangalyaan orbiter, which arrived on September 24, 2014. The next missions to arrive will be the European Space Agency’s ExoMars mission, comprising an orbiter, lander, and a rover, followed by NASA’s InSight robotic lander mission, slated for launch in March 2016 and a planned arrival in September, 2016.\n\nMars has the largest dust storms in the solar system. They can last for months and cover the entire planet. The seasons are extreme because its elliptical (oval-shaped) orbital path around the Sun is more elongated than most other planets in the solar system.\n\nOn Mars the Sun appears about half the size as it does on Earth.At the closest point to the Sun, the Martian southern hemisphere leans towards the Sun, causing a short, intensely hot summer, while the northern hemisphere endures a brief, cold winter: at its farthest point from the Sun, the Martian northern hemisphere leans towards the Sun, causing a long, mild summer, while the southern hemisphere endures a lengthy, cold winter.\n\nPieces of Mars have fallen to Earth. Scientists have found tiny traces of Martian atmosphere within meteorites violently ejected from Mars, then orbiting the solar system amongst galactic debris for millions of years, before crash landing on Earth. This allowed scientists to begin studying Mars prior to launching space missions.", webLink: URL(string: "https://space-facts.com/mars/")!)
       
       let earth = Planet(name: "Earth", shortDesc: "Blue Planet", img: UIImage(named: "earth")!, distanceFromSun: 149598262 , lengthOfYr: 365.25, diam: 12742, fact: "Earth is the only planet not named after a god.", longDesc: "We live here :)", webLink: URL(string: "https://space-facts.com/earth/")!)
       
       let mercury = Planet(name: "Mercury", shortDesc: "Smallest Planet", img: UIImage(named: "mercury")!, distanceFromSun: 57909227, lengthOfYr: 88, diam: 4879, fact: "It’s not known who discovered Mercury.", longDesc: "Mercury has a molten core. In recent years scientists from NASA have come to believe the solid iron core of Mercury could in fact be molten. Normally the core of smaller planets cools rapidly, but after extensive research, the results were not in line with those expected from a solid core. Scientists now believe the core to contain a lighter element such as sulphur, which would lower the melting temperature of the core material. It is estimated Mercury’s core makes up 42% of its volume, while the Earth’s core makes up 17%.\n\nMercury is only the second hottest planet. Despite being further from the Sun,Venusexperiences higher temperatures.The surface of Mercury which faces the Sun sees temperatures of up to 427°C, whilst on the alternate side this can be as low as -173°C. This is due to the planet having no atmosphere to help regulate the temperature.\n\nMercury is the most cratered planet in the Solar System. Unlike many other planets which “self-heal” through natural geological processes, the surface of Mercury is covered in craters. These are caused by numerous encounters with asteroids and comets. Most Mercurian craters are named after famous writers and artists. Any crater larger than 250 kilometres in diameter is referred to as a Basin. The Caloris Basin is the largest impact crater on Mercury covering approximately 1,550 km in diameter and was discovered in 1974 by the Mariner 10 probe.\n\nOnly two spacecraft have ever visited Mercury. Owing to its proximity to the Sun, Mercury is a difficult planet to visit. During 1974 and 1975 Mariner 10 flew by Mercury three times, during this time they mapped just under half of the planet’s surface. On August 3rd 2004, the Messenger probe was launched from Cape Canaveral Air Force Station, this was the first spacecraft to visit since the mid 1970’s.", webLink: URL(string: "https://space-facts.com/mercury/")!)
       
       let jupiter = Planet(name: "Jupiter", shortDesc: "Gas Giant", img: UIImage(named: "jupite")!, distanceFromSun: 778340821, lengthOfYr: 11.9, diam: 139822, fact: "Jupiter has the shortest day of all the planets.", longDesc: "Jupiter’s Great Red Spot: \n\nSituated 22° south of Jupiter’s equator, the Great Red Spot is a storm that has been raging for at least 186 years. Upper estimates suggest the storm could have been in existence for over three and a half centuries.\n\nThe first observation of the Great Red Spot was in the seventeenth century, when telescopes first started to be used. However, it is unknown whether this is the same red spot that we see today, or whether Jupiter has had many such storms that have come and gone.\n\nThe red spot spins anticlockwise and takes six (Earth) days to rotate completely. Another mystery surrounding the red spot is what makes it red. Scientists have several theories, for instance, the presence of red organic compounds.\n\nJupiter’s Atmosphere:\n\nJupiter’s atmosphere is the solar system’s largest planetary atmosphere. It is composed of hydrogen (90%) and helium (10%), in roughly the same proportions found in the Sun . It also contains much smaller amounts of other gases, such as ammonia, methane and water.", webLink: URL(string: "https://space-facts.com/jupiter/")!)
        
        globalPlanets.append(jupiter)
        globalPlanets.append(mercury)
        globalPlanets.append(earth)
        globalPlanets.append(mars)
        globalPlanets.append(pluto)
        
        tableView.delegate = self
        tableView.dataSource = self
    }


}

