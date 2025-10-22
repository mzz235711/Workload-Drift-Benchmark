/*+ MergeJoin(b v u p t)
 HashJoin(v u p t)
 MergeJoin(u p t)
 HashJoin(p t)
 IndexScan(b)
 SeqScan(v)
 IndexScan(u)
 SeqScan(p)
 SeqScan(t)
 Leading((b (v (u (p t))))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, votes as v, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND p.FavoriteCount>=0 AND p.FavoriteCount<=4 AND p.CreationDate>='2010-07-19 20:23:57'::timestamp AND p.CreationDate<='2014-09-01 13:50:38'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=224 AND v.BountyAmount>=0 AND b.Date>='2010-07-27 17:58:45'::timestamp;

