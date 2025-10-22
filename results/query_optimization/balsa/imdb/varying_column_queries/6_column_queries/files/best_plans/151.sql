/*+ MergeJoin(movie_keyword title movie_companies cast_info movie_info)
 HashJoin(movie_keyword title movie_companies cast_info)
 HashJoin(movie_keyword title movie_companies)
 NestLoop(title movie_companies)
 IndexScan(movie_keyword)
 SeqScan(title)
 IndexScan(movie_companies)
 SeqScan(cast_info)
 IndexScan(movie_info)
 Leading((((movie_keyword (title movie_companies)) cast_info) movie_info)) */
select count(*) from cast_info,movie_keyword,movie_companies,movie_info,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and title.id=movie_companies.movie_id and title.id=movie_info.movie_id and cast_info.nr_order>2 and movie_info.info_type_id>2 and title.phonetic_code<14595 and title.imdb_index>0 and title.season_nr<1 and title.kind_id<7;

