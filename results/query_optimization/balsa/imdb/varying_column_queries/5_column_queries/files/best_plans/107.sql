/*+ HashJoin(movie_info movie_keyword title movie_companies cast_info)
 HashJoin(movie_keyword title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_info)
 IndexScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info (movie_keyword ((title movie_companies) cast_info)))) */
select count(*) from cast_info,movie_keyword,movie_info,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=movie_companies.movie_id and cast_info.role_id=2 and title.kind_id<7 and title.production_year<118 and title.series_years>0 and title.season_nr=0;

