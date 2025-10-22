/*+ HashJoin(v b p u)
 HashJoin(b p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(b)
 SeqScan(p)
 IndexScan(u)
 Leading((v (b (p u)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score=0 AND p.ViewCount>=0 AND p.FavoriteCount<=4 AND u.Views>=0 AND u.Views<=9 AND u.DownVotes>=0 AND u.DownVotes<=214;

