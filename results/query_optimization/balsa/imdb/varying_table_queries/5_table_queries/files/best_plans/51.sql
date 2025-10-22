/*+ HashJoin(title cast_info movie_info movie_companies movie_keyword)
 HashJoin(title cast_info movie_info movie_companies)
 HashJoin(title cast_info movie_info)
 HashJoin(title cast_info)
 IndexScan(title)
 IndexScan(cast_info)
 SeqScan(movie_info)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((((title cast_info) movie_info) movie_companies) movie_keyword)) */
select count(*) from movie_info,cast_info,movie_companies,movie_keyword,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and cast_info.role_id<10 and title.phonetic_code<16548 and title.kind_id<7 and title.series_years>0;

