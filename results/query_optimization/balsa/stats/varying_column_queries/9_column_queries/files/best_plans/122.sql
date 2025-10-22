/*+ HashJoin(u p v)
 HashJoin(p v)
 SeqScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((u (p v))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND v.BountyAmount>=0 AND p.Score>=-1 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-19 20:32:08'::timestamp AND p.CreationDate<='2014-09-08 15:26:17'::timestamp AND u.Reputation=6 AND u.DownVotes>=0 AND u.DownVotes<=0 AND u.UpVotes>=0;

