// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tile View App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TileViewScreen(),
    );
  }
}

class TileViewScreen extends StatefulWidget {
  const TileViewScreen({Key? key}) : super(key: key);

  @override
  _TileViewScreenState createState() => _TileViewScreenState();
}

class _TileViewScreenState extends State<TileViewScreen> {
  String selectedName = '';
  bool showDetails = false;

  final List<Map<String, dynamic>> data = [
    {
      'name': 'Penguins: Natures Playful Wonders',
      'image': 'assets/penguins.jpg',
      'description':
          'Penguins are some of the most fascinating and beloved creatures in the animal kingdom. These flightless birds are often associated with the icy landscapes of Antarctica, but they can also be found in various parts of the Southern Hemisphere, from the Galapagos Islands to the shores of South Africa. Penguins are renowned for their distinctive appearance, remarkable adaptations, and endearing behaviors. One of the most striking features of penguins is their unique appearance. They have a streamlined body covered in sleek, waterproof feathers that are essential for survival in their cold and watery habitats. Penguins come in various sizes, with the Emperor Penguin being the largest, standing over three feet tall, while the Little Blue Penguin is the smallest, measuring just over a foot. Their black and white plumage serves as excellent camouflage while swimming, as it makes them difficult for predators like seals and orcas to spot from above or below. Adapted for a life in the water, penguins are exceptional swimmers. Their flipper-like wings are perfectly designed for steering and propelling them through the ocean at astonishing speeds. Underwater, penguins can outmaneuver many on their predators and catch prey such as fish, squid, and krill. They have specialized glands that allow them to excrete excess salt, a crucial adaptation for conserving water while at sea. Beyond their physical adaptations, penguins exhibit fascinating social behaviors. They often form large colonies for breeding and raising their young, providing them with protection from the cold and predators. Emperor Penguins, for instance, gather in tightly packed groups to huddle and share body heat during the harsh Antarctic winters. Penguins are also known for their adorable and sometimes comical waddling gait on land. Their awkward walk is a result of their body structure, as their legs are positioned towards the rear of their bodies, making them well-suited for swimming but less so for walking. Nevertheless, their endearing waddle has endeared them to people worldwide, making them popular attractions in zoos and aquariums. In conclusion, penguins are extraordinary creatures that have captured the hearts of people around the globe. Their distinctive appearance, remarkable adaptations, and charming behaviors make them a source of wonder and inspiration. As we continue to learn more about these remarkable birds, we gain a deeper appreciation for the beauty and diversity of life on Earth.',
    },
    {
      'name': 'The Philippine Tamaraw: A Struggle for Survival',
      'image': 'assets/tamaraws.jpg',
      'description':
          'The Philippine tamaraw (Bubalus mindorensis) is one of the most endangered species on Earth, teetering on the brink of extinction. This unique buffalo species is endemic to the Philippines and is found exclusively on the island of Mindoro. Unfortunately, habitat loss, hunting, and disease have pushed these gentle giants to the edge of existence. Standing about four and a half feet tall at the shoulder, tamaraws are relatively small compared to other buffalo species. They possess distinct V-shaped horns and a dark brown coat. Unlike their water buffalo relatives, tamaraws are forest-dwelling creatures, residing in grasslands and thickets at higher elevations. Their diet mainly consists of grasses and various plants. The tamaraws decline is primarily attributed to habitat destruction caused by deforestation and illegal logging activities. As Mindoros forests vanish, the tamaraws lose both their home and their food sources. Additionally, the spread of agriculture into their territory has further fragmented their habitat, isolating already dwindling populations. Poaching and hunting have also taken a heavy toll on these animals. Tamaraw horns are highly prized in the illegal wildlife trade, fetching a significant price on the black market. Despite legal protections and conservation efforts, these buffalo remain vulnerable to poachers who exploit the tamaraws isolated habitats.Another pressing threat is the risk of disease transmission from domestic livestock. Tamaraws are susceptible to diseases carried by introduced cattle and water buffalo. Interactions with domestic animals pose a significant challenge to tamaraw conservation efforts, as disease outbreaks can decimate already fragile populations. Efforts to save the Philippine tamaraw include establishing protected areas, captive breeding programs, and raising awareness about their plight. The Tamaraw Conservation Program, led by various governmental and non-governmental organizations, strives to protect their remaining habitats, monitor populations, and combat illegal poaching. In conclusion, the Philippine tamaraw serves as a stark reminder of the urgent need for conservation action. With a population that now numbers in the hundreds, this unique species is in critical danger of disappearing forever. Protecting the tamaraws remaining habitat, addressing poaching, and managing disease transmission are essential steps in ensuring the survival of this iconic Philippine species. Through dedicated conservation efforts and public awareness, we can still hope to secure a future for the tamaraw on its native island of Mindoro.',
    },
    {
      'name': 'The Enigmatic Tarsier: A Tiny Primate with Big Mysteries',
      'image': 'assets/eagle.jpg',
      'description':
          'The tarsier, a diminutive and captivating primate, is a testament to the wonders of nature. With its unique appearance and intriguing behaviors, this small creature has captured the imagination of researchers and wildlife enthusiasts alike. Tarsiers belong to the Tarsiidae family and are primarily found in Southeast Asia, including the Philippines, Borneo, and Sumatra. Their most distinctive feature is their enormous eyes, which are each roughly the same size as their brains. These large eyes are adapted for excellent night vision, allowing tarsiers to hunt for insects and small vertebrates during the dark hours. Another striking characteristic of tarsiers is their remarkably long fingers and toes, which are equipped with adhesive pads at the tips. These specialized digits give them an extraordinary ability to leap and cling to trees effortlessly, making them exceptional hunters in their forested habitats. Tarsiers are also known for their unique rotational head movement, which allows them to scan their surroundings with precision. Despite their intriguing physical attributes, tarsiers are currently facing significant conservation challenges. Habitat loss due to deforestation and agricultural expansion is one of the primary threats to their survival. As their forest homes disappear, tarsiers become increasingly vulnerable to predators and the loss of their main food source, insects. Tarsiers are also highly sensitive to human disturbance. They are prone to stress in captivity and can be challenging to rehabilitate for release back into the wild. Illegal pet trade adds to their troubles, as these endearing creatures are sometimes captured and sold as exotic pets, further endangering wild populations. Efforts to protect tarsiers include establishing protected areas, advocating responsible tourism, and supporting research into their biology and behavior. Conservation organizations are working tirelessly to raise awareness about the importance of preserving these unique primates and their habitats. In conclusion, tarsiers are small, enigmatic primates with a host of fascinating characteristics. Their large eyes, agile limbs, and distinctive behaviors have earned them a special place in the hearts of those who study and appreciate the diversity of life on Earth. However, the challenges they face in the wild are significant, making it imperative that we take action to protect these remarkable creatures and the ecosystems they call home. Through education and conservation efforts, we can hope to secure a brighter future for tarsiers in their natural environments.',
    },
    {
      'name': 'The Visayan Warty Pig: A Rare and Endangered Treasure',
      'image': 'assets/wild pig.jpg',
      'description':
          'The Visayan warty pig (Sus cebifrons) stands as an emblem of rarity and resilience. Native to the Philippines, specifically the Visayan Islands in the central part of the archipelago, this unique pig species faces numerous challenges to its survival but offers a compelling story of hope and conservation. Visayan warty pigs are distinguishable by their striking appearance. Covered in a coarse and bristly coat, these pigs have distinct warts on their faces, lending them their name. They exhibit sexual dimorphism, with males typically sporting larger warts than females. These small to medium-sized pigs are herbivorous, feeding primarily on roots, tubers, and fallen fruits found in the forests they inhabit. Habitat loss is one of the most pressing threats to the Visayan warty pigs survival. Deforestation and land conversion for agriculture have dramatically reduced their natural habitat. Additionally, illegal hunting and the introduction of invasive species further exacerbate the challenges they face in the wild. Conservation efforts are crucial to preserving this rare species. Several organizations and governmental bodies have initiated projects to protect and restore the Visayan warty pigs habitats. These initiatives include establishing protected areas and captive breeding programs aimed at increasing their numbers and genetic diversity. One of the remarkable success stories in Visayan warty pig conservation is the Talarak Foundations work in Negros Island. By collaborating with local communities and implementing sustainable land management practices, they have not only helped protect the pigs but also improved the livelihoods of residents. The Visayan warty pig has become a symbol of conservation and sustainable development in the region. Public awareness and education play a vital role in safeguarding these unique creatures. As more people become aware of the Visayan warty pigs plight and the importance of preserving biodiversity, the chances of securing their future increase. In conclusion, the Visayan warty pig is a remarkable and endangered species found only in a limited part of the Philippines. Its distinctive appearance and unique ecological niche make it a species worth preserving. Through concerted conservation efforts, habitat protection, and community engagement, we can hope to ensure that this fascinating and rare pig continues to roam the forests of the Visayan Islands for generations to come.',
    },
    {
      'name': 'The Majestic Whale Shark: Butanding of the Philippines',
      'image': 'assets/butanding.jpg',
      'description':
          'In the warm and pristine waters of the Philippines, a gentle giant roams beneath the surface  the awe-inspiring whale shark, affectionately known locally as "butanding." The worlds largest living fish, the whale shark (Rhincodon typus), is not only a marvel of nature but also an emblem of conservation efforts and ecotourism in the Philippines. Whale sharks are true giants of the ocean, with some individuals reaching lengths of up to 60 feet or more. Despite their enormous size, they are known for their peaceful nature and filter-feeding habits. These gentle giants glide through the water, their enormous mouths wide open, filtering plankton, small fish, and other microscopic organisms through their gill plates, which act like a sieve. The Philippines, with its rich marine biodiversity, is a critical habitat for whale sharks. Particularly, the waters surrounding Donsol in Sorsogon and Oslob in Cebu have gained international recognition as prime locations for encountering these magnificent creatures. The whale shark season in Donsol, from November to June, has become a significant ecotourism draw. Tourists flock to the area for a chance to snorkel or dive with these giants, contributing to the local economy while raising awareness about the need for conservation. However, this increased interaction with whale sharks has also raised concerns about the potential negative impacts on the animals and their habitats. Proper guidelines and regulations have been implemented to ensure responsible tourism practices. Tour operators and authorities work together to educate visitors on the importance of maintaining a respectful distance, not touching the sharks, and not using flash photography, which can disturb them. Conservation organizations, such as the World Wildlife Fund (WWF) and local government agencies, are actively engaged in research and conservation efforts to protect the whale sharks and their habitats. These initiatives include satellite tracking to monitor their movements and the enforcement of marine protected areas. The story of the butanding in the Philippines is a testament to the power of conservation and sustainable tourism. Through responsible practices and a commitment to preserving their natural habitats, these gentle giants continue to thrive, offering both Filipinos and visitors the opportunity to witness the magnificence of the worlds largest fish while ensuring their continued existence for generations to come. The butanding stands not only as a symbol of ecological importance but also as a symbol of hope and the potential for harmonious coexistence between humans and the natural world.',
    },
    {
      'name': 'The Philippine Eagle: Haribon, the Majestic Guardian of the Sky',
      'image': 'assets/eagle.jpg',
      'description':
          'TIn the heart of the Philippines, a symbol of pride, strength, and conservation soars through the skies - the magnificent Philippine Eagle, known locally as "Haribon" or the "Monkey-Eating Eagle." This critically endangered bird is not just a national treasure but also a testament to the urgent need for conservation.  The Philippine Eagle (Pithecophaga jefferyi) is one of the worlds largest and most powerful eagles, with a wingspan that can exceed seven feet. Their striking appearance features a prominent crest of feathers atop their head, long and sturdy talons, and a strong, hooked beak, perfectly adapted for hunting in their forested mountain habitats. What sets the Philippine Eagle apart is its unique diet. Although it rarely eats monkeys, as its local name suggests, it primarily preys on flying lemurs, civets, and various tree-dwelling mammals. This specialization is a reflection of the eagles role as a top predator in its ecosystem.  Sadly, the Philippine Eagles very existence is under threat due to habitat loss and hunting. The destruction of its tropical rainforest habitat through logging, mining, and agriculture has led to a drastic reduction in its population and range. Additionally, the illegal pet trade poses a grave threat, with young eagles often captured and sold on the black market. Conservationists, NGOs, and the Philippine government have launched concerted efforts to save this iconic species. These efforts include habitat protection, captive breeding programs, and education campaigns to raise awareness about the importance of preserving this majestic bird and its habitat. One of the most critical initiatives is the Philippine Eagle Foundation, which is dedicated to the conservation of the Philippine Eagle and its forests. They manage a conservation center and breeding facilities, which have successfully bred eagles for eventual release into the wild. The Philippine Eagle, or Haribon, is not just a national symbol; it embodies the rich biodiversity and natural heritage of the Philippines. It serves as a reminder of the fragile balance between human development and the preservation of unique and precious wildlife. By supporting conservation efforts, we can ensure that this magnificent bird continues to grace our skies, serving as a symbol of hope and a call to action for the protection of our natural world. The fate of the Philippine Eagle is intertwined with the health of its forest home, making its conservation an urgent and noble cause.',
    },
  ];

  Widget buildDetailsView() {
    final selectedItem =
        data.firstWhere((element) => element['name'] == selectedName);

    return Column(
      children: [
        Image.asset(
          selectedItem['image'],
          height: 200,
        ),
        Text(
          selectedName,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            selectedItem['description'],
            style: const TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget buildGridView() {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 3, // Adjust this value to control the number of columns
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) => InkWell(
        onTap: () {
          setState(() {
            selectedName = data[index]['name'];
            showDetails = true;
          });
        },
        child: Card(
          elevation: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                data[index]['image'],
                height: 100,
                width: 100,
                fit: BoxFit.cover,
              ),
              Text(data[index]['name']),
            ],
          ),
        ),
      ),
      staggeredTileBuilder: (int index) =>
          StaggeredTile.count(1, 1), // Adjust this value for tile size
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('A N I M A L   A P P'),
      ),
      body: showDetails ? buildDetailsView() : buildGridView(),
      floatingActionButton: showDetails
          ? FloatingActionButton(
              onPressed: () {
                setState(() {
                  showDetails = false;
                });
              },
              child: const Icon(Icons.arrow_back),
            )
          : null,
    );
  }
}
