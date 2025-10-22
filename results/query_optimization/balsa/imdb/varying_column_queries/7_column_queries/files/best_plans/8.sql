/*+ NestLoop(movie_companies title movie_keyword movie_info cast_info)
 NestLoop(movie_companies title movie_keyword movie_info)
 NestLoop(movie_companies title movie_keyword)
 NestLoop(movie_companies title)
 SeqScan(movie_companies)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((movie_companies title) movie_keyword) movie_info) cast_info)) */
select count(*) from movie_companies,movie_keyword,cast_info,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_info.movie_id and movie_companies.company_type_id<2 and cast_info.role_id=10 and movie_info.info_type_id<98 and title.kind_id=7 and title.episode_nr>3 and title.season_nr>4 and title.production_year>125;

