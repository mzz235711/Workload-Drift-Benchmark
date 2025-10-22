/*+ NestLoop(title movie_companies cast_info movie_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 IndexScan(movie_info)
 Leading((((title movie_companies) cast_info) movie_info)) */
select count(*) from movie_info,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>3 and cast_info.nr_order<22 and title.season_nr>6;

