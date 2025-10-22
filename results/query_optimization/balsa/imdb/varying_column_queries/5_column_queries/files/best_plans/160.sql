/*+ NestLoop(movie_keyword title movie_companies movie_info_idx)
 HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(movie_info_idx)
 Leading(((movie_keyword (title movie_companies)) movie_info_idx)) */
select count(*) from movie_companies,movie_keyword,movie_info_idx,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info_idx.movie_id and movie_companies.company_type_id>1 and movie_keyword.keyword_id<34997 and title.production_year>124 and title.season_nr=4 and title.episode_nr>15;

