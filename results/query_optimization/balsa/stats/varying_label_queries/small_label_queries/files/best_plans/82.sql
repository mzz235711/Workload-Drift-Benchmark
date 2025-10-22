/*+ HashJoin(c p)
 SeqScan(c)
 SeqScan(p)
 Leading((c p)) */
SELECT COUNT(*) FROM comments as c, posts as p WHERE c.PostId= p.Id AND c.Score=0 AND c.CreationDate<='2014-09-11 19:43:14'::timestamp AND p.PostTypeId=1 AND p.AnswerCount>=0 AND p.FavoriteCount>=0 AND p.FavoriteCount<=17 AND p.CreationDate>='2009-02-02 14:24:58'::timestamp AND p.CreationDate<='2014-09-04 08:15:30'::timestamp;

