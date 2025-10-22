/*+ HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading((title movie_companies)) */
select count(*) from movie_companies,title where title.id=movie_companies.movie_id and title.episode_nr<42 and title.phonetic_code<16906;

