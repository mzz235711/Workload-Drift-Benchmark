/*+ HashJoin(c p u v b)
 HashJoin(c p u v)
 HashJoin(c p u)
 HashJoin(c p)
 IndexScan(c)
 IndexScan(p)
 SeqScan(u)
 SeqScan(v)
 SeqScan(b)
 Leading(((((c p) u) v) b)) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, badges as b, users as u WHERE u.Id =c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = v.UserId AND v.UserId = b.UserId AND c.Score=0 AND p.PostTypeId=1 AND p.Score>=-1 AND p.Score<=55 AND p.ViewCount>=0 AND v.BountyAmount>=0 AND v.BountyAmount<=50 AND u.Views>=0 AND u.CreationDate>='2010-11-24 23:59:25'::timestamp;

