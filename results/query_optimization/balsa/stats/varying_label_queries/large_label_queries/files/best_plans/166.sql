/*+ HashJoin(p u c v b)
 HashJoin(p u c v)
 HashJoin(p u c)
 NestLoop(u c)
 SeqScan(p)
 IndexScan(u)
 IndexScan(c)
 SeqScan(v)
 SeqScan(b)
 Leading((((p (u c)) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=0 AND p.Score<=28 AND p.CreationDate<='2014-09-05 08:42:14'::timestamp AND u.Views>=0 AND u.Views<=58;

