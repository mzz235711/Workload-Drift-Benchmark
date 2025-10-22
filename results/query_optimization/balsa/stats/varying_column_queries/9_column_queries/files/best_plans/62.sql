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
SELECT COUNT(*) FROM comments as c, posts as p, postHistory as ph, votes as v, users as u WHERE u.Id = c.UserId AND c.UserId = p.OwnerUserId AND p.OwnerUserId = ph.UserId AND ph.UserId = v.UserId AND p.PostTypeId=2 AND p.FavoriteCount>=0 AND p.FavoriteCount<=6 AND ph.CreationDate>='2010-08-25 08:33:14'::timestamp AND ph.CreationDate<='2014-08-29 15:06:47'::timestamp AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=235 AND u.CreationDate>='2010-08-22 14:07:01'::timestamp;

