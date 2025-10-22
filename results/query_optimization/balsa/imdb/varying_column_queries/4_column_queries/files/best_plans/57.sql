/*+ HashJoin(cast_info movie_info movie_companies title movie_keyword)
 HashJoin(movie_info movie_companies title movie_keyword)
 HashJoin(movie_companies title movie_keyword)
 HashJoin(title movie_keyword)
 SeqScan(cast_info)
 SeqScan(movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 SeqScan(movie_keyword)
 Leading((cast_info (movie_info (movie_companies (title movie_keyword))))) */
select count(*) from movie_info,movie_keyword,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and movie_info.info_type_id>3 and title.production_year>116 and title.imdb_index>1 and title.phonetic_code>5892;

