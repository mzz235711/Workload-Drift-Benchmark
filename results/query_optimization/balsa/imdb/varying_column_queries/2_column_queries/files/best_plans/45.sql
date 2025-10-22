/*+ HashJoin(cast_info movie_companies movie_keyword title movie_info)
 NestLoop(movie_companies movie_keyword title movie_info)
 HashJoin(movie_companies movie_keyword title)
 HashJoin(movie_keyword title)
 SeqScan(cast_info)
 SeqScan(movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((cast_info ((movie_companies (movie_keyword title)) movie_info))) */
select count(*) from movie_info,movie_companies,movie_keyword,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<98 and title.kind_id=7;

