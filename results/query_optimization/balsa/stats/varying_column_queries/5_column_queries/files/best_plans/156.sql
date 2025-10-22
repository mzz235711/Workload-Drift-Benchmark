/*+ HashJoin(c u p)
 HashJoin(c u)
 SeqScan(c)
 IndexScan(u)
 SeqScan(p)
 Leading(((c u) p)) */
SELECT COUNT(*) FROM comments as c, posts as p, users as u WHERE c.PostId = p.Id AND c.UserId = u.Id AND c.CreationDate<='2014-09-09 02:17:46'::timestamp AND p.PostTypeId=1 AND p.ViewCount<=10215 AND p.AnswerCount>=0 AND p.FavoriteCount>=0;

