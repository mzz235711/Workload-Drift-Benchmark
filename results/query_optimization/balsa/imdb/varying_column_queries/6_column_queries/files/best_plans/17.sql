/*+ NestLoop(title movie_companies movie_info_idx movie_keyword)
 HashJoin(title movie_companies movie_info_idx)
 HashJoin(title movie_companies)
 SeqScan(title)
 SeqScan(movie_companies)
 SeqScan(movie_info_idx)
 IndexScan(movie_keyword)
 Leading((((title movie_companies) movie_info_idx) movie_keyword)) */
select count(*) from movie_keyword,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_keyword.keyword_id<72999 and movie_companies.company_type_id>1 and title.imdb_index=0 and title.episode_nr<10 and title.season_nr<1 and title.production_year>92;

