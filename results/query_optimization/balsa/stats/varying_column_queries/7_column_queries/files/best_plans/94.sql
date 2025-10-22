/*+ MergeJoin(v b p u)
 HashJoin(b p u)
 NestLoop(p u)
 IndexScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE u.Id = v.UserId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.FavoriteCount>=0 AND p.FavoriteCount<=21 AND u.Reputation>=1 AND u.Reputation<=153 AND u.Views<=75 AND u.DownVotes>=0 AND u.DownVotes<=3;

