/*+ HashJoin(movie_keyword title movie_companies cast_info movie_info)
 HashJoin(movie_keyword title movie_companies cast_info)
 HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_keyword (title movie_companies)) cast_info) movie_info)) */
select count(*) from movie_keyword,movie_companies,movie_info,cast_info,title where title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and title.id=cast_info.movie_id and movie_keyword.keyword_id<67699 and movie_info.info_type_id<16 and title.kind_id=7 and title.season_nr>0 and title.phonetic_code<18263 and title.imdb_index=0;

