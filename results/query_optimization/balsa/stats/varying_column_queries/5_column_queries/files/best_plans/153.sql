/*+ HashJoin(v u t p)
 MergeJoin(u t p)
 MergeJoin(t p)
 SeqScan(v)
 IndexScan(u)
 IndexScan(t)
 SeqScan(p)
 Leading((v (u (t p)))) */
SELECT COUNT(*) FROM tags as t, posts as p, votes as v, users as u WHERE p.Id = t.ExcerptPostId AND p.Id = v.PostId AND u.Id = p.OwnerUserId AND p.CommentCount<=19 AND p.CreationDate>='2010-07-19 20:30:23'::timestamp AND v.CreationDate<='2014-09-11 00:00:00'::timestamp AND u.UpVotes>=0 AND u.UpVotes<=9;

