/*+ MergeJoin(ph c u p v)
 MergeJoin(ph c u p)
 HashJoin(c u p)
 HashJoin(c u)
 IndexScan(ph)
 SeqScan(c)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading(((ph ((c u) p)) v)) */
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND p.Score<=16 AND p.FavoriteCount>=0 AND p.FavoriteCount<=3 AND ph.PostHistoryTypeId=1 AND ph.CreationDate>='2011-02-22 19:38:50'::timestamp AND ph.CreationDate<='2014-09-13 02:09:47'::timestamp AND v.BountyAmount<=100 AND u.Reputation=75 AND u.Views=0;

