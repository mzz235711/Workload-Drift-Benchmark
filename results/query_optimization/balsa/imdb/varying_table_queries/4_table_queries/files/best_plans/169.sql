/*+ MergeJoin(movie_info title movie_companies cast_info)
 NestLoop(title movie_companies cast_info)
 MergeJoin(title movie_companies)
 SeqScan(movie_info)
 IndexScan(title)
 SeqScan(movie_companies)
 IndexScan(cast_info)
 Leading((movie_info ((title movie_companies) cast_info))) */
select count(*) from movie_info,movie_companies,cast_info,title where title.id=movie_info.movie_id and title.id=movie_companies.movie_id and title.id=cast_info.movie_id and movie_info.info_type_id<18 and cast_info.role_id=9 and title.phonetic_code>6741;

