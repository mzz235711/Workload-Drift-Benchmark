/*+ HashJoin(movie_keyword title movie_companies movie_info)
 MergeJoin(movie_keyword title movie_companies)
 MergeJoin(title movie_companies)
 SeqScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(movie_info)
 Leading(((movie_keyword (title movie_companies)) movie_info)) */
select count(*) from movie_companies,movie_info,movie_keyword,title where title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=movie_keyword.movie_id and movie_info.info_type_id>3 and title.phonetic_code<63;

