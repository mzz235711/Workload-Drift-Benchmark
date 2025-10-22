/*+ MergeJoin(v u p)
 HashJoin(u p)
 IndexScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((v (u p))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score>=-2 AND p.Score<=23 AND p.FavoriteCount>=0 AND p.FavoriteCount<=5 AND u.Reputation<=158 AND u.DownVotes<=114 AND u.UpVotes>=0 AND u.UpVotes<=16 AND u.CreationDate<='2014-08-28 19:39:00'::timestamp;

