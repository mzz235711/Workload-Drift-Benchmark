/*+ NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 Leading(((title movie_companies) movie_info_idx)) */
select count(*) from movie_companies,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id=2 and movie_info_idx.info_type_id>99 and title.episode_nr>1 and title.imdb_index=0 and title.phonetic_code>12423 and title.production_year<91;

