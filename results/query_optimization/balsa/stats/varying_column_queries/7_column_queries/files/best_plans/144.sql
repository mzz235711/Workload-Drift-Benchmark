/*+ HashJoin(v c p u)
 HashJoin(c p u)
 MergeJoin(p u)
 SeqScan(v)
 SeqScan(c)
 SeqScan(p)
 IndexScan(u)
 Leading((v (c (p u)))) */
SELECT COUNT(*) FROM comments as c, posts as p, votes as v, users as u WHERE p.Id = c.PostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND c.CreationDate>='2010-07-31 11:01:22'::timestamp AND p.ViewCount>=0 AND p.FavoriteCount>=0 AND u.Views>=0 AND u.Views<=293 AND u.UpVotes>=0 AND u.CreationDate<='2014-09-06 07:42:29'::timestamp;

