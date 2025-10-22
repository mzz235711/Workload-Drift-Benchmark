/*+ MergeJoin(b u v p)
 MergeJoin(u v p)
 MergeJoin(v p)
 IndexScan(b)
 IndexScan(u)
 SeqScan(v)
 IndexScan(p)
 Leading((b (u (v p)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>34 AND p.Score<182 AND p.CommentCount>7 AND p.CommentCount<42 AND u.DownVotes>135 AND u.DownVotes<1278 AND v.CreationDate>'2009-03-29 08:31:49'::timestamp AND v.CreationDate<'2013-06-28 04:33:29'::timestamp AND v.VoteTypeId>1 AND v.VoteTypeId<15 AND b.Date>'2011-02-26 05:37:44'::timestamp AND b.Date<'2011-08-03 20:24:59'::timestamp;

