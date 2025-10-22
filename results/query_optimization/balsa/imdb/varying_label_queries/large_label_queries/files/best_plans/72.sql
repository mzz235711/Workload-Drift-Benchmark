/*+ NestLoop(title cast_info)
 SeqScan(title)
 IndexScan(cast_info)
 Leading((title cast_info)) */
SELECT COUNT(*) FROM cast_info,title WHERE title.id=cast_info.movie_id AND title.imdb_index<22 AND title.episode_nr>7987 AND title.phonetic_code<7450;

