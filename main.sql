
create table Teams(
  name TEXT,
  country TEXT,
  no_players TEXT,
  club_id INT,
  owner TEXT,
  coach TEXT,
  win_pct INT,
  primary key (club_id)
);

create table Players(
  name TEXT,
  position TEXT,
  club INT,
  ovr INT,
  id char,
  primary key(id),
  foreign key (club) 
    references Teams(club_id)
);

INSERT INTO Teams (name, country, no_players, club_id, owner, coach, win_pct)
  values("Chelsea", "England", 30, 001, "Todd Boehly", "Graham Potter", 50),
  ("Arsenal", "England", 30, 002, "Stroenke Family", "Mikel Arteta", 80),
  ("Manchester City", "England", 27, 003, "Abu Dabi Emiratis","Pep Guardiola", 75),
  ("Newcastle", "England",30, 004,"Saudi Arabian Royal Funds","Eddie Howe", 68),
  ("Manchester United", "England",32, 005,"Glazers Family","Erik Ten Haag", 65),
  ("Bayern Munchen", "Germany", 26, 006, "Bayern Association","Julian Nagelsmann", 88),
  ("Bayer Leverkusen", "Germany", 28, 007, "Bayer", "Xabi Alonso", 54),
  ("Paris Saint Germain", "France", 27, 008, "Qatar Sports Investments", "Christophe Galtier", 78);


Insert into Players(name, position, club, ovr, id)
  values("Alphonso Davies", "LM", 006, 83, "BM17"),
  ("Kylian Mbappe", "LW", 8, 93, "PSG07"),
  ("Erling Haaland", "ST", 3, 91, "MCI09"),
  ("Thiago Silva", "CB", 1, 90,"CHE06"),
  ("Ruben Dias", "CB", 3, 90, "MCI03"), 
  ("William Saliba", "CB", 2, 86, "ARS12"),
  ("Manuel Neuer", "GK", 6, 92, "BM01"),
  ("Reece James", "RM", 1, 99, "CHE24"), 
  ("Rodri", "DM", 3, 87, "MCI16"),
  ("Kimmich", "CM", 6, 90, "BM06"),
  ("Jamal Musiala", "RW", 6, 94, "BM42");
  

select * from Teams;
select("  ");
select("-------BREAK----------");
select("  ");
select * FROM Players;

select("  ");
select("-------BREAK----------");
select("  ");

/* Select operation*/
select("  ");
select("Selecting English Clubs");
select("  ");
select name from Teams where country == "England";

select("  ");
select("Natural Join");
select("  ");
