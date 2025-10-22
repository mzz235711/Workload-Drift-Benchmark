/*+ HashJoin(movie_keyword movie_info title movie_companies cast_info)
 HashJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 NestLoop(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(movie_info)
 IndexScan(title)
 IndexScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_keyword (movie_info ((title movie_companies) cast_info)))) */
select count(*) from movie_info,movie_keyword,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id>2 and movie_companies.company_type_id=2 and cast_info.nr_order<3000 and title.episode_nr<93 and title.production_year>125;

