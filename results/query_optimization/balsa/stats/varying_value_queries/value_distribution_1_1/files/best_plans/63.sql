/*+ MergeJoin(b u p v)
 MergeJoin(u p v)
 MergeJoin(p v)
 IndexScan(b)
 IndexScan(u)
 IndexScan(p)
 SeqScan(v)
 Leading((b (u (p v)))) */
SELECT COUNT(*) FROM votes as v, posts as p, badges as b, users as u WHERE p.Id = v.PostId AND u.Id = p.OwnerUserId AND u.Id = b.UserId AND p.Score>5 AND p.Score<43 AND p.CommentCount>3 AND p.CommentCount<19 AND u.DownVotes>195 AND u.DownVotes<1454 AND v.CreationDate>'2009-08-09 09:17:46'::timestamp AND v.CreationDate<'2012-03-08 13:42:48'::timestamp AND v.VoteTypeId>7 AND v.VoteTypeId<11 AND b.Date>'2012-10-22 19:58:23'::timestamp AND b.Date<'2014-03-01 00:24:16'::timestamp;

