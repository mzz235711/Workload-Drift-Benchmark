/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.CreationDate>='2010-07-20 10:11:50'::timestamp AND p.AnswerCount<=7 AND p.FavoriteCount<=17;

