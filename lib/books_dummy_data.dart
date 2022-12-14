import './models/book.dart';

final List<Book> booksList = [
  Book(
    id: 1,
    author: 'Jk Rowling',
    title: 'Harry potte e i doni della morte',
    body: """Mr and Mrs Dursley, of number four, Privet Drive, were proud to say that they were perfectly normal,
    thank you very much. They were the last people you’d expect to be involved in anything strange or mysterious, because they just didn’t hold with such nonsense.
    Mr Dursley was the director of a firm called Grunnings, which made drills. He was a big, beefy man
    with hardly any neck, although he did have a very large moustache. Mrs Dursley was thin and blonde and
    had nearly twice the usual amount of neck, which came in very useful as she spent so much of her time
    craning over garden fences, spying on the neighbours. The Dursleys had a small son called Dudley and in
    their opinion there was no finer boy anywhere.
    The Dursleys had everything they wanted, but they also had a secret, and their greatest fear was that
    somebody would discover it. They didn’t think they could bear it if anyone found out about the Potters.
    Mrs Potter was Mrs Dursley’s sister, but they hadn’t met for several years; in fact, Mrs Dursley pretended
    she didn’t have a sister, because her sister and her good-for-nothing husband were as unDursleyish as it
    was possible to be. The Dursleys shuddered to think what the neighbours would say if the Potters arrived
    in the street. The Dursleys knew that the Potters had a small son, too, but they had never even seen him.
    This boy was another good reason for keeping the Potters away; they didn’t want Dudley mixing with a
    child like that.
    When Mr and Mrs Dursley woke up on the dull, grey Tuesday our story starts, there was nothing about
    the cloudy sky outside to suggest that strange and mysterious things would soon be happening all over
    the country. Mr Dursley hummed as he picked out his most boring tie for work and Mrs Dursley gossiped
    away happily as she wrestled a screaming Dudley into his high chair.
    None of them noticed a large tawny owl flutter past the window.
    At half past eight, Mr Dursley picked up his briefcase, pecked Mrs Dursley on the cheek and tried to
    kiss Dudley goodbye but missed, because Dudley was now having a tantrum and throwing his cereal at
    the walls. ‘Little tyke,’ chortled Mr Dursley as he left the house. He got into his car and backed out of
    number four’s drive.
    It was on the corner of the street that he noticed the first sign of something peculiar – a cat reading a
    map. For a second, Mr Dursley didn’t realise what he had seen – then he jerked his head around to look
    again. There was a tabby cat standing on the corner of Privet Drive, but there wasn’t a map in sight. What
    could he have been thinking of? It must have been a trick of the light. Mr Dursley blinked and stared at
    the cat. It stared back. As Mr Dursley drove around the corner and up the road, he watched the cat in his
    mirror. It was now reading the sign that said Privet Drive – no, looking at the sign; cats couldn’t read
    maps or signs. Mr Dursley gave himself a little shake and put the cat out of his mind. As he drove towards
    town he thought of nothing except a large order of drills he was hoping to get that day.
    But on the edge of town, drills were driven out of his mind by something else. As he sat in the usual
    morning traffic jam, he couldn’t help noticing that there seemed to be a lot of strangely dressed people
    about. People in cloaks. Mr Dursley couldn’t bear people who dressed in funny clothes – the get-ups you
    saw on young people! He supposed this was some stupid new fashion. He drummed his fingers on the
    steering wheel and his eyes fell on a huddle of these weirdos standing quite close by. They were whisper""",
    image: 'https://static.dezeen.com/uploads/2021/04/harry-potter-michele-de-lucchi-covers_dezeen_2364_col_21-scaled.jpg',
    description: 'A clash between good and evil awaits as young Harry (Daniel Radcliffe), Ron (Rupert Grint) and Hermione (Emma Watson) prepare for a final battle against Lord Voldemort (Ralph Fiennes). Harry has grown into a steely lad on a mission to rid the world of evil. The friends must search for the Horcruxes that keep the dastardly wizard immortal. Harry and Voldemort meet at Hogwarts Castle for an epic showdown where the forces of darkness may finally meet their match.',
    isAvailable: true,
    publicationDate: DateTime.now(),
  ),
  Book(
    id: 2,
    author: 'JJ Tolkien',
    title: 'Lo hobbit',
    description: 'descrizione 2',
    image: 'https://d3ddkgxe55ca6c.cloudfront.net/assets/t1496538667/a/af/64/147470-ml-1141823.jpg',
    body: 'Bilbo Baggins (Martin Freeman) lives a simple life with his fellow hobbits in the shire, until the wizard Gandalf (Ian McKellen) arrives and convinces him to join a group of dwarves on a quest to reclaim the kingdom of Erebor. The journey takes Bilbo on a path through treacherous lands swarming with orcs, goblins and other dangers, not the least of which is an encounter with Gollum (Andy Serkis) and a simple gold ring that is tied to the fate of Middle Earth in ways Bilbo cannot even fathom.',
    isAvailable: true,
    publicationDate: DateTime.now(),
  )
];