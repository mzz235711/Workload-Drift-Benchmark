/*+ MergeJoin(b v u p)
 HashJoin(v u p)
 HashJoin(u p)
 IndexScan(b)
 SeqScan(v)
 SeqScan(u)
 SeqScan(p)
 Leading((b (v (u p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND v.CreationDate<='2014-09-13 00:00:00'::timestamp AND p.FavoriteCount>=0 AND u.Reputation<=315 AND u.DownVotes<=0;

