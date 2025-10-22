/*+ HashJoin(title movie_keyword movie_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 SeqScan(movie_info)
 Leading(((title movie_keyword) movie_info)) */
select count(*) from movie_keyword,movie_info,title where title.id=movie_keyword.movie_id and title.id=movie_info.movie_id and movie_keyword.keyword_id>1572 and movie_info.info_type_id>3 and title.kind_id=1;

