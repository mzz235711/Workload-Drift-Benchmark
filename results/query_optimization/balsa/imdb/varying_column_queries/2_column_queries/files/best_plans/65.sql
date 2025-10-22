/*+ HashJoin(cast_info movie_keyword title movie_companies)
 HashJoin(cast_info movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 IndexScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_companies)
 Leading(((cast_info (movie_keyword title)) movie_companies)) */
select count(*) from movie_companies,cast_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and movie_companies.company_type_id=1 and title.phonetic_code>15786;

