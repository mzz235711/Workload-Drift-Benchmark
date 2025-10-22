/*+ MergeJoin(v p u)
 MergeJoin(v p)
 IndexScan(v)
 SeqScan(p)
 IndexScan(u)
 Leading(((v p) u)) */
SELECT COUNT(*) FROM votes as v, posts as p, users as u WHERE v.UserId = p.OwnerUserId AND p.OwnerUserId = u.Id AND p.PostTypeId=1 AND p.ViewCount=10 AND p.FavoriteCount>=0 AND p.FavoriteCount<=16 AND p.CreationDate<='2014-09-04 13:58:33'::timestamp AND u.Reputation>=1 AND u.UpVotes<=224;

