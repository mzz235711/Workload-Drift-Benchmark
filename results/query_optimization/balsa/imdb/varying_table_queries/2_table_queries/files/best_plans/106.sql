/*+ HashJoin(movie_companies title)
 SeqScan(movie_companies)
 SeqScan(title)
 Leading((movie_companies title)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.episode_nr<30 and title.kind_id>1 and title.season_nr<6 and title.phonetic_code<15854;

