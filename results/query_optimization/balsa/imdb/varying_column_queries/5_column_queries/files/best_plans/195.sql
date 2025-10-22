/*+ HashJoin(movie_keyword title movie_companies movie_info cast_info)
 HashJoin(title movie_companies movie_info cast_info)
 HashJoin(title movie_companies movie_info)
 HashJoin(title movie_companies)
 SeqScan(movie_keyword)
 IndexScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(cast_info)
 Leading((movie_keyword (((title movie_companies) movie_info) cast_info))) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>3 and title.season_nr<6 and title.kind_id=2 and title.episode_nr<381 and title.series_years<1397;

