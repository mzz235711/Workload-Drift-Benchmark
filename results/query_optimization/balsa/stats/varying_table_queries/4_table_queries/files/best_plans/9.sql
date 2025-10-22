/*+ HashJoin(ph u p v)
 HashJoin(u p v)
 HashJoin(p v)
 SeqScan(ph)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((ph (u (p v)))) */
SELECT COUNT(*) FROM postHistory as ph, posts as p, votes as v, users as u WHERE p.Id = ph.PostId AND u.Id = p.OwnerUserId AND p.Id = v.PostId AND p.FavoriteCount>=0 AND p.FavoriteCount<=25 AND p.CreationDate<='2014-08-07 11:21:10'::timestamp AND v.BountyAmount>=0 AND u.Reputation>=1 AND u.Reputation<=268 AND u.DownVotes<=114 AND u.CreationDate>='2010-07-19 21:34:47'::timestamp AND u.CreationDate<='2014-09-01 02:51:49'::timestamp;

