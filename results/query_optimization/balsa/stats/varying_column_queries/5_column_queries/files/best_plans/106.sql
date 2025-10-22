/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND p.PostTypeId=1 AND p.ViewCount>=0 AND p.AnswerCount<=4 AND p.FavoriteCount<=11 AND u.CreationDate<='2014-09-06 17:30:06'::timestamp;

