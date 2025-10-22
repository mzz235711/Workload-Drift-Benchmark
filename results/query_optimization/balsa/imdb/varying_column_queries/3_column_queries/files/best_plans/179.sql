/*+ HashJoin(title movie_keyword cast_info)
 NestLoop(title movie_keyword)
 IndexScan(title)
 IndexScan(movie_keyword)
 IndexScan(cast_info)
 Leading(((title movie_keyword) cast_info)) */
select count(*) from cast_info,movie_keyword,title where title.id=cast_info.movie_id and title.id=movie_keyword.movie_id and cast_info.nr_order>1 and movie_keyword.keyword_id<41742 and title.phonetic_code<7174;

