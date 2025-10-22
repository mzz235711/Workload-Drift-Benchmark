/*+ HashJoin(p b)
 SeqScan(p)
 SeqScan(b)
 Leading((p b)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score>=-1 AND p.Score<=16 AND p.AnswerCount<=6 AND p.CommentCount<=21 AND p.FavoriteCount<=15 AND p.CreationDate>='2010-08-05 11:58:42'::timestamp;

