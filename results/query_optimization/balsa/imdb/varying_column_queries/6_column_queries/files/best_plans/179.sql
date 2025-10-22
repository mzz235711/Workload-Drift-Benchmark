/*+ NestLoop(title movie_companies movie_keyword movie_info_idx movie_info)
 HashJoin(title movie_companies movie_keyword movie_info_idx)
 NestLoop(title movie_companies movie_keyword)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_keyword)
 SeqScan(movie_info_idx)
 IndexScan(movie_info)
 Leading(((((title movie_companies) movie_keyword) movie_info_idx) movie_info)) */
select count(*) from movie_companies,movie_info_idx,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id>1 and movie_info_idx.info_type_id<101 and title.kind_id>1 and title.season_nr<5 and title.episode_nr<2 and title.imdb_index>0;

