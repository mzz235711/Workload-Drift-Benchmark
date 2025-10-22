/*+ HashJoin(title movie_companies movie_info)
 HashJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading(((title movie_companies) movie_info)) */
select count(*) from movie_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.phonetic_code<19887 and title.episode_nr<14 and title.imdb_index=0 and title.season_nr<8;

