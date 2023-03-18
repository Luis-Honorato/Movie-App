class MoviesDataSource {
  List<Map<String, dynamic>> topMovies = [
    {
      "rank": 1,
      "title": "The Shawshank Redemption",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg",
      "rating": "9.3",
      "id": "top1",
      "year": 1994,
      "image":
          "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_QL75_UX380_CR0,1,380,562_.jpg",
      "description":
          "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
      "trailer": "https://www.youtube.com/embed/NmzuHjWmXOc",
      "genre": ["Drama"],
      "director": ["Frank Darabont"],
      "writers": [
        "Stephen King (based on the short novel \"Rita Hayworth and the Shawshank Redemption\" by)",
        "Frank Darabont (screenplay by)"
      ],
      "imdbid": "tt0111161"
    },
    {
      "rank": 2,
      "title": "The Godfather",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR1,0,45,67_AL_.jpg",
      "rating": "9.2",
      "id": "top2",
      "year": 1972,
      "image":
          "https://m.media-amazon.com/images/M/MV5BM2MyNjYxNmUtYTAwNi00MTYxLWJmNWYtYzZlODY3ZTk3OTFlXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_QL75_UY562_CR8,0,380,562_.jpg",
      "description":
          "The aging patriarch of an organized crime dynasty in postwar New York City transfers control of his clandestine empire to his reluctant youngest son.",
      "trailer": "https://www.youtube.com/embed/rqGJyUB1Q3s",
      "genre": ["Crime", "Drama"],
      "director": ["Francis Ford Coppola"],
      "writers": [
        "Mario Puzo (screenplay by)",
        "Francis Ford Coppola (screenplay by)"
      ],
      "imdbid": "tt0068646"
    },
    {
      "rank": 3,
      "title": "The Dark Knight",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_UX67_CR0,0,67,98_AL_.jpg",
      "rating": "9.0",
      "id": "top3",
      "year": 2008,
      "image":
          "https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_QL75_UX380_CR0,0,380,562_.jpg",
      "description":
          "When the menace known as the Joker wreaks havoc and chaos on the people of Gotham, Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
      "trailer": "https://www.youtube.com/embed/EXeTwQWrcwY",
      "genre": ["Ação", "Crime", "Drama"],
      "director": ["Christopher Nolan"],
      "writers": [
        "Jonathan Nolan (screenplay)",
        "Christopher Nolan (screenplay)",
        "David S. Goyer (story)"
      ],
      "imdbid": "tt0468569"
    },
    {
      "rank": 4,
      "title": "The Godfather Part II",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR1,0,45,67_AL_.jpg",
      "rating": "9.0",
      "id": "top4",
      "year": 1974,
      "image":
          "https://m.media-amazon.com/images/M/MV5BMWMwMGQzZTItY2JlNC00OWZiLWIyMDctNDk2ZDQ2YjRjMWQ0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_QL75_UY562_CR7,0,380,562_.jpg",
      "description":
          "The early life and career of Vito Corleone in 1920s New York City is portrayed, while his son, Michael, expands and tightens his grip on the family crime syndicate.",
      "trailer": "https://www.youtube.com/embed/9O1Iy9od7-A",
      "genre": ["Crime", "Drama"],
      "director": ["Francis Ford Coppola"],
      "writers": [
        "Francis Ford Coppola (screenplay by)",
        "Mario Puzo (screenplay by)"
      ],
      "imdbid": "tt0071562"
    },
    {
      "rank": 5,
      "title": "12 Angry Men",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_UX45_CR0,0,45,67_AL_.jpg",
      "rating": "9.0",
      "id": "top5",
      "year": 1957,
      "image":
          "https://m.media-amazon.com/images/M/MV5BMWU4N2FjNzYtNTVkNC00NzQ0LTg0MjAtYTJlMjFhNGUxZDFmXkEyXkFqcGdeQXVyNjc1NTYyMjg@._V1_QL75_UX380_CR0,11,380,562_.jpg",
      "description":
          "The jury in a New York City murder trial is frustrated by a single member whose skeptical caution forces them to more carefully consider the evidence before jumping to a hasty verdict.",
      "trailer": "https://www.youtube.com/embed/TEN-2uTi2c0",
      "genre": ["Crime", "Drama"],
      "director": ["Sidney Lumet"],
      "writers": ["Reginald Rose (teleplay \"Twelve Angry Men\")"],
      "imdbid": "tt0050083"
    },
    {
      "rank": 6,
      "title": "Schindler's List",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg",
      "rating": "8.9",
      "id": "top6",
      "year": 1993,
      "image":
          "https://m.media-amazon.com/images/M/MV5BNDE4OTMxMTctNmRhYy00NWE2LTg3YzItYTk3M2UwOTU5Njg4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_QL75_UX380_CR0,4,380,562_.jpg",
      "description":
          "In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.",
      "trailer": "https://www.youtube.com/embed/gG22XNhtnoY",
      "genre": ["Biografia", "Drama", "Historia"],
      "director": ["Steven Spielberg"],
      "writers": ["Thomas Keneally (book)", "Steven Zaillian (screenplay)"],
      "imdbid": "tt0108052"
    },
    {
      "rank": 7,
      "title": "The Lord of the Rings: The Return of the King",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR0,0,45,67_AL_.jpg",
      "rating": "8.9",
      "id": "top7",
      "year": 2003,
      "image":
          "https://m.media-amazon.com/images/M/MV5BNzA5ZDNlZWMtM2NhNS00NDJjLTk4NDItYTRmY2EwMWZlMTY3XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_QL75_UX380_CR0,0,380,562_.jpg",
      "description":
          "Gandalf and Aragorn lead the World of Men against Sauron's army to draw his gaze from Frodo and Sam as they approach Mount Doom with the One Ring.",
      "trailer": "https://www.youtube.com/embed/y2rYRu8UW8M",
      "genre": ["Ação", "Aventura", "Drama"],
      "director": ["Peter Jackson"],
      "writers": [
        "J.R.R. Tolkien (novel \"The Return of the King\")",
        "Fran Walsh (screenplay)",
        "Philippa Boyens (screenplay)"
      ],
      "imdbid": "tt0167260"
    },
    {
      "rank": 8,
      "title": "Pulp Fiction",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UY67_CR0,0,45,67_AL_.jpg",
      "rating": "8.8",
      "id": "top8",
      "year": 1994,
      "image":
          "https://m.media-amazon.com/images/M/MV5BNGNhMDIzZTUtNTBlZi00MTRlLWFjM2ItYzViMjE3YzI5MjljXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_QL75_UY562_CR3,0,380,562_.jpg",
      "description":
          "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
      "trailer": "https://www.youtube.com/embed/5ZAhzsi1ybM",
      "genre": ["Crime", "Drama"],
      "director": ["Quentin Tarantino"],
      "writers": ["Quentin Tarantino (stories by)", "Roger Avary (stories by)"],
      "imdbid": "tt0110912"
    },
    {
      "rank": 9,
      "title": "The Lord of the Rings: The Fellowship of the Ring",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_UY67_CR0,0,45,67_AL_.jpg",
      "rating": "8.8",
      "id": "top9",
      "year": 2001,
      "image":
          "https://m.media-amazon.com/images/M/MV5BN2EyZjM3NzUtNWUzMi00MTgxLWI0NTctMzY4M2VlOTdjZWRiXkEyXkFqcGdeQXVyNDUzOTQ5MjY@._V1_QL75_UX380_CR0,1,380,562_.jpg",
      "description":
          "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.",
      "trailer": "https://www.youtube.com/embed/_e8QGuG50ro",
      "genre": ["Ação", "Aventura", "Drama"],
      "director": ["Peter Jackson"],
      "writers": [
        "J.R.R. Tolkien (novel \"The Fellowship of the Ring\")",
        "Fran Walsh (screenplay)",
        "Philippa Boyens (screenplay)"
      ],
      "imdbid": "tt0120737"
    },
    {
      "rank": 10,
      "title": "The Good, the Bad and the Ugly",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BNjJlYmNkZGItM2NhYy00MjlmLTk5NmQtNjg1NmM2ODU4OTMwXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UX45_CR0,0,45,67_AL_.jpg",
      "rating": "8.8",
      "id": "top10",
      "year": 1966,
      "image":
          "https://m.media-amazon.com/images/M/MV5BNjJlYmNkZGItM2NhYy00MjlmLTk5NmQtNjg1NmM2ODU4OTMwXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_QL75_UX380_CR0,4,380,562_.jpg",
      "description":
          "A bounty hunting scam joins two men in an uneasy alliance against a third in a race to find a fortune in gold buried in a remote cemetery.",
      "trailer": "https://www.youtube.com/embed/WCN5JJY_wiA",
      "genre": ["Aventura", "Velho Oeste"],
      "director": ["Sergio Leone"],
      "writers": [
        "Luciano Vincenzoni (story)",
        "Sergio Leone (story)",
        "Agenore Incrocci (screenplay)"
      ],
      "imdbid": "tt0060196"
    },
    {
      "rank": 11,
      "title": "Forrest Gump",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY67_CR0,0,45,67_AL_.jpg",
      "rating": "8.8",
      "id": "top11",
      "year": 1994,
      "image":
          "https://m.media-amazon.com/images/M/MV5BNWIwODRlZTUtY2U3ZS00Yzg1LWJhNzYtMmZiYmEyNmU1NjMzXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_QL75_UY562_CR4,0,380,562_.jpg",
      "description":
          "The presidencies of Kennedy and Johnson, the Vietnam War, the Watergate scandal and other historical events unfold from the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.",
      "trailer": "https://www.youtube.com/embed/bLvqoHBptjg",
      "genre": ["Drama", "Romance"],
      "director": ["Robert Zemeckis"],
      "writers": ["Winston Groom (novel)", "Eric Roth (screenplay)"],
      "imdbid": "tt0109830"
    },
    {
      "rank": 12,
      "title": "Fight Club",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BNDIzNDU0YzEtYzE5Ni00ZjlkLTk5ZjgtNjM3NWE4YzA3Nzk3XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_UY67_CR0,0,45,67_AL_.jpg",
      "rating": "8.7",
      "id": "top12",
      "year": 1999,
      "image":
          "https://m.media-amazon.com/images/M/MV5BNDIzNDU0YzEtYzE5Ni00ZjlkLTk5ZjgtNjM3NWE4YzA3Nzk3XkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_QL75_UX380_CR0,1,380,562_.jpg",
      "description":
          "An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.",
      "trailer": "https://www.youtube.com/embed/qtRKdVHc-cE",
      "genre": ["Drama"],
      "director": ["David Fincher"],
      "writers": [
        "Chuck Palahniuk (based on the novel by)",
        "Jim Uhls (screenplay by)"
      ],
      "imdbid": "tt0137523"
    },
    {
      "rank": 13,
      "title": "Inception",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_UY67_CR0,0,45,67_AL_.jpg",
      "rating": "8.7",
      "id": "top13",
      "year": 2010,
      "image":
          "https://m.media-amazon.com/images/M/MV5BMjAxMzY3NjcxNF5BMl5BanBnXkFtZTcwNTI5OTM0Mw@@._V1_QL75_UX380_CR0,0,380,562_.jpg",
      "description":
          "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O., but his tragic past may doom the project and his team to disaster.",
      "trailer": "https://www.youtube.com/embed/YoHD9XEInc0",
      "genre": ["Ação", "Aventura", "Ficção Científica"],
      "director": ["Christopher Nolan"],
      "writers": ["Christopher Nolan"],
      "imdbid": "tt1375666"
    },
    {
      "rank": 14,
      "title": "The Lord of the Rings: The Two Towers",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg",
      "rating": "8.7",
      "id": "top14",
      "year": 2002,
      "image":
          "https://m.media-amazon.com/images/M/MV5BZGMxZTdjZmYtMmE2Ni00ZTdkLWI5NTgtNjlmMjBiNzU2MmI5XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_QL75_UX380_CR0,14,380,562_.jpg",
      "description":
          "While Frodo and Sam edge closer to Mordor with the help of the shifty Gollum, the divided fellowship makes a stand against Sauron's new ally, Saruman, and his hordes of Isengard.",
      "trailer": "https://www.youtube.com/embed/hYcw5ksV8YQ",
      "genre": ["Ação", "Aventura", "Drama"],
      "director": ["Peter Jackson"],
      "writers": [
        "J.R.R. Tolkien (novel \"The Two Towers\")",
        "Fran Walsh (screenplay)",
        "Philippa Boyens (screenplay)"
      ],
      "imdbid": "tt0167261"
    },
    {
      "rank": 15,
      "title": "Star Wars: Episode V - The Empire Strikes Back",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg",
      "rating": "8.7",
      "id": "top15",
      "year": 1980,
      "image":
          "https://m.media-amazon.com/images/M/MV5BYmU1NDRjNDgtMzhiMi00NjZmLTg5NGItZDNiZjU5NTU4OTE0XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_QL75_UX380_CR0,15,380,562_.jpg",
      "description":
          "After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued across the galaxy by Darth Vader and bounty hunter Boba Fett.",
      "trailer": "https://www.youtube.com/embed/JNwNXF9Y6kY",
      "genre": ["Ação", "Aventura", "Fantasia"],
      "director": ["Irvin Kershner"],
      "writers": [
        "Leigh Brackett (screenplay by)",
        "Lawrence Kasdan (screenplay by)",
        "George Lucas (story by)"
      ],
      "imdbid": "tt0080684"
    },
    {
      "rank": 16,
      "title": "The Matrix",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg",
      "rating": "8.7",
      "id": "top16",
      "year": 1999,
      "image":
          "https://m.media-amazon.com/images/M/MV5BNzQzOTk3OTAtNDQ0Zi00ZTVkLWI0MTEtMDllZjNkYzNjNTc4L2ltYWdlXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_QL75_UX380_CR0,4,380,562_.jpg",
      "description":
          "When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.",
      "trailer": "https://www.youtube.com/embed/vKQi3bBA1y8",
      "genre": ["Ação", "Ficção Científica"],
      "director": ["Lana Wachowski", "Lilly Wachowski"],
      "writers": ["Lilly Wachowski", "Lana Wachowski"],
      "imdbid": "tt0133093"
    },
    {
      "rank": 17,
      "title": "Goodfellas",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_UX45_CR0,0,45,67_AL_.jpg",
      "rating": "8.7",
      "id": "top17",
      "year": 1990,
      "image":
          "https://m.media-amazon.com/images/M/MV5BY2NkZjEzMDgtN2RjYy00YzM1LWI4ZmQtMjIwYjFjNmI3ZGEwXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_QL75_UX380_CR0,3,380,562_.jpg",
      "description":
          "The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.",
      "trailer": "https://www.youtube.com/embed/2ilzidi_J8Q",
      "genre": ["Drama", "Biografia", "Crime"],
      "director": ["Martin Scorsese"],
      "writers": [
        "Nicholas Pileggi (book \"Wiseguy\")",
        "Martin Scorsese (screenplay)"
      ],
      "imdbid": "tt0099685"
    },
    {
      "rank": 18,
      "title": "One Flew Over the Cuckoo's Nest",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BZjA0OWVhOTAtYWQxNi00YzNhLWI4ZjYtNjFjZTEyYjJlNDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_UY67_CR0,0,45,67_AL_.jpg",
      "rating": "8.6",
      "id": "top18",
      "year": 1975,
      "image":
          "https://m.media-amazon.com/images/M/MV5BZjA0OWVhOTAtYWQxNi00YzNhLWI4ZjYtNjFjZTEyYjJlNDVlL2ltYWdlL2ltYWdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_QL75_UX380_CR0,1,380,562_.jpg",
      "description":
          "In the Fall of 1963, a Korean War veteran and criminal pleads insanity and is admitted to a mental institution, where he rallies up the scared patients against the tyrannical nurse.",
      "trailer": "https://www.youtube.com/embed/OXrcDonY-B8",
      "genre": ["Drama"],
      "director": ["Milos Forman"],
      "writers": [
        "Lawrence Hauben (screenplay)",
        "Bo Goldman (screenplay)",
        "Ken Kesey (based on the novel by)"
      ],
      "imdbid": "tt0073486"
    },
    {
      "rank": 19,
      "title": "Se7en",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_UX45_CR0,0,45,67_AL_.jpg",
      "rating": "8.6",
      "id": "top19",
      "year": 1995,
      "image":
          "https://m.media-amazon.com/images/M/MV5BOTUwODM5MTctZjczMi00OTk4LTg3NWUtNmVhMTAzNTNjYjcyXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_QL75_UX380_CR0,16,380,562_.jpg",
      "description":
          "Two detectives, a rookie and a veteran, hunt a serial killer who uses the seven deadly sins as his motives.",
      "trailer": "https://www.youtube.com/embed/znmZoVkCjpI",
      "genre": ["Crime", "Drama", "Misterio"],
      "director": ["David Fincher"],
      "writers": ["Andrew Kevin Walker"],
      "imdbid": "tt0114369"
    },
    {
      "rank": 20,
      "title": "Seven Samurai",
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BNWQ3OTM4ZGItMWEwZi00MjI5LWI3YzgtNTYwNWRkNmIzMGI5XkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_UY67_CR1,0,45,67_AL_.jpg",
      "rating": "8.6",
      "id": "top20",
      "year": 1954,
      "image":
          "https://m.media-amazon.com/images/M/MV5BNWQ3OTM4ZGItMWEwZi00MjI5LWI3YzgtNTYwNWRkNmIzMGI5XkEyXkFqcGdeQXVyNDY2MTk1ODk@._V1_QL75_UY562_CR11,0,380,562_.jpg",
      "description":
          "Farmers from a village exploited by bandits hire a veteran samurai for protection, who gathers six other samurai to join him. As the samurai teach the peasants how to defend themselves, the village is attacked by an army of bandits.",
      "trailer": "https://www.youtube.com/embed/wJ1TOratCTo",
      "genre": ["Ação", "Drama"],
      "director": ["Akira Kurosawa"],
      "writers": [
        "Akira Kurosawa (screenplay by)",
        "Shinobu Hashimoto (screenplay by)",
        "Hideo Oguni (screenplay by)"
      ],
      "imdbid": "tt0047478"
    }
  ];
}
