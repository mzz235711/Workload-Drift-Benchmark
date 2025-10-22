/*+ NestLoop(title movie_info_idx movie_companies movie_keyword)
 NestLoop(title movie_info_idx movie_companies)
 NestLoop(title movie_info_idx)
 SeqScan(title)
 IndexScan(movie_info_idx)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 Leading((((title movie_info_idx) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_info_idx,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and movie_info_idx.info_type_id=101 and title.episode_nr<44 and title.imdb_index=0 and title.season_nr=0 and title.phonetic_code>0;

