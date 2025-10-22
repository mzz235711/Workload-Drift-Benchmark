/*+ HashJoin(movie_companies title movie_info)
 HashJoin(title movie_info)
 SeqScan(movie_companies)
 SeqScan(title)
 IndexScan(movie_info)
 Leading((movie_companies (title movie_info))) */
select count(*) from movie_companies,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>2 and title.phonetic_code>14729;

