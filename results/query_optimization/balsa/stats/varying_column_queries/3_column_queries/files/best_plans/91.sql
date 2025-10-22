/*+ MergeJoin(ph c p u v)
 MergeJoin(ph c p u)
 HashJoin(c p u)
 MergeJoin(c p)
 SeqScan(ph)
 SeqScan(c)
 IndexScan(p)
 IndexScan(u)
 SeqScan(v)
 Leading(((ph ((c p) u)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND p.PostTypeId=1 AND p.ViewCount>=0 AND ph.PostHistoryTypeId=25;

