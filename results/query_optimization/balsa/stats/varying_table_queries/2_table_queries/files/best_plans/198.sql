/*+ HashJoin(b p)
 SeqScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.Score=2 AND p.CommentCount=3 AND p.CreationDate>='2010-07-19 21:39:35'::timestamp AND p.CreationDate<='2014-09-03 15:44:54'::timestamp;

