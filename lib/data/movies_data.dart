// Dummy movies data
import 'package:animated_movies_app/constants/images_path.dart';
import 'package:animated_movies_app/model/movies_model.dart';

class MoviesData {
  static List<Movies> movies = [
    Movies(
      id: "1",
      name: "Avengers End Game",
      movieTypeAndEpisode: "2019 | Action, Crime, Drama | Parts-2",
      rating: 5,
      coverImage: ImagePath.avengers,
      plot:
          "Avengers is a superhero film franchise produced by Marvel Studios, revolving around a team of superheroes assembled to combat threats too significant for any single hero to handle. The core members include Iron Man, Captain America, Thor, the Hulk, Black Widow, and Hawkeye. The team initially forms to stop the demigod Loki and his alien army from conquering Earth. Over the series, they face increasingly formidable foes, culminating in a battle against Thanos, a powerful titan seeking to wipe out half of the universe's population using the Infinity Stones. The Avengers must overcome personal differences and unite their strengths to save the universe.",
    ),
    Movies(
        id: "2",
        name: "Lucifer",
        movieTypeAndEpisode: "2015 | Action, Crime, Drama | Seasons-6",
        rating: 3,
        coverImage: ImagePath.lucifer,
        plot:
            "Lucifer is a television series based on the DC Comics character Lucifer Morningstar. Lucifer, the Devil, grows bored with his life in Hell and decides to retire to Los Angeles, where he opens a nightclub called Lux. He becomes a civilian consultant for the LAPD, using his powers of persuasion and invulnerability to solve crimes and deliver justice. Throughout the series, Lucifer struggles with his identity, moral dilemmas, and his feelings for detective Chloe Decker, ultimately seeking redemption and exploring the nature of good and evil."),
    Movies(
        id: "3",
        name: "Morbius",
        movieTypeAndEpisode: "2022 | Action, Crime, Drama | Parts-1",
        rating: 3,
        coverImage: ImagePath.morbius,
        plot:
            "Morbius is a film based on the Marvel Comics character Dr. Michael Morbius, a biochemist suffering from a rare blood disorder. Desperate for a cure, he undergoes an experimental treatment involving vampire bat DNA. The procedure transforms him into a living vampire with superhuman abilities, such as echolocation and enhanced strength, but also a thirst for human blood. Morbius grapples with his new identity and the consequences of his actions, balancing his desire to save lives with the monstrous urges he must control."),
    Movies(
        id: "4",
        name: "Money Heist",
        movieTypeAndEpisode: "2022 | Action, Crime, Drama | Parts-5",
        rating: 4,
        coverImage: ImagePath.moneyHeist,
        plot:
            "Money Heist (La Casa de Papel) is a Spanish heist crime drama series that follows a criminal mastermind known as The Professor, who plans the biggest heist in recorded history: printing billions of euros in the Royal Mint of Spain. To execute the ambitious plan, he recruits eight skilled criminals, each with a unique codename based on cities. As they take hostages and negotiate with the police, internal conflicts, and romantic entanglements complicate the mission. The series is filled with suspense, emotional depth, and intricate plotting as the team battles to achieve their goal while maintaining their lives and relationships."),
    Movies(
        id: "5",
        name: "Samaritan",
        movieTypeAndEpisode: "2022 | Action, Crime, Drama | Parts-1",
        rating: 3,
        coverImage: ImagePath.samartin,
        plot:
            "Samaritan is a superhero film about a young boy named Sam who suspects that his reclusive neighbor, Mr. Smith, is actually a legendary vigilante named Samaritan who was thought to have died 25 years ago. Samaritan was a super-powered individual who fought crime in Granite City. As crime rises in the city, Sam endeavors to bring Samaritan out of retirement to restore peace and justice. The movie explores themes of redemption, heroism, and the impact of past actions on the present, with Mr. Smith confronting his dark history and the responsibilities of being a hero once more."),
    Movies(
        id: "6",
        name: "Sex Education",
        movieTypeAndEpisode: "2020 | Action, Crime, Drama | Parts-3",
        rating: 4,
        coverImage: ImagePath.sexEducation,
        plot:
            "Sex Education is a British comedy-drama series that follows Otis Milburn, a socially awkward teenager whose mother is a sex therapist. Despite his lack of personal experience, Otis possesses extensive knowledge about sex and relationships due to his mother's profession. Alongside Maeve Wiley, a rebellious classmate, Otis starts an underground sex therapy clinic at their high school to help fellow students with their sexual and emotional issues. The series tackles various topics such as sexuality, identity, intimacy, and consent, offering a candid and humorous look at the challenges of adolescence. Throughout the show, Otis navigates his own romantic feelings, family dynamics, and friendships while offering support to his peers"),
  ];
}
