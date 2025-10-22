/*+ HashJoin(movie_keyword title movie_companies movie_info)
 HashJoin(movie_keyword title movie_companies)
 HashJoin(movie_keyword title)
 IndexScan(movie_keyword)
 SeqScan(title)
 SeqScan(movie_companies)
 IndexScan(movie_info)
 Leading((((movie_keyword title) movie_companies) movie_info)) */
select count(*) from movie_companies,movie_keyword,movie_info,title where title.id=movie_companies.movie_id and title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_info.info_type_id>1 and title.phonetic_code<15910;

