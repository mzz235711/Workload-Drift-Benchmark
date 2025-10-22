/*+ HashJoin(v p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading((v (p u))) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.Score<=23 AND p.ViewCount>=0 AND p.FavoriteCount<=6 AND p.CreationDate<='2014-09-10 18:14:12'::timestamp AND u.Views=0 AND u.UpVotes>=0 AND u.UpVotes<=33;

