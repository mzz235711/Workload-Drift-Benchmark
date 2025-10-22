/*+ HashJoin(cast_info title movie_companies movie_keyword)
 HashJoin(cast_info title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(cast_info)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_keyword)
 Leading(((cast_info (title movie_companies)) movie_keyword)) */
select count(*) from cast_info,movie_keyword,movie_companies,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and cast_info.nr_order<101 and title.kind_id=1 and title.phonetic_code<19106;

