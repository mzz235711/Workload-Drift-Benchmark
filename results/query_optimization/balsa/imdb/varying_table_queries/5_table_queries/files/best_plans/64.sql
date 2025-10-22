/*+ HashJoin(movie_info_idx title movie_info movie_companies movie_keyword)
 NestLoop(movie_info_idx title movie_info movie_companies)
 NestLoop(movie_info_idx title movie_info)
 NestLoop(movie_info_idx title)
 IndexScan(movie_info_idx)
 IndexScan(title)
 IndexScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((movie_info_idx title) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_companies,movie_info_idx,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info_idx.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id>1 and movie_info.info_type_id<107 and title.kind_id>1 and title.season_nr>0 and title.episode_nr<9302 and title.series_years<627;

