/*+ HashJoin(b p)
 IndexScan(b)
 SeqScan(p)
 Leading((b p)) */
SELECT COUNT(*) FROM badges as b, posts as p WHERE b.UserId = p.OwnerUserId AND p.PostTypeId=2 AND p.Score>=0 AND p.Score<=20 AND p.CommentCount>=0;

