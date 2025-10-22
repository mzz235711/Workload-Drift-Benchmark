/*+ NestLoop(title movie_companies movie_keyword movie_info cast_info)
 NestLoop(title movie_companies movie_keyword movie_info)
 NestLoop(title movie_companies movie_keyword)
 MergeJoin(title movie_companies)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_keyword)
 IndexScan(movie_info)
 IndexScan(cast_info)
 Leading(((((title movie_companies) movie_keyword) movie_info) cast_info)) */
select count(*) from movie_info,movie_companies,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>1 and movie_keyword.keyword_id>7219 and cast_info.role_id<10 and title.episode_nr>2 and title.season_nr<6 and title.kind_id=7 and title.production_year<87;

