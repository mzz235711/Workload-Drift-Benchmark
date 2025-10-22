/*+ NestLoop(title movie_companies movie_info_idx movie_info movie_keyword)
 NestLoop(title movie_companies movie_info_idx movie_info)
 NestLoop(title movie_companies movie_info_idx)
 NestLoop(title movie_companies)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 IndexScan(movie_info)
 IndexScan(movie_keyword)
 Leading(((((title movie_companies) movie_info_idx) movie_info) movie_keyword)) */
select count(*) from movie_keyword,movie_info,movie_companies,movie_info_idx,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and movie_info.info_type_id<16 and title.episode_nr>0 and title.production_year>114;

