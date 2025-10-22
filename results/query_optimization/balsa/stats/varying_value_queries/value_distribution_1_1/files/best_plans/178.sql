/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>36 AND p.Score<179 AND p.CommentCount>5 AND p.CommentCount<34 AND u.DownVotes>95 AND u.DownVotes<881 AND v.CreationDate>'2010-11-18 03:49:49'::timestamp AND v.CreationDate<'2011-08-21 21:43:06'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<10 AND b.Date>'2011-03-06 09:13:03'::timestamp AND b.Date<'2014-04-01 01:31:48'::timestamp;

