/*+ HashJoin(cast_info movie_companies movie_info title movie_keyword)
 HashJoin(movie_companies movie_info title movie_keyword)
 HashJoin(movie_info title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (movie_companies (movie_info (title movie_keyword))))) */
select count(*) from movie_companies,movie_keyword,movie_info,cast_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<106 and cast_info.nr_order<37 and title.series_years>0 and title.phonetic_code<5478;

