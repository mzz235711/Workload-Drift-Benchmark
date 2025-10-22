/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>-14 AND p.Score<121 AND p.CommentCount>5 AND p.CommentCount<19 AND u.DownVotes>87 AND u.DownVotes<123 AND v.CreationDate>'2010-07-13 03:21:58'::timestamp AND v.CreationDate<'2012-05-29 10:03:30'::timestamp AND v.VoteTypeId>6 AND v.VoteTypeId<12 AND b.Date>'2011-11-04 02:32:25'::timestamp AND b.Date<'2012-07-11 21:54:03'::timestamp;

