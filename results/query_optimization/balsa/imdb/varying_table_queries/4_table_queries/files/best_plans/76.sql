/*+ HashJoin(movie_info cast_info title movie_companies)
 HashJoin(cast_info title movie_companies)
 HashJoin(title movie_companies)
 SeqScan(movie_info)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 Leading((movie_info (cast_info (title movie_companies)))) */
select count(*) from movie_info,cast_info,movie_companies,title where title.id=movie_info.movie_id and title.id=cast_info.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<32 and title.series_years<987 and title.imdb_index=0 and title.kind_id<7;

