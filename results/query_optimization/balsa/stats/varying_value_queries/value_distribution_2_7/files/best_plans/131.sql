/*+ MergeJoin(b u p v)
 HashJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 SeqScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-8 AND p.Score<100 AND p.CommentCount>6 AND p.CommentCount<31 AND u.DownVotes>423 AND u.DownVotes<839 AND v.CreationDate>'2010-02-07 14:21:43'::timestamp AND v.CreationDate<'2011-06-15 02:28:41'::timestamp AND v.VoteTypeId>5 AND v.VoteTypeId<11 AND b.Date>'2011-09-29 19:18:14'::timestamp AND b.Date<'2013-01-04 12:48:59'::timestamp;

