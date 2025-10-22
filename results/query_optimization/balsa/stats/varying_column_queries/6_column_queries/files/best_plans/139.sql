/*+ MergeJoin(b u t p v)
 HashJoin(u t p v)
 HashJoin(u t p)
 MergeJoin(t p)
 IndexScan(b)
 SeqScan(u)
 SeqScan(t)
 IndexScan(p)
 SeqScan(v)
 Leading((b ((u (t p)) v))) */
SELECT COUNT(*) FROM tags as t, posts as p, users as u, votes as v, badges as b WHERE p.Id = t.ExcerptPostId AND u.Id = v.UserId AND u.Id = b.UserId AND u.Id = p.OwnerUserId AND t.Count>=3 AND p.FavoriteCount>=0 AND p.CreationDate>='2010-07-24 04:54:53'::timestamp AND p.CreationDate<='2014-08-28 17:48:09'::timestamp AND u.Views>=0 AND u.DownVotes=0;

