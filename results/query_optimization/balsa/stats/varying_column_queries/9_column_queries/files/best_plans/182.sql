/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND b.Date='2013-08-04 03:00:16'::timestamp AND p.Score>=-2 AND p.AnswerCount>=0 AND p.CommentCount>=0 AND p.CommentCount<=12 AND p.FavoriteCount>=0 AND p.FavoriteCount<=17 AND p.CreationDate>='2010-08-22 01:22:31'::timestamp AND p.CreationDate<='2014-09-07 01:11:03'::timestamp;

